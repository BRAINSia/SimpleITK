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

#include "sitkImageFileWriter.h"

#include <itkImageIOBase.h>
#include <itkImageFileWriter.h>
#include <itkImageRegionIterator.h>

namespace itk {
namespace simple {
  void WriteImage ( const Image& image, std::string filename ) { ImageFileWriter writer; writer.SetFileName ( filename ).Execute ( image ); }

ImageFileWriter::ImageFileWriter()
  {
  this->m_MemberFactory.reset( new detail::MemberFunctionFactory<MemberFunctionType>( this ) );

  this->m_MemberFactory->RegisterMemberFunctions< PixelIDTypeList, 3 > ();
  this->m_MemberFactory->RegisterMemberFunctions< PixelIDTypeList, 2 > ();
  }

ImageFileWriter& ImageFileWriter::SetFileName ( std::string fn )
  {
  this->m_FileName = fn;
  return *this;
  }

std::string ImageFileWriter::GetFileName()
  {
  return this->m_FileName;
  }

ImageFileWriter& ImageFileWriter::Execute ( const Image& image )
  {
    PixelIDValueType type = image.GetPixelIDValue();
    unsigned int dimension = image.GetDimension();

    return this->m_MemberFactory->GetMemberFunction( type, dimension )( image );
  }

//-----------------------------------------------------------------------------
template <class InputImageType>
ImageFileWriter& ImageFileWriter::ExecuteInternal( const Image& inImage )
  {
    typename InputImageType::ConstPointer image =
      dynamic_cast <const InputImageType*> ( inImage.GetITKBase() );

    typedef itk::ImageFileWriter<InputImageType> Writer;
    typename Writer::Pointer writer = Writer::New();
    writer->UseCompressionOn();
    writer->SetFileName ( this->m_FileName.c_str() );
    writer->SetInput ( image );
    writer->Update();

    return *this;
  }

} // end namespace simple
} // end namespace itk
