/*=========================================================================
*
*  Copyright Insight Software Consortium
*
*  Licensed under the Apache License, Version 2.0 (the "License");
*  you may not use this file except in compliance with the License.
*  You may obtain a copy of the License at
*
*         http://www.apache.org/licenses/LICENSE-2.0.txt
*
*  Unless required by applicable law or agreed to in writing, software
*  distributed under the License is distributed on an "AS IS" BASIS,
*  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
*  See the License for the specific language governing permissions and
*  limitations under the License.
*
*=========================================================================*/
#include <SimpleITKTestHarness.h>

#include <sitkImageFileReader.h>
#include <sitkImageFileWriter.h>
#include <sitkHashImageFilter.h>

#include "sitkAddImageFilter.h"
#include "sitkSubtractImageFilter.h"
#include "sitkMultiplyImageFilter.h"

#include "sitkImageOperators.h"

#include "sitkComplexToRealImageFilter.h"
#include "sitkComplexToImaginaryImageFilter.h"
#include "sitkRealAndImaginaryToComplexImageFilter.h"
#include "sitkImportImageFilter.h"

#include <itkIntTypes.h>

#include "itkImage.h"
#include "itkVectorImage.h"

#include <stdint.h>

namespace
{
template < class T >
std::ostream& operator<< (std::ostream& os, const std::vector<T>& v)
{
  os << "[";
  std::copy( v.begin(), v.end(), std::ostream_iterator<T>(os, ", " ) );
  return os << "]";
}

}


const double adir[] = {0.0, 0.0, 1.0,
                       -1.0, 0.0, 0.0,
                       0.0, -1.0, 0.0};

using  itk::simple::InstantiatedPixelIDTypeList;


class Image : public ::testing::Test {
public:
  typedef std::auto_ptr<itk::simple::Image> sitkAutoImagePointer;

  virtual void SetUp() {
    itk::ImageBase<3>::IndexType index;
    itk::ImageBase<3>::SizeType size;
    itk::ImageBase<3>::RegionType region;
    itk::ImageBase<3>::PointType origin;
    itk::ImageBase<3>::SpacingType spacing;
    // Create an image
    for ( int i = 0; i < 3; i++ ) {
      index[i] = 0;
      size[i] = 64+i;
    }
    origin[0] = 1.1;
    origin[1] = 2.2;
    origin[2] = 3.3;
    spacing[0] = 0.5;
    spacing[1] = 0.5;
    spacing[2] = 1.5;

    region.SetSize ( size );
    region.SetIndex ( index );
    itk::Image<short,3>::Pointer im = itk::Image<short,3>::New();
    im->SetRegions ( region );
    im->SetOrigin( origin );
    im->SetSpacing( spacing );
    im->Allocate();
    im->FillBuffer ( 100 );
    itkShortImage = im;
    shortImage = sitkAutoImagePointer( new itk::simple::Image( im.GetPointer() ) );

    itk::Image<float,3>::Pointer fim = itk::Image<float,3>::New();
    fim->SetRegions ( region );
    fim->SetOrigin( origin );
    fim->SetSpacing( spacing );
    fim->Allocate();
    fim->FillBuffer ( 0 );
    itkFloatImage = fim;
    floatImage = sitkAutoImagePointer( new itk::simple::Image( fim.GetPointer() ) );

    itkFloatVectorImage = FloatVectorImageType::New();
    floatVectorImage = sitkAutoImagePointer( new itk::simple::Image( itkFloatVectorImage.GetPointer() ) );

    itkFloatVector2DImage = FloatVector2DImageType::New();
    floatVector2DImage = sitkAutoImagePointer( new itk::simple::Image( itkFloatVector2DImage ) );

    directionI2D = std::vector<double>(4, 0.0 );
    directionI3D = std::vector<double>(9, 0.0 );

    directionI2D[0] = directionI2D[3] = 1.0;

    directionI3D[0] = directionI3D[4] = directionI3D[8] = 1.0;
  }

  itk::ImageBase<3>::Pointer itkShortImage;

  typedef itk::Image<short,3> ShortImageType;
  sitkAutoImagePointer shortImage;

  typedef itk::Image<float,3> FloatImageType;
  sitkAutoImagePointer floatImage;
  FloatImageType::Pointer itkFloatImage;

  typedef itk::VectorImage<float,3> FloatVectorImageType;
  sitkAutoImagePointer floatVectorImage;
  FloatVectorImageType::Pointer itkFloatVectorImage;

  typedef itk::VectorImage<float,2> FloatVector2DImageType;
  sitkAutoImagePointer floatVector2DImage;
  FloatVector2DImageType::Pointer itkFloatVector2DImage;

  sitkAutoImagePointer differentSizedImage;
  ShortImageType::Pointer itkDifferentSizedImage;


  std::vector<double> directionI2D;
  std::vector<double> directionI3D;

};


TEST_F(Image,Create) {
  ASSERT_TRUE ( shortImage->GetITKBase() != NULL );
  EXPECT_EQ ( shortImage->GetWidth(), itkShortImage->GetLargestPossibleRegion().GetSize()[0] ) << " Checking image width";
  EXPECT_EQ ( shortImage->GetHeight(), itkShortImage->GetLargestPossibleRegion().GetSize()[1] ) << " Checking image height";
  EXPECT_EQ ( shortImage->GetDepth(), itkShortImage->GetLargestPossibleRegion().GetSize()[2] ) << " Checking image depth";

  EXPECT_EQ ( shortImage->GetSize()[0], shortImage->GetWidth() );
  EXPECT_EQ ( shortImage->GetSize()[1], shortImage->GetHeight() );
  EXPECT_EQ ( shortImage->GetSize()[2], shortImage->GetDepth() );

  std::vector< unsigned int > size = shortImage->GetSize();

  EXPECT_EQ ( size[0], shortImage->GetWidth() );
  EXPECT_EQ ( size[1], shortImage->GetHeight() );
  EXPECT_EQ ( size[2], shortImage->GetDepth() );

}

TEST_F(Image,ImageDataType) {

  // this test checks that the DataType of the images are correct
  int result;


  result = typelist::IndexOf< InstantiatedPixelIDTypeList, itk::simple::BasicPixelID<short> >::Result;
  EXPECT_EQ( shortImage->GetPixelIDValue(), result);

  result = typelist::IndexOf< InstantiatedPixelIDTypeList, itk::simple::BasicPixelID<float> >::Result;
  EXPECT_EQ( floatImage->GetPixelIDValue(), result );

  result = typelist::IndexOf< InstantiatedPixelIDTypeList, itk::simple::VectorPixelID<float> >::Result;
  EXPECT_EQ( floatVectorImage->GetPixelIDValue(), result );

  result = typelist::IndexOf< InstantiatedPixelIDTypeList, itk::simple::VectorPixelID<float> >::Result;
  EXPECT_EQ( floatVector2DImage->GetPixelIDValue(), result );


  result = itk::simple::PixelIDToPixelIDValue< itk::simple::BasicPixelID<short> >::Result;
  EXPECT_EQ( shortImage->GetPixelIDValue(), result);

  result = itk::simple::PixelIDToPixelIDValue< itk::simple::BasicPixelID<float> >::Result;
  EXPECT_EQ( floatImage->GetPixelIDValue(), result );

  result = itk::simple::PixelIDToPixelIDValue< itk::simple::VectorPixelID<float> >::Result;
  EXPECT_EQ( floatVectorImage->GetPixelIDValue(), result );

  result = itk::simple::PixelIDToPixelIDValue< itk::simple::VectorPixelID<float> >::Result;
  EXPECT_EQ( floatVector2DImage->GetPixelIDValue(), result );



  result = typelist::IndexOf< InstantiatedPixelIDTypeList,  itk::simple::ImageTypeToPixelID<ShortImageType>::PixelIDType >::Result;
  EXPECT_EQ( shortImage->GetPixelIDValue(), result );

  result = typelist::IndexOf< InstantiatedPixelIDTypeList,  itk::simple::ImageTypeToPixelID<FloatVectorImageType>::PixelIDType >::Result;
  EXPECT_EQ( floatVectorImage->GetPixelIDValue(), result );


  result = itk::simple::ImageTypeToPixelIDValue<ShortImageType>::Result;
  EXPECT_EQ( shortImage->GetPixelIDValue(), result );

  result = itk::simple::ImageTypeToPixelIDValue<FloatVectorImageType>::Result;
  EXPECT_EQ( floatVectorImage->GetPixelIDValue(), result );


}

TEST_F(Image,Constructors) {
  itk::simple::HashImageFilter hasher;
  int result;

  {
  itk::simple::Image image;
  EXPECT_EQ ( 0u, image.GetWidth() );
  EXPECT_EQ ( 0u, image.GetHeight() );
  EXPECT_EQ ( 0u, image.GetDepth() );
  }

  itk::simple::Image image ( 64, 65, 66, itk::simple::sitkUInt8 );
  EXPECT_EQ ( "08183e1b0c50fd2cf6f070b58e218443fb7d5317", hasher.SetHashFunction ( itk::simple::HashImageFilter::SHA1 ).Execute ( image ) ) << " SHA1 hash value sitkUInt8";
  result = typelist::IndexOf< InstantiatedPixelIDTypeList, itk::simple::BasicPixelID<unsigned char> >::Result;
  EXPECT_EQ ( image.GetPixelIDValue(), result );
  EXPECT_EQ ( image.GetPixelIDTypeAsString(), "8-bit unsigned integer" );
  EXPECT_EQ ( image.GetDimension(), 3u );
  EXPECT_EQ ( 64u, image.GetWidth() );
  EXPECT_EQ ( 65u, image.GetHeight() );
  EXPECT_EQ ( 66u, image.GetDepth() );
  EXPECT_EQ( image.GetDirection(), directionI3D );

  image = itk::simple::Image ( 64, 65, 66, itk::simple::sitkInt16 );
  EXPECT_EQ ( "645b71695b94923c868e16b943d8acf8f6788617", hasher.SetHashFunction ( itk::simple::HashImageFilter::SHA1 ).Execute ( image ) ) << " SHA1 hash value sitkUInt16";
  result = typelist::IndexOf< InstantiatedPixelIDTypeList, itk::simple::BasicPixelID<short> >::Result;
  EXPECT_EQ ( image.GetPixelIDValue(), result );
  EXPECT_EQ ( image.GetPixelIDTypeAsString(), "16-bit signed integer" );
  EXPECT_EQ ( image.GetDimension(), 3u );
  EXPECT_EQ ( 64u, image.GetWidth() );
  EXPECT_EQ ( 65u, image.GetHeight() );
  EXPECT_EQ ( 66u, image.GetDepth() );
  EXPECT_EQ( image.GetDirection(), directionI3D );

  image = itk::simple::Image ( 64, 65, itk::simple::sitkUInt16 );
  EXPECT_EQ ( "e3c464cc1b73df3f48bacf238a80f88b5ab0d3e6", hasher.SetHashFunction ( itk::simple::HashImageFilter::SHA1 ).Execute ( image ) ) << " SHA1 hash value sitkUInt16";
  result = typelist::IndexOf< InstantiatedPixelIDTypeList, itk::simple::BasicPixelID<unsigned short> >::Result;
  EXPECT_EQ ( image.GetPixelIDValue(), result );
  EXPECT_EQ ( image.GetPixelIDTypeAsString(), "16-bit unsigned integer" );
  EXPECT_EQ ( image.GetDimension(), 2u );
  EXPECT_EQ ( 64u, image.GetWidth() );
  EXPECT_EQ ( 65u, image.GetHeight() );
  EXPECT_EQ ( 0u, image.GetDepth() );
  EXPECT_EQ ( 1u, image.GetNumberOfComponentsPerPixel() );
  EXPECT_EQ( image.GetDirection(), directionI2D );

  // Test the constructors for vector images
  std::vector<unsigned int> s2d(2, 10);
  std::vector<unsigned int> s3d(3, 5);

  image = itk::simple::Image( s2d, itk::simple::sitkVectorUInt8 );

  EXPECT_EQ ( image.GetDimension(), 2u );
  EXPECT_EQ ( 2u, image.GetNumberOfComponentsPerPixel() );
  image = itk::simple::Image( s3d, itk::simple::sitkVectorFloat32 );
  EXPECT_EQ ( image.GetDimension(), 3u );
  EXPECT_EQ ( 3u, image.GetNumberOfComponentsPerPixel() );

  image = itk::simple::Image( s2d, itk::simple::sitkVectorInt16, 5 );
  EXPECT_EQ ( image.GetDimension(), 2u );
  EXPECT_EQ ( 5u, image.GetNumberOfComponentsPerPixel() );
  image = itk::simple::Image( s3d, itk::simple::sitkVectorFloat64, 10 );
  EXPECT_EQ ( image.GetDimension(), 3u );
  EXPECT_EQ ( 10u, image.GetNumberOfComponentsPerPixel() );


  // check for error when incorrect number of dimensions are requested
  std::vector<unsigned int> s1d(1, 100);
  std::vector<unsigned int> s4d(4, 100);
  ASSERT_ANY_THROW( itk::simple::Image( s1d, itk::simple::sitkVectorFloat64 ) );
  ASSERT_ANY_THROW( itk::simple::Image( s4d, itk::simple::sitkVectorFloat64 ) );

  // check for error with bad pixelID
  ASSERT_ANY_THROW( itk::simple::Image( s2d, itk::simple::sitkUnknown ) );
  ASSERT_ANY_THROW( itk::simple::Image( s2d, itk::simple::PixelIDValueEnum(-100) ) );

  // check for error when non-vector type requests components ( should
  // this be an error or should we just be converted to a vector )
  ASSERT_ANY_THROW( itk::simple::Image( s2d, itk::simple::sitkInt16, 10 ) );
  ASSERT_ANY_THROW( itk::simple::Image( s2d, itk::simple::sitkLabelUInt8, 10 ) );

  // currently we don't have a good interface to check the values of
  // these images, let just construct these types need todo better
  // testing!

  image = itk::simple::Image ( 64, 65, 66, itk::simple::sitkLabelUInt8 );
  EXPECT_EQ ( 64u, image.GetWidth() );
  EXPECT_EQ ( 65u, image.GetHeight() );
  EXPECT_EQ ( 66u, image.GetDepth() );
  EXPECT_EQ ( 1u, image.GetNumberOfComponentsPerPixel() );
  EXPECT_EQ( image.GetDirection(), directionI3D );

  image = itk::simple::Image ( 64, 65, 66, itk::simple::sitkLabelUInt16 );

  image = itk::simple::Image ( 64, 65, 66, itk::simple::sitkLabelUInt32 );

  image = itk::simple::Image ( 64, 65, 66, itk::simple::sitkVectorUInt8 );

  EXPECT_EQ ( 64u, image.GetWidth() );
  EXPECT_EQ ( 65u, image.GetHeight() );
  EXPECT_EQ ( 66u, image.GetDepth() );
  EXPECT_EQ ( 3u, image.GetNumberOfComponentsPerPixel() );

  image = itk::simple::Image ( 64, 65, 66, itk::simple::sitkVectorUInt16 );
  EXPECT_EQ ( 3u, image.GetNumberOfComponentsPerPixel() );
}

TEST_F(Image,Hash) {
  itk::simple::HashImageFilter hasher;
  EXPECT_EQ ( "a998ea8b4999b4db9cbad033a52fe6d654211ff9", hasher.SetHashFunction ( itk::simple::HashImageFilter::SHA1 ).Execute ( *shortImage ) ) << " SHA1 hash value";
  EXPECT_EQ ( "8cdd56962c5b3aabbfac56cd4dce1c7e", hasher.SetHashFunction ( itk::simple::HashImageFilter::MD5 ).Execute ( *shortImage ) ) << " MD5 hash value";

  EXPECT_EQ ( "3b6bfcb1922bf8b29b171062ad722c82f8aa3f50", hasher.SetHashFunction ( itk::simple::HashImageFilter::SHA1 ).Execute ( *floatImage ) ) << " SHA1 hash value";
  EXPECT_EQ ( "e5eba8af943d7911220c9f2fb9b5b9c8", hasher.SetHashFunction ( itk::simple::HashImageFilter::MD5 ).Execute ( *floatImage ) ) << " MD5 hash value";
}

TEST_F(Image,Transforms) {

  // Origin is [1.1, 2.2, 3.3]
  // Spacing is [0.5, 0.5, 1.5]

  // Index to Physical Point
  std::vector<int64_t> idx;
  idx.push_back(1);
  idx.push_back(1);
  idx.push_back(1);
  std::vector<double> pt = shortImage->TransformIndexToPhysicalPoint(idx);
  EXPECT_EQ(pt[0], 1.6) << " Pt to Idx [0]";
  EXPECT_EQ(pt[1], 2.7) << " Pt to Idx [1]";
  EXPECT_EQ(pt[2], 4.8) << " Pt to Idx [2]";

  // Physical Point to Index
  idx = shortImage->TransformPhysicalPointToIndex(pt);
  EXPECT_EQ(idx[0], 1u) << " Idx to Pt [0]";
  EXPECT_EQ(idx[1], 1u) << " Idx to Pt [1]";
  EXPECT_EQ(idx[2], 1u) << " Idx to Pt [2]";
}

TEST_F(Image,Properties) {

  // GetOrigin
  std::vector<double> origin = shortImage->GetOrigin();
  EXPECT_EQ(origin[0], 1.1) << " GetOrigin[0]";
  EXPECT_EQ(origin[1], 2.2) << " GetOrigin[1]";
  EXPECT_EQ(origin[2], 3.3) << " GetOrigin[2]";

  // SetOrigin
  std::vector<double> newOrigin;
  newOrigin.push_back(0.1);
  newOrigin.push_back(0.2);
  newOrigin.push_back(0.3);
  shortImage->SetOrigin( newOrigin );
  EXPECT_EQ(shortImage->GetOrigin()[0], 0.1) << " SetOrigin[0]";
  EXPECT_EQ(shortImage->GetOrigin()[1], 0.2) << " SetOrigin[1]";
  EXPECT_EQ(shortImage->GetOrigin()[2], 0.3) << " SetOrigin[2]";
  shortImage->SetOrigin( origin );

  // GetSpacing
  std::vector<double> spacing = shortImage->GetSpacing();
  EXPECT_EQ(spacing[0], 0.5) << " GetSpacing[0]";
  EXPECT_EQ(spacing[1], 0.5) << " GetSpacing[1]";
  EXPECT_EQ(spacing[2], 1.5) << " GetSpacing[2]";

  // SetSpacing
  std::vector<double> newSpacing;
  newSpacing.push_back(1.9);
  newSpacing.push_back(2.8);
  newSpacing.push_back(3.7);
  shortImage->SetSpacing( newSpacing );
  EXPECT_EQ(shortImage->GetSpacing()[0], 1.9) << " SetSpacing[0]";
  EXPECT_EQ(shortImage->GetSpacing()[1], 2.8) << " SetSpacing[1]";
  EXPECT_EQ(shortImage->GetSpacing()[2], 3.7) << " SetSpacing[2]";
  shortImage->SetOrigin( spacing );

  // Check Error conditions for setting Spacing and Origin
  newSpacing.clear();
  newSpacing.push_back( 99 );
  newSpacing.push_back( 99 );
  ASSERT_ANY_THROW( shortImage->SetSpacing( newSpacing ) ) << " setting with too short spacing";

  newOrigin.clear();
  newOrigin.push_back( -99.99 );
  ASSERT_ANY_THROW( shortImage->SetOrigin( newOrigin ) ) << "setting with too short origin";

  // GetDirection
  EXPECT_EQ ( shortImage->GetDirection(), directionI3D ) << " Checking Get Direction matrix for identity";


  // SetDirection
  std::vector<double> vdir( adir, adir+9);
  shortImage->SetDirection( vdir );
  for( unsigned int i = 0 ; i < 9; ++i )
    {
    EXPECT_EQ ( shortImage->GetDirection()[i], vdir[i] ) << " Checking Direction matrix at index " << i;
    }

  // Check Error Conditions for setting Directions
  ASSERT_ANY_THROW( shortImage->SetDirection( std::vector<double>( adir, adir + 4 ) ) );
  ASSERT_ANY_THROW( shortImage->SetDirection( std::vector<double>( adir, adir + 8 ) ) );
}

namespace sitk = itk::simple;


TEST_F(Image, CopyInformation)
{

  sitk::Image img1( 10, 20, sitk::sitkFloat32 );
  sitk::Image img3d( 10, 10, 10, sitk::sitkUInt32 );


  // number if dimension are different
  EXPECT_ANY_THROW( img1.CopyInformation( img3d ) );

  sitk::Image img2( 10, 10, sitk::sitkUInt16 );

  // image sizes don't match
  EXPECT_ANY_THROW( img1.CopyInformation( img2 ) );

  // fix the size to match

  img2 = sitk::Image( img1.GetSize(), sitk::sitkFloat64);
  img2.SetOrigin( shortImage->GetOrigin() );
  img2.SetSpacing( shortImage->GetSpacing() );

  EXPECT_NO_THROW( img1.CopyInformation( img2 ) );
  EXPECT_EQ( img1.GetSpacing(), img2.GetSpacing() );
  EXPECT_EQ( img1.GetOrigin(), img2.GetOrigin() );
  EXPECT_EQ( img1.GetDirection(), img2.GetDirection() );

}

TEST_F(Image, CopyOnWrite)
{
  // test that a just constructed image only have 1 referecne
  sitk::Image img( 10, 10, sitk::sitkInt16 );
  EXPECT_EQ(static_cast<const sitk::Image *>(&img)->GetITKBase()->GetReferenceCount(), 1 )
    << " Reference Count for just constructed Image";

  // use the image from the fixture to test some copy constructor
  EXPECT_EQ(static_cast<const sitk::Image *>(shortImage.get())->GetITKBase()->GetReferenceCount(), 2 )
    << " Reference Count for shared shortImage initial";
  sitk::Image img0 = *shortImage;
  EXPECT_EQ(static_cast<const sitk::Image *>(shortImage.get())->GetITKBase()->GetReferenceCount(), 3 )
    << " Reference Count for shared shortImage copy";
  sitk::Image imgCopy = img0;
  EXPECT_EQ(static_cast<const sitk::Image *>(shortImage.get())->GetITKBase()->GetReferenceCount(), 4 )
    << " Reference Count for shared shortImage second copy";

  // check set origin for copy on write
  imgCopy.SetOrigin( std::vector<double>( 3, 2.123 ) );
  EXPECT_EQ(static_cast<const sitk::Image *>(&imgCopy)->GetITKBase()->GetReferenceCount(), 1 )
    << " Reference Count for copy after set origin";
  EXPECT_EQ(static_cast<const sitk::Image *>(&img0)->GetITKBase()->GetReferenceCount(), 3 )
    << " Reference Count for shared after set origin";

  // check shallow copy on assignment
  imgCopy = img0;
  EXPECT_EQ(static_cast<const sitk::Image *>(&imgCopy)->GetITKBase()->GetReferenceCount(), 4 )
    << " Reference Count for copy after assigment";
  EXPECT_EQ(static_cast<const sitk::Image *>(&img0)->GetITKBase()->GetReferenceCount(), 4 )
    << " Reference Count for shared after assignment";

  // check copy on write with set spacing
  imgCopy.SetSpacing( std::vector<double>( 3, 3.45 ) );
  EXPECT_EQ(static_cast<const sitk::Image *>(&imgCopy)->GetITKBase()->GetReferenceCount(), 1 )
    << " Reference Count for copy after set spacing";
  EXPECT_EQ(static_cast<const sitk::Image *>(&img0)->GetITKBase()->GetReferenceCount(), 3 )
    << " Reference Count for shared after set spacing";
  EXPECT_EQ( sitk::Hash( imgCopy ), sitk::Hash( img0 ) ) << "Hash for shared and copy after set spacing";
}

TEST_F(Image,Operators)
{

  // the float image should begin as all zeros
  sitk::Image imgA = *floatImage;
  sitk::Image imgB = *floatImage;
  sitk::Image imgC = *floatImage;

  itk::Index<3> idx;
  idx.Fill( 0 );

  std::cout << "Testing Arithmetic operators" << std::endl;
  imgA += 1; // all 1s
  imgB = imgA;

  // 2 = 1 + 1
  imgC = imgA + imgB;

  // 1 = 2 - 1
  imgA = imgC - imgA;

  float v =  dynamic_cast<itk::Image<float,3>*>( imgA.GetITKBase() )->GetPixel( idx);
  EXPECT_EQ( v, 1 ) << "value check 1";

  // 4 = 2 * 2
  imgB = imgC * imgC;

  // 2 = 4 / 2
  imgA = imgB / imgC;

  // .4 = 4 * .1
  imgC = imgB * .1;

  // 20 = .4 * 50;
  imgA = imgC * 50;

  v =  dynamic_cast<itk::Image<float,3>*>( imgA.GetITKBase() )->GetPixel( idx);
  EXPECT_EQ( v, 20 ) << "value check 2";

  // original value should have never changed
  v =  dynamic_cast<itk::Image<float,3>*>( floatImage->GetITKBase() )->GetPixel( idx);
  EXPECT_EQ( v, 0 ) << "value check 3";

  // 0 = 20 + -20
  imgC = imgA + -20;

  // 10 = 6 + 4
  imgB = 6 + imgB;

  // 2 = 10 - 8
  imgA = imgB - 8;

  // .5 = 2 / 4
  imgC = imgA / 4;

  std::cout << "Testing Logical Operators" << std::endl;
  imgA = ~*shortImage;
  imgB = ~imgA;

  v =  dynamic_cast<itk::Image<short,3>*>( imgA.GetITKBase() )->GetPixel( idx);
  EXPECT_EQ( v, 0 );

  // 0 = 0 & 1
  imgC = imgA & imgB;

  // 1 = 1 | 0
  imgA = imgB | imgC;

  // 1 = 1 ^ 0
  imgB = imgA ^ imgC;

  // 0 = 1 ^ 1
  imgA = imgB ^ imgA;

  v =  dynamic_cast<itk::Image<short,3>*>( imgA.GetITKBase() )->GetPixel( idx);
  EXPECT_EQ( v, 0 ) << "value check 4";
  v =  dynamic_cast<itk::Image<short,3>*>( imgB.GetITKBase() )->GetPixel( idx);
  EXPECT_EQ( v, 1 ) << "value check 5";

  std::cout << "Testing Compoung assignment operators" << std::endl;
  imgA = *floatImage;

  // 1.5 = 0 + 1.5
  imgA += 1.5;

  // 3.0 = 1.5 + 1.5
  imgA += imgA;

  // 0 = 1.5 - 1.5
  imgA -= imgA;

  // -8 = 0 - 8
  imgA -= 8;

  // 4 = 8 * .5
  imgA *= .5;

  // 16 = 4 * 4
  imgA *= imgA;

  // 8 = 16 / 2
  imgA /= 2;

  v =  dynamic_cast<itk::Image<float,3>*>( imgA.GetITKBase() )->GetPixel( idx);
  EXPECT_EQ( v, 8 ) << "value check 6";

  // 1 = 8 / 8
  imgA /= imgA;

  imgA = ~~*shortImage;

  // 1 = 1  & 1
  imgA &= imgA;

  v =  dynamic_cast<itk::Image<short,3>*>( imgA.GetITKBase() )->GetPixel( idx);
  EXPECT_EQ( v, 1 ) << "value check 7";

  // 1 = 1 | 0
  imgA |= *shortImage;

  // 1 = 1 ^ 0
  imgA ^= *shortImage;


  v =  dynamic_cast<itk::Image<short,3>*>( imgA.GetITKBase() )->GetPixel( idx);
  EXPECT_EQ( v, 1 ) << "value check 8";
}

TEST_F(Image,SetPixel)
{

  // this test is designed to run all SetPixel methods

  sitk::Image img = sitk::Image( 10, 10, sitk::sitkFloat64 );

   // Check that out of bounds throw
  uint32_t xOOB[] = {10,0,0};
  uint32_t yOOB[] = {0,10,0};
  uint32_t zOOB[] = {0,0,10};
  ASSERT_THROW( img.SetPixelAsDouble(  std::vector<uint32_t>( xOOB, xOOB+3 ), 0.0 ), itk::simple::GenericException ) << "x out of bounds";
  ASSERT_THROW( img.SetPixelAsDouble(  std::vector<uint32_t>( yOOB, yOOB+3 ), 0.0 ), itk::simple::GenericException ) << "y out of bounds";
  ASSERT_NO_THROW( img.SetPixelAsDouble(  std::vector<uint32_t>( zOOB, zOOB+3 ), 0.0 ) ) << "z out of bounds, expect truncation of z-dim";

}


TEST_F(Image,GetPixel)
{

  // this test is designed to run all GetPixel methods

  sitk::Image img = sitk::Image( 10, 10, sitk::sitkInt8 );
  EXPECT_EQ( img.GetPixelAsInt8( std::vector<uint32_t>( 2, 0 ) ), 0 ) << " Get 2D with 2D ";
  EXPECT_EQ( img.GetPixelAsInt8( std::vector<uint32_t>( 3, 0 ) ), 0 ) << " Get 2D with 3D ";
  ASSERT_ANY_THROW( img.GetPixelAsInt8( std::vector<uint32_t>( 1, 0 ) ) ) << " Get with idx too small";
  ASSERT_ANY_THROW( img.GetPixelAsUInt8( std::vector<uint32_t>( 2, 0 ) ) ) << " Get with wrong type";
  ASSERT_ANY_THROW( img.GetPixelAsInt16( std::vector<uint32_t>( 2, 0 ) ) ) << " Get with wrong type";
  ASSERT_ANY_THROW( img.GetPixelAsUInt16( std::vector<uint32_t>( 2, 0 ) ) ) << " Get with wrong type";
  ASSERT_ANY_THROW( img.GetPixelAsInt32( std::vector<uint32_t>( 2, 0 ) ) ) << " Get with wrong type";
  ASSERT_ANY_THROW( img.GetPixelAsUInt32( std::vector<uint32_t>( 2, 0 ) ) ) << " Get with wrong type";
  ASSERT_ANY_THROW( img.GetPixelAsFloat( std::vector<uint32_t>( 2, 0 ) ) ) << " Get with wrong type";
  ASSERT_ANY_THROW( img.GetPixelAsDouble( std::vector<uint32_t>( 2, 0 ) ) ) << " Get with wrong type";

  img = sitk::Image( 10, 10, sitk::sitkUInt8 );
  EXPECT_EQ( img.GetPixelAsUInt8( std::vector<uint32_t>( 2, 0 ) ), 0 ) << " Get 2D with 2D ";
  EXPECT_EQ( img.GetPixelAsUInt8( std::vector<uint32_t>( 3, 0 ) ), 0 ) << " Get 2D with 3D ";
  ASSERT_ANY_THROW( img.GetPixelAsUInt8( std::vector<uint32_t>( 1, 0 ) ) ) << " Get with idx too small";
  ASSERT_ANY_THROW( img.GetPixelAsInt16( std::vector<uint32_t>( 2, 0 ) ) ) << " Get with wrong type";
  ASSERT_ANY_THROW( img.GetPixelAsUInt16( std::vector<uint32_t>( 2, 0 ) ) ) << " Get with wrong type";
  ASSERT_ANY_THROW( img.GetPixelAsInt32( std::vector<uint32_t>( 2, 0 ) ) ) << " Get with wrong type";
  ASSERT_ANY_THROW( img.GetPixelAsUInt32( std::vector<uint32_t>( 2, 0 ) ) ) << " Get with wrong type";
  ASSERT_ANY_THROW( img.GetPixelAsFloat( std::vector<uint32_t>( 2, 0 ) ) ) << " Get with wrong type";
  ASSERT_ANY_THROW( img.GetPixelAsDouble( std::vector<uint32_t>( 2, 0 ) ) ) << " Get with wrong type";

  img = sitk::Image( 10, 10, 10, sitk::sitkUInt8 );
  EXPECT_EQ( img.GetPixelAsUInt8( std::vector<uint32_t>( 3, 0 ) ), 0 ) << " Get 3D with 3D ";
  EXPECT_EQ( img.GetPixelAsUInt8( std::vector<uint32_t>( 4, 0 ) ), 0 ) << " Get 3D with 4D ";
  ASSERT_ANY_THROW( img.GetPixelAsUInt8( std::vector<uint32_t>( 2, 0 ) ) ) << " Get with idx too small";
  ASSERT_ANY_THROW( img.GetPixelAsInt16( std::vector<uint32_t>( 3, 0 ) ) ) << " Get with wrong type";
  ASSERT_ANY_THROW( img.GetPixelAsUInt16( std::vector<uint32_t>( 3, 0 ) ) ) << " Get with wrong type";
  ASSERT_ANY_THROW( img.GetPixelAsInt32( std::vector<uint32_t>( 3, 0 ) ) ) << " Get with wrong type";
  ASSERT_ANY_THROW( img.GetPixelAsUInt32( std::vector<uint32_t>( 3, 0 ) ) ) << " Get with wrong type";
  ASSERT_ANY_THROW( img.GetPixelAsFloat( std::vector<uint32_t>( 3, 0 ) ) ) << " Get with wrong type";
  ASSERT_ANY_THROW( img.GetPixelAsDouble( std::vector<uint32_t>( 3, 0 ) ) ) << " Get with wrong type";


  img = sitk::Image( 10, 10, sitk::sitkInt16 );
  EXPECT_EQ( img.GetPixelAsInt16( std::vector<uint32_t>( 2, 0 ) ), 0 ) << " Get 2D with 2D ";
  EXPECT_EQ( img.GetPixelAsInt16( std::vector<uint32_t>( 3, 0 ) ), 0 ) << " Get 2D with 3D ";
  ASSERT_ANY_THROW( img.GetPixelAsInt16( std::vector<uint32_t>( 1, 0 ) ) ) << " Get with idx too small";
  ASSERT_ANY_THROW( img.GetPixelAsUInt8( std::vector<uint32_t>( 2, 0 ) ) ) << " Get with wrong type";
  ASSERT_ANY_THROW( img.GetPixelAsUInt16( std::vector<uint32_t>( 2, 0 ) ) ) << " Get with wrong type";
  ASSERT_ANY_THROW( img.GetPixelAsInt32( std::vector<uint32_t>( 2, 0 ) ) ) << " Get with wrong type";
  ASSERT_ANY_THROW( img.GetPixelAsUInt32( std::vector<uint32_t>( 2, 0 ) ) ) << " Get with wrong type";
  ASSERT_ANY_THROW( img.GetPixelAsFloat( std::vector<uint32_t>( 2, 0 ) ) ) << " Get with wrong type";
  ASSERT_ANY_THROW( img.GetPixelAsDouble( std::vector<uint32_t>( 2, 0 ) ) ) << " Get with wrong type";

  img = sitk::Image( 10, 10, sitk::sitkUInt16 );
  EXPECT_EQ( img.GetPixelAsUInt16( std::vector<uint32_t>( 2, 0 ) ), 0 ) << " Get 2D with 2D ";
  EXPECT_EQ( img.GetPixelAsUInt16( std::vector<uint32_t>( 3, 0 ) ), 0 ) << " Get 2D with 3D ";
  ASSERT_ANY_THROW( img.GetPixelAsUInt16( std::vector<uint32_t>( 1, 0 ) ) ) << " Get with idx too small";
  ASSERT_ANY_THROW( img.GetPixelAsUInt8( std::vector<uint32_t>( 1, 0 ) ) ) << " Get with wrong type";
  ASSERT_ANY_THROW( img.GetPixelAsInt16( std::vector<uint32_t>( 2, 0 ) ) ) << " Get with wrong type";
  ASSERT_ANY_THROW( img.GetPixelAsInt32( std::vector<uint32_t>( 2, 0 ) ) ) << " Get with wrong type";
  ASSERT_ANY_THROW( img.GetPixelAsUInt32( std::vector<uint32_t>( 2, 0 ) ) ) << " Get with wrong type";
  ASSERT_ANY_THROW( img.GetPixelAsFloat( std::vector<uint32_t>( 2, 0 ) ) ) << " Get with wrong type";
  ASSERT_ANY_THROW( img.GetPixelAsDouble( std::vector<uint32_t>( 2, 0 ) ) ) << " Get with wrong type";

  img = sitk::Image( 10, 10, sitk::sitkInt32 );
  EXPECT_EQ( img.GetPixelAsInt32( std::vector<uint32_t>( 2, 0 ) ), 0 ) << " Get 2D with 2D ";
  EXPECT_EQ( img.GetPixelAsInt32( std::vector<uint32_t>( 3, 0 ) ), 0 ) << " Get 2D with 3D ";
  ASSERT_ANY_THROW( img.GetPixelAsInt32( std::vector<uint32_t>( 1, 0 ) ) ) << " Get with idx too small";
  ASSERT_ANY_THROW( img.GetPixelAsUInt8( std::vector<uint32_t>( 2, 0 ) ) ) << " Get with wrong type";
  ASSERT_ANY_THROW( img.GetPixelAsInt16( std::vector<uint32_t>( 2, 0 ) ) ) << " Get with wrong type";
  ASSERT_ANY_THROW( img.GetPixelAsUInt16( std::vector<uint32_t>( 2, 0 ) ) ) << " Get with wrong type";
  ASSERT_ANY_THROW( img.GetPixelAsUInt32( std::vector<uint32_t>( 2, 0 ) ) ) << " Get with wrong type";
  ASSERT_ANY_THROW( img.GetPixelAsFloat( std::vector<uint32_t>( 2, 0 ) ) ) << " Get with wrong type";
  ASSERT_ANY_THROW( img.GetPixelAsDouble( std::vector<uint32_t>( 2, 0 ) ) ) << " Get with wrong type";

  img = sitk::Image( 10, 10, sitk::sitkUInt32 );
  EXPECT_EQ( img.GetPixelAsUInt32( std::vector<uint32_t>( 2, 0 ) ), 0u ) << " Get 2D with 2D ";
  EXPECT_EQ( img.GetPixelAsUInt32( std::vector<uint32_t>( 3, 0 ) ), 0u ) << " Get 2D with 3D ";
  ASSERT_ANY_THROW( img.GetPixelAsUInt32( std::vector<uint32_t>( 1, 0 ) ) ) << " Get with idx too small";
  ASSERT_ANY_THROW( img.GetPixelAsUInt8( std::vector<uint32_t>( 2, 0 ) ) ) << " Get with wrong type";
  ASSERT_ANY_THROW( img.GetPixelAsInt16( std::vector<uint32_t>( 2, 0 ) ) ) << " Get with wrong type";
  ASSERT_ANY_THROW( img.GetPixelAsUInt16( std::vector<uint32_t>( 2, 0 ) ) ) << " Get with wrong type";
  ASSERT_ANY_THROW( img.GetPixelAsInt32( std::vector<uint32_t>( 2, 0 ) ) ) << " Get with wrong type";
  ASSERT_ANY_THROW( img.GetPixelAsFloat( std::vector<uint32_t>( 2, 0 ) ) ) << " Get with wrong type";
  ASSERT_ANY_THROW( img.GetPixelAsDouble( std::vector<uint32_t>( 2, 0 ) ) ) << " Get with wrong type";

  // currently Int64 pixel types are instantiated yet,
  // so an exception will be thrown.
  try
    {
    img = sitk::Image( 10, 10, sitk::sitkInt64 );
    EXPECT_EQ( img.GetPixelAsInt64( std::vector<uint32_t>( 2, 0 ) ), 0 ) << " Get 2D with 2D ";
    EXPECT_EQ( img.GetPixelAsInt64( std::vector<uint32_t>( 3, 0 ) ), 0 ) << " Get 2D with 3D ";
    ASSERT_ANY_THROW( img.GetPixelAsInt64( std::vector<uint32_t>( 1, 0 ) ) ) << " Get with idx too small";
    ASSERT_ANY_THROW( img.GetPixelAsUInt8( std::vector<uint32_t>( 2, 0 ) ) ) << " Get with wrong type";
    ASSERT_ANY_THROW( img.GetPixelAsInt16( std::vector<uint32_t>( 2, 0 ) ) ) << " Get with wrong type";
    ASSERT_ANY_THROW( img.GetPixelAsUInt16( std::vector<uint32_t>( 2, 0 ) ) ) << " Get with wrong type";
    ASSERT_ANY_THROW( img.GetPixelAsUInt32( std::vector<uint32_t>( 2, 0 ) ) ) << " Get with wrong type";
    ASSERT_ANY_THROW( img.GetPixelAsUInt64( std::vector<uint32_t>( 2, 0 ) ) ) << " Get with wrong type";
    ASSERT_ANY_THROW( img.GetPixelAsFloat( std::vector<uint32_t>( 2, 0 ) ) ) << " Get with wrong type";
    ASSERT_ANY_THROW( img.GetPixelAsDouble( std::vector<uint32_t>( 2, 0 ) ) ) << " Get with wrong type";

    img = sitk::Image( 10, 10, sitk::sitkUInt64 );
    EXPECT_EQ( img.GetPixelAsUInt64( std::vector<uint32_t>( 2, 0 ) ), 0u ) << " Get 2D with 2D ";
    EXPECT_EQ( img.GetPixelAsUInt64( std::vector<uint32_t>( 3, 0 ) ), 0u ) << " Get 2D with 3D ";
    ASSERT_ANY_THROW( img.GetPixelAsUInt64( std::vector<uint32_t>( 1, 0 ) ) ) << " Get with idx too small";
    ASSERT_ANY_THROW( img.GetPixelAsUInt8( std::vector<uint32_t>( 2, 0 ) ) ) << " Get with wrong type";
    ASSERT_ANY_THROW( img.GetPixelAsInt16( std::vector<uint32_t>( 2, 0 ) ) ) << " Get with wrong type";
    ASSERT_ANY_THROW( img.GetPixelAsUInt16( std::vector<uint32_t>( 2, 0 ) ) ) << " Get with wrong type";
    ASSERT_ANY_THROW( img.GetPixelAsInt32( std::vector<uint32_t>( 2, 0 ) ) ) << " Get with wrong type";
    ASSERT_ANY_THROW( img.GetPixelAsInt64( std::vector<uint32_t>( 2, 0 ) ) ) << " Get with wrong type";
    ASSERT_ANY_THROW( img.GetPixelAsFloat( std::vector<uint32_t>( 2, 0 ) ) ) << " Get with wrong type";
    ASSERT_ANY_THROW( img.GetPixelAsDouble( std::vector<uint32_t>( 2, 0 ) ) ) << " Get with wrong type";
    }
  catch ( std::exception &e)
    {
    std::cout << "Exception: " << e.what() << std::endl;
    }

  img = sitk::Image( 10, 10, sitk::sitkFloat32 );
  EXPECT_EQ( img.GetPixelAsFloat( std::vector<uint32_t>( 2, 0 ) ), 0u ) << " Get 2D with 2D ";
  EXPECT_EQ( img.GetPixelAsFloat( std::vector<uint32_t>( 3, 0 ) ), 0u ) << " Get 2D with 3D ";
  ASSERT_ANY_THROW( img.GetPixelAsFloat( std::vector<uint32_t>( 1, 0 ) ) ) << " Get with idx too small";
  ASSERT_ANY_THROW( img.GetPixelAsInt16( std::vector<uint32_t>( 2, 0 ) ) ) << " Get with wrong type";
  ASSERT_ANY_THROW( img.GetPixelAsUInt16( std::vector<uint32_t>( 2, 0 ) ) ) << " Get with wrong type";
  ASSERT_ANY_THROW( img.GetPixelAsInt32( std::vector<uint32_t>( 2, 0 ) ) ) << " Get with wrong type";
  ASSERT_ANY_THROW( img.GetPixelAsDouble( std::vector<uint32_t>( 2, 0 ) ) ) << " Get with wrong type";

  img = sitk::Image( 10, 10, sitk::sitkFloat64 );
  EXPECT_EQ( img.GetPixelAsDouble( std::vector<uint32_t>( 2, 0 ) ), 0 ) << " Get 2D with 2D ";
  EXPECT_EQ( img.GetPixelAsDouble( std::vector<uint32_t>( 3, 0 ) ), 0 ) << " Get 2D with 3D ";
  ASSERT_ANY_THROW( img.GetPixelAsDouble( std::vector<uint32_t>( 1, 0 ) ) ) << " Get with idx too small";
  ASSERT_ANY_THROW( img.GetPixelAsUInt8( std::vector<uint32_t>( 2, 0 ) ) ) << " Get with wrong type";
  ASSERT_ANY_THROW( img.GetPixelAsInt16( std::vector<uint32_t>( 2, 0 ) ) ) << " Get with wrong type";
  ASSERT_ANY_THROW( img.GetPixelAsUInt16( std::vector<uint32_t>( 2, 0 ) ) ) << " Get with wrong type";
  ASSERT_ANY_THROW( img.GetPixelAsInt32( std::vector<uint32_t>( 2, 0 ) ) ) << " Get with wrong type";
  ASSERT_ANY_THROW( img.GetPixelAsUInt32( std::vector<uint32_t>( 2, 0 ) ) ) << " Get with wrong type";
  ASSERT_ANY_THROW( img.GetPixelAsFloat( std::vector<uint32_t>( 2, 0 ) ) ) << " Get with wrong type";


  // Check that out of bounds throw
  uint32_t xOOB[] = {10,0,0};
  uint32_t yOOB[] = {0,10,0};
  uint32_t zOOB[] = {0,0,10};
  ASSERT_THROW( img.GetPixelAsDouble(  std::vector<uint32_t>( xOOB, xOOB+3 ) ), itk::simple::GenericException ) << "x out of bounds";
  ASSERT_THROW( img.GetPixelAsDouble(  std::vector<uint32_t>( yOOB, yOOB+3 ) ), itk::simple::GenericException ) << "y out of bounds";
  ASSERT_NO_THROW( img.GetPixelAsDouble(  std::vector<uint32_t>( zOOB, zOOB+3 ) ) ) << "z out of bounds, expect truncation of z-dim";


}

TEST_F(Image, GetBuffer)
{

  // this test is designed to run all GetBuffer methods
  sitk::Image img = sitk::Image( 10, 10, sitk::sitkUInt8 );
  EXPECT_EQ( img.GetBufferAsUInt8()[99], 0 ) << " Get last element in buffer ";
  ASSERT_ANY_THROW( img.GetBufferAsInt16() ) << " Get with wrong type";
  ASSERT_ANY_THROW( img.GetBufferAsUInt16() ) << " Get with wrong type";
  ASSERT_ANY_THROW( img.GetBufferAsInt32() ) << " Get with wrong type";
  ASSERT_ANY_THROW( img.GetBufferAsUInt32() ) << " Get with wrong type";
  ASSERT_ANY_THROW( img.GetBufferAsInt64() ) << " Get with wrong type";
  ASSERT_ANY_THROW( img.GetBufferAsUInt64() ) << " Get with wrong type";
  ASSERT_ANY_THROW( img.GetBufferAsFloat() ) << " Get with wrong type";
  ASSERT_ANY_THROW( img.GetBufferAsDouble() ) << " Get with wrong type";

  img = sitk::Image( 10, 10, sitk::sitkInt8 );
  EXPECT_EQ( img.GetBufferAsInt8()[99], 0 ) << " Get last element in buffer ";
  ASSERT_ANY_THROW( img.GetBufferAsUInt8() ) << " Get with wrong type";
  ASSERT_ANY_THROW( img.GetBufferAsInt16() ) << " Get with wrong type";
  ASSERT_ANY_THROW( img.GetBufferAsUInt16() ) << " Get with wrong type";
  ASSERT_ANY_THROW( img.GetBufferAsInt32() ) << " Get with wrong type";
  ASSERT_ANY_THROW( img.GetBufferAsUInt32() ) << " Get with wrong type";
  ASSERT_ANY_THROW( img.GetBufferAsInt64() ) << " Get with wrong type";
  ASSERT_ANY_THROW( img.GetBufferAsUInt64() ) << " Get with wrong type";
  ASSERT_ANY_THROW( img.GetBufferAsFloat() ) << " Get with wrong type";
  ASSERT_ANY_THROW( img.GetBufferAsDouble() ) << " Get with wrong type";

  img = sitk::Image( 10, 10, 10, sitk::sitkUInt8 );
  EXPECT_EQ( img.GetBufferAsUInt8()[99], 0 ) << " Get 3D with 3D ";
  ASSERT_ANY_THROW( img.GetBufferAsInt16() ) << " Get with wrong type";
  ASSERT_ANY_THROW( img.GetBufferAsUInt16() ) << " Get with wrong type";
  ASSERT_ANY_THROW( img.GetBufferAsInt32() ) << " Get with wrong type";
  ASSERT_ANY_THROW( img.GetBufferAsUInt32() ) << " Get with wrong type";
  ASSERT_ANY_THROW( img.GetBufferAsFloat() ) << " Get with wrong type";
  ASSERT_ANY_THROW( img.GetBufferAsDouble() ) << " Get with wrong type";


  img = sitk::Image( 10, 10, sitk::sitkInt16 );
  EXPECT_EQ( img.GetBufferAsInt16()[99], 0 ) << " Get last element in buffer ";
  ASSERT_ANY_THROW( img.GetBufferAsUInt8() ) << " Get with wrong type";
  ASSERT_ANY_THROW( img.GetBufferAsUInt16() ) << " Get with wrong type";
  ASSERT_ANY_THROW( img.GetBufferAsInt32() ) << " Get with wrong type";
  ASSERT_ANY_THROW( img.GetBufferAsUInt32() ) << " Get with wrong type";
  ASSERT_ANY_THROW( img.GetBufferAsFloat() ) << " Get with wrong type";
  ASSERT_ANY_THROW( img.GetBufferAsDouble() ) << " Get with wrong type";

  img = sitk::Image( 10, 10, sitk::sitkUInt16 );
  EXPECT_EQ( img.GetBufferAsUInt16()[99], 0 ) << " Get last element in buffer ";
  ASSERT_ANY_THROW( img.GetBufferAsUInt8() ) << " Get with wrong type";
  ASSERT_ANY_THROW( img.GetBufferAsInt16() ) << " Get with wrong type";
  ASSERT_ANY_THROW( img.GetBufferAsInt32() ) << " Get with wrong type";
  ASSERT_ANY_THROW( img.GetBufferAsUInt32() ) << " Get with wrong type";
  ASSERT_ANY_THROW( img.GetBufferAsFloat() ) << " Get with wrong type";
  ASSERT_ANY_THROW( img.GetBufferAsDouble() ) << " Get with wrong type";

  img = sitk::Image( 10, 10, sitk::sitkInt32 );
  EXPECT_EQ( img.GetBufferAsInt32()[99], 0 ) << " Get last element in buffer ";
  ASSERT_ANY_THROW( img.GetBufferAsUInt8() ) << " Get with wrong type";
  ASSERT_ANY_THROW( img.GetBufferAsInt16() ) << " Get with wrong type";
  ASSERT_ANY_THROW( img.GetBufferAsUInt16() ) << " Get with wrong type";
  ASSERT_ANY_THROW( img.GetBufferAsUInt32() ) << " Get with wrong type";
  ASSERT_ANY_THROW( img.GetBufferAsFloat() ) << " Get with wrong type";
  ASSERT_ANY_THROW( img.GetBufferAsDouble() ) << " Get with wrong type";

  img = sitk::Image( 10, 10, sitk::sitkUInt32 );
  EXPECT_EQ( img.GetBufferAsUInt32()[99], 0u ) << " Get last element in buffer ";
  ASSERT_ANY_THROW( img.GetBufferAsUInt8() ) << " Get with wrong type";
  ASSERT_ANY_THROW( img.GetBufferAsInt16() ) << " Get with wrong type";
  ASSERT_ANY_THROW( img.GetBufferAsUInt16() ) << " Get with wrong type";
  ASSERT_ANY_THROW( img.GetBufferAsInt32() ) << " Get with wrong type";
  ASSERT_ANY_THROW( img.GetBufferAsFloat() ) << " Get with wrong type";
  ASSERT_ANY_THROW( img.GetBufferAsDouble() ) << " Get with wrong type";


  // currently Int64 pixel types are instantiated yet,
  // so an exception will be thrown.
  try
    {
    img = sitk::Image( 10, 10, sitk::sitkUInt64 );
    EXPECT_EQ( img.GetBufferAsUInt64()[99], 0u ) << " Get last element in buffer ";

    img = sitk::Image( 10, 10, sitk::sitkInt64 );
    EXPECT_EQ( img.GetBufferAsInt64()[99], 0u ) << " Get last element in buffer ";
    }
  catch ( std::exception &e)
    {
    std::cout << "Exception: " << e.what() << std::endl;
    }

  img = sitk::Image( 10, 10, sitk::sitkFloat32 );
  EXPECT_EQ( img.GetBufferAsFloat()[99], 0u ) << " Get last element in buffer ";
  ASSERT_ANY_THROW( img.GetBufferAsInt16() ) << " Get with wrong type";
  ASSERT_ANY_THROW( img.GetBufferAsUInt16() ) << " Get with wrong type";
  ASSERT_ANY_THROW( img.GetBufferAsInt32() ) << " Get with wrong type";
  ASSERT_ANY_THROW( img.GetBufferAsDouble() ) << " Get with wrong type";

  img = sitk::Image( 10, 10, sitk::sitkFloat64 );
  EXPECT_EQ( img.GetBufferAsDouble()[99], 0 ) << " Get last element in buffer ";
  ASSERT_ANY_THROW( img.GetBufferAsUInt8() ) << " Get with wrong type";
  ASSERT_ANY_THROW( img.GetBufferAsInt16() ) << " Get with wrong type";
  ASSERT_ANY_THROW( img.GetBufferAsUInt16() ) << " Get with wrong type";
  ASSERT_ANY_THROW( img.GetBufferAsInt32() ) << " Get with wrong type";
  ASSERT_ANY_THROW( img.GetBufferAsUInt32() ) << " Get with wrong type";
  ASSERT_ANY_THROW( img.GetBufferAsFloat() ) << " Get with wrong type";

}


TEST_F(Image, GetBufferVector)
{

  // this test is designed to run all GetBuffer methods for vector images
  sitk::Image img = sitk::Image( 10, 10, sitk::sitkVectorUInt8 );
  EXPECT_EQ( img.GetBufferAsUInt8()[99], 0 ) << " Get last element in buffer ";
  ASSERT_ANY_THROW( img.GetBufferAsInt16() ) << " Get with wrong type";
  ASSERT_ANY_THROW( img.GetBufferAsUInt16() ) << " Get with wrong type";
  ASSERT_ANY_THROW( img.GetBufferAsInt32() ) << " Get with wrong type";
  ASSERT_ANY_THROW( img.GetBufferAsUInt32() ) << " Get with wrong type";
  ASSERT_ANY_THROW( img.GetBufferAsInt64() ) << " Get with wrong type";
  ASSERT_ANY_THROW( img.GetBufferAsUInt64() ) << " Get with wrong type";
  ASSERT_ANY_THROW( img.GetBufferAsFloat() ) << " Get with wrong type";
  ASSERT_ANY_THROW( img.GetBufferAsDouble() ) << " Get with wrong type";

  img = sitk::Image( 10, 10, sitk::sitkVectorInt8 );
  EXPECT_EQ( img.GetBufferAsInt8()[99], 0 ) << " Get last element in buffer ";
  ASSERT_ANY_THROW( img.GetBufferAsUInt8() ) << " Get with wrong type";
  ASSERT_ANY_THROW( img.GetBufferAsInt16() ) << " Get with wrong type";
  ASSERT_ANY_THROW( img.GetBufferAsUInt16() ) << " Get with wrong type";
  ASSERT_ANY_THROW( img.GetBufferAsInt32() ) << " Get with wrong type";
  ASSERT_ANY_THROW( img.GetBufferAsUInt32() ) << " Get with wrong type";
  ASSERT_ANY_THROW( img.GetBufferAsInt64() ) << " Get with wrong type";
  ASSERT_ANY_THROW( img.GetBufferAsUInt64() ) << " Get with wrong type";
  ASSERT_ANY_THROW( img.GetBufferAsFloat() ) << " Get with wrong type";
  ASSERT_ANY_THROW( img.GetBufferAsDouble() ) << " Get with wrong type";

  img = sitk::Image( 10, 10, 10, sitk::sitkVectorUInt8 );
  EXPECT_EQ( img.GetBufferAsUInt8()[99], 0 ) << " Get 3D with 3D ";
  ASSERT_ANY_THROW( img.GetBufferAsInt16() ) << " Get with wrong type";
  ASSERT_ANY_THROW( img.GetBufferAsUInt16() ) << " Get with wrong type";
  ASSERT_ANY_THROW( img.GetBufferAsInt32() ) << " Get with wrong type";
  ASSERT_ANY_THROW( img.GetBufferAsUInt32() ) << " Get with wrong type";
  ASSERT_ANY_THROW( img.GetBufferAsFloat() ) << " Get with wrong type";
  ASSERT_ANY_THROW( img.GetBufferAsDouble() ) << " Get with wrong type";


  img = sitk::Image( 10, 10, sitk::sitkVectorInt16 );
  EXPECT_EQ( img.GetBufferAsInt16()[99], 0 ) << " Get last element in buffer ";
  ASSERT_ANY_THROW( img.GetBufferAsUInt8() ) << " Get with wrong type";
  ASSERT_ANY_THROW( img.GetBufferAsUInt16() ) << " Get with wrong type";
  ASSERT_ANY_THROW( img.GetBufferAsInt32() ) << " Get with wrong type";
  ASSERT_ANY_THROW( img.GetBufferAsUInt32() ) << " Get with wrong type";
  ASSERT_ANY_THROW( img.GetBufferAsFloat() ) << " Get with wrong type";
  ASSERT_ANY_THROW( img.GetBufferAsDouble() ) << " Get with wrong type";

  img = sitk::Image( 10, 10, sitk::sitkVectorUInt16 );
  EXPECT_EQ( img.GetBufferAsUInt16()[99], 0 ) << " Get last element in buffer ";
  ASSERT_ANY_THROW( img.GetBufferAsUInt8() ) << " Get with wrong type";
  ASSERT_ANY_THROW( img.GetBufferAsInt16() ) << " Get with wrong type";
  ASSERT_ANY_THROW( img.GetBufferAsInt32() ) << " Get with wrong type";
  ASSERT_ANY_THROW( img.GetBufferAsUInt32() ) << " Get with wrong type";
  ASSERT_ANY_THROW( img.GetBufferAsFloat() ) << " Get with wrong type";
  ASSERT_ANY_THROW( img.GetBufferAsDouble() ) << " Get with wrong type";

  img = sitk::Image( 10, 10, sitk::sitkVectorInt32 );
  EXPECT_EQ( img.GetBufferAsInt32()[99], 0 ) << " Get last element in buffer ";
  ASSERT_ANY_THROW( img.GetBufferAsUInt8() ) << " Get with wrong type";
  ASSERT_ANY_THROW( img.GetBufferAsInt16() ) << " Get with wrong type";
  ASSERT_ANY_THROW( img.GetBufferAsUInt16() ) << " Get with wrong type";
  ASSERT_ANY_THROW( img.GetBufferAsUInt32() ) << " Get with wrong type";
  ASSERT_ANY_THROW( img.GetBufferAsFloat() ) << " Get with wrong type";
  ASSERT_ANY_THROW( img.GetBufferAsDouble() ) << " Get with wrong type";

  img = sitk::Image( 10, 10, sitk::sitkVectorUInt32 );
  EXPECT_EQ( img.GetBufferAsUInt32()[99], 0u ) << " Get last element in buffer ";
  ASSERT_ANY_THROW( img.GetBufferAsUInt8() ) << " Get with wrong type";
  ASSERT_ANY_THROW( img.GetBufferAsInt16() ) << " Get with wrong type";
  ASSERT_ANY_THROW( img.GetBufferAsUInt16() ) << " Get with wrong type";
  ASSERT_ANY_THROW( img.GetBufferAsInt32() ) << " Get with wrong type";
  ASSERT_ANY_THROW( img.GetBufferAsFloat() ) << " Get with wrong type";
  ASSERT_ANY_THROW( img.GetBufferAsDouble() ) << " Get with wrong type";


  // currently Int64 pixel types are instantiated yet,
  // so an exception will be thrown.
  try
    {
    img = sitk::Image( 10, 10, sitk::sitkVectorUInt64 );
    EXPECT_EQ( img.GetBufferAsUInt64()[99], 0u ) << " Get last element in buffer ";

    img = sitk::Image( 10, 10, sitk::sitkVectorInt64 );
    EXPECT_EQ( img.GetBufferAsInt64()[99], 0u ) << " Get last element in buffer ";
    }
  catch ( std::exception &e)
    {
    std::cout << "Exception: " << e.what() << std::endl;
    }

  img = sitk::Image( 10, 10, sitk::sitkVectorFloat32 );
  EXPECT_EQ( img.GetBufferAsFloat()[99], 0u ) << " Get last element in buffer ";
  ASSERT_ANY_THROW( img.GetBufferAsInt16() ) << " Get with wrong type";
  ASSERT_ANY_THROW( img.GetBufferAsUInt16() ) << " Get with wrong type";
  ASSERT_ANY_THROW( img.GetBufferAsInt32() ) << " Get with wrong type";
  ASSERT_ANY_THROW( img.GetBufferAsDouble() ) << " Get with wrong type";

  img = sitk::Image( 10, 10, sitk::sitkVectorFloat64 );
  EXPECT_EQ( img.GetBufferAsDouble()[99], 0 ) << " Get last element in buffer ";
  ASSERT_ANY_THROW( img.GetBufferAsUInt8() ) << " Get with wrong type";
  ASSERT_ANY_THROW( img.GetBufferAsInt16() ) << " Get with wrong type";
  ASSERT_ANY_THROW( img.GetBufferAsUInt16() ) << " Get with wrong type";
  ASSERT_ANY_THROW( img.GetBufferAsInt32() ) << " Get with wrong type";
  ASSERT_ANY_THROW( img.GetBufferAsUInt32() ) << " Get with wrong type";
  ASSERT_ANY_THROW( img.GetBufferAsFloat() ) << " Get with wrong type";

}


TEST_F(Image,Mandelbrot)
{
  unsigned int xs = 35*100;
  unsigned int ys = 20*100;

  sitk::Image real = sitk::Image( xs, ys, sitk::sitkFloat32 );
  sitk::Image imagine = sitk::Image( xs, ys, sitk::sitkFloat32 );

  for (unsigned int i = 0; i < xs; ++i )
    {
    for ( unsigned int j = 0; j < ys; ++j )
      {
      std::vector<unsigned int> idx(2);
      idx[0] = i;
      idx[1] = j;

      real.SetPixelAsFloat( idx, -2.5 + ( double(i)/xs ) * 3.5 );
      imagine.SetPixelAsFloat( idx, -1 + ( double(j)/ys ) * 2 );
      }
    }

  sitk::Image C = sitk::RealAndImaginaryToComplex( real, imagine );
  std::cout << "Generated C" << std::endl;

  // initial image filled with 0s
  sitk::Image img( xs, ys, sitk::sitkComplexFloat32 );

  for ( unsigned int i = 0; i < 25; ++i )
    {
    img *= img;
    img += C;
    }

  sitk::Image R = sitk::ComplexToReal( img );
  sitk::Image I = sitk::ComplexToImaginary( img );
  img = R*R + I*I;

  sitk::WriteImage( img, "mandelbrot.nrrd" );
}
