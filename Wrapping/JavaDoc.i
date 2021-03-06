// Generated for ClassName from /scratch/blowekamp/build/ITK-gerrit/Utilities/Doxygen/xml/classitk_1_1AbsImageFilter.xml
%typemap(javaimports) itk::simple::AbsImageFilter "/** Computes the absolute value of each pixel.

vnl_math_abs() is used to perform the computation.
par Wiki Examples:

li All Examples

li Compute the absolute value of an image

*/"
%javamethodmodifiers itk::simple::AbsImageFilter::execute() "
/**Computes the absolute value of each pixel.

*/"
%javamethodmodifiers itk::simple::Abs "/**
Computes the absolute value of each pixel.

vnl_math_abs() is used to perform the computation.
par Wiki Examples:

li All Examples

li Compute the absolute value of an image

*/"
// Generated for ClassName from /scratch/blowekamp/build/ITK-gerrit/Utilities/Doxygen/xml/classitk_1_1AbsoluteValueDifferenceImageFilter.xml
%typemap(javaimports) itk::simple::AbsoluteValueDifferenceImageFilter "/** Implements pixel-wise the computation of absolute value difference.

This filter is parametrized over the types of the two input images and the type of the output image.
Numeric conversions (castings) are done by the C++ defaults.
The filter will walk over all the pixels in the two input images, and for each one of them it will do the following:

li Cast the input 1 pixel value to double .
li Cast the input 2 pixel value to double .
li Compute the difference of the two pixel values.
li Compute the absolute value of the difference.
li Cast the double value resulting from the absolute value to the pixel type of the output image.
li Store the casted value into the output image.
The filter expects all images to have the same dimension (e.g. all 2D, or all 3D, or all ND).
par Wiki Examples:

li All Examples

li Compute the absolute value of the difference of corresponding pixels in two images

*/"
%javamethodmodifiers itk::simple::AbsoluteValueDifferenceImageFilter::execute() "
/**Implements pixel-wise the computation of absolute value difference.

*/"
%javamethodmodifiers itk::simple::AbsoluteValueDifference "/**
Implements pixel-wise the computation of absolute value difference.

This filter is parametrized over the types of the two input images and the type of the output image.
Numeric conversions (castings) are done by the C++ defaults.
The filter will walk over all the pixels in the two input images, and for each one of them it will do the following:

li Cast the input 1 pixel value to double .
li Cast the input 2 pixel value to double .
li Compute the difference of the two pixel values.
li Compute the absolute value of the difference.
li Cast the double value resulting from the absolute value to the pixel type of the output image.
li Store the casted value into the output image.
The filter expects all images to have the same dimension (e.g. all 2D, or all 3D, or all ND).
par Wiki Examples:

li All Examples

li Compute the absolute value of the difference of corresponding pixels in two images

*/"
// Generated for ClassName from /scratch/blowekamp/build/ITK-gerrit/Utilities/Doxygen/xml/classitk_1_1AcosImageFilter.xml
%typemap(javaimports) itk::simple::AcosImageFilter "/** Computes the inverse cosine of each pixel.

This filter is templated over the pixel type of the input image and the pixel type of the output image.
The filter walks over all the pixels in the input image, and for each pixel does do the following:

li cast the pixel value to double ,
li apply the vcl_acos() function to the double value
li cast the double value resulting from vcl_acos() to the pixel type of the output image
li store the casted value into the output image.
The filter expects both images to have the same dimension (e.g. both 2D, or both 3D, or both ND).
*/"
%javamethodmodifiers itk::simple::AcosImageFilter::execute() "
/**Computes the inverse cosine of each pixel.

*/"
%javamethodmodifiers itk::simple::Acos "/**
Computes the inverse cosine of each pixel.

This filter is templated over the pixel type of the input image and the pixel type of the output image.
The filter walks over all the pixels in the input image, and for each pixel does do the following:

li cast the pixel value to double ,
li apply the vcl_acos() function to the double value
li cast the double value resulting from vcl_acos() to the pixel type of the output image
li store the casted value into the output image.
The filter expects both images to have the same dimension (e.g. both 2D, or both 3D, or both ND).
*/"
// Generated for ClassName from /scratch/blowekamp/build/ITK-gerrit/Utilities/Doxygen/xml/classitk_1_1AdaptiveHistogramEqualizationImageFilter.xml
%typemap(javaimports) itk::simple::AdaptiveHistogramEqualizationImageFilter "/** Power Law Adaptive Histogram Equalization.

Histogram equalization modifies the contrast in an image. The AdaptiveHistogramEqualizationImageFilteris a superset of many contrast enhancing filters. By modifying its parameters (alpha, beta, and window), the AdaptiveHistogramEqualizationImageFiltercan produce an adaptively equalized histogram or a version of unsharp mask (local mean subtraction). Instead of applying a strict histogram equalization in a window about a pixel, this filter prescribes a mapping function (power law) controlled by the parameters alpha and beta.
The parameter alpha controls how much the filter acts like the classical histogram equalization method (alpha=0) to how much the filter acts like an unsharp mask (alpha=1).
The parameter beta controls how much the filter acts like an unsharp mask (beta=0) to much the filter acts like pass through (beta=1, with alpha=1).
The parameter window controls the size of the region over which local statistics are calculated.
By altering alpha, beta and window, a host of equalization and unsharp masking filters is available.
For detail description, reference Adaptive Image Contrast
 Enhancement using Generalizations of Histogram Equalization. J.Alex Stark. IEEE Transactions on ImageProcessing, May 2000.
par Wiki Examples:

li All Examples

li Adaptive histogram equalization

*/"
%javamethodmodifiers itk::simple::AdaptiveHistogramEqualizationImageFilter::execute() "
/**Power Law Adaptive Histogram Equalization.

*/"
%javamethodmodifiers itk::simple::AdaptiveHistogramEqualization "/**
Power Law Adaptive Histogram Equalization.

Histogram equalization modifies the contrast in an image. The AdaptiveHistogramEqualizationImageFilteris a superset of many contrast enhancing filters. By modifying its parameters (alpha, beta, and window), the AdaptiveHistogramEqualizationImageFiltercan produce an adaptively equalized histogram or a version of unsharp mask (local mean subtraction). Instead of applying a strict histogram equalization in a window about a pixel, this filter prescribes a mapping function (power law) controlled by the parameters alpha and beta.
The parameter alpha controls how much the filter acts like the classical histogram equalization method (alpha=0) to how much the filter acts like an unsharp mask (alpha=1).
The parameter beta controls how much the filter acts like an unsharp mask (beta=0) to much the filter acts like pass through (beta=1, with alpha=1).
The parameter window controls the size of the region over which local statistics are calculated.
By altering alpha, beta and window, a host of equalization and unsharp masking filters is available.
For detail description, reference Adaptive Image Contrast
 Enhancement using Generalizations of Histogram Equalization. J.Alex Stark. IEEE Transactions on ImageProcessing, May 2000.
par Wiki Examples:

li All Examples

li Adaptive histogram equalization

*/"
%javamethodmodifiers itk::simple::AdaptiveHistogramEqualizationImageFilter::setAlpha "/**
virtual void itk::AdaptiveHistogramEqualizationImageFilter::SetAlpha(float _arg)

Set/Get the value of alpha. Alpha=0 produces the adaptive histogram equalization (provided beta=0). Alpha=1 produces an unsharp mask. Default is 0.3.
*/"

%javamethodmodifiers itk::simple::AdaptiveHistogramEqualizationImageFilter::getAlpha "/**
virtual float itk::AdaptiveHistogramEqualizationImageFilter::GetAlpha() const

Set/Get the value of alpha. Alpha=0 produces the adaptive histogram equalization (provided beta=0). Alpha=1 produces an unsharp mask. Default is 0.3.
*/"

%javamethodmodifiers itk::simple::AdaptiveHistogramEqualizationImageFilter::setBeta "/**
virtual void itk::AdaptiveHistogramEqualizationImageFilter::SetBeta(float _arg)

Set/Get the value of beta. If beta=1 (and alpha=1), then the output image matches the input image. As beta approaches 0, the filter behaves as an unsharp mask. Default is 0.3.
*/"

%javamethodmodifiers itk::simple::AdaptiveHistogramEqualizationImageFilter::getBeta "/**
virtual float itk::AdaptiveHistogramEqualizationImageFilter::GetBeta() const

Set/Get the value of beta. If beta=1 (and alpha=1), then the output image matches the input image. As beta approaches 0, the filter behaves as an unsharp mask. Default is 0.3.
*/"

%javamethodmodifiers itk::simple::AdaptiveHistogramEqualizationImageFilter::setUseLookupTable "/**
virtual void itk::AdaptiveHistogramEqualizationImageFilter::SetUseLookupTable(bool _arg)

Set/Get whether an optimized lookup table for the intensity mapping function is used. Default is off.
*/"

%javamethodmodifiers itk::simple::AdaptiveHistogramEqualizationImageFilter::getUseLookupTable "/**
virtual bool itk::AdaptiveHistogramEqualizationImageFilter::GetUseLookupTable() const

Set/Get whether an optimized lookup table for the intensity mapping function is used. Default is off.
*/"

// Generated for ClassName from /scratch/blowekamp/build/ITK-gerrit/Utilities/Doxygen/xml/classitk_1_1AddConstantToImageFilter.xml
%typemap(javaimports) itk::simple::AddConstantToImageFilter "/** Add a constant to all input pixels.

This filter is templated over the input image type and the output image type.
author Tom Vercauteren, INRIA & Mauna Kea Technologies
Based on filters from the Insight Journal paper:http://hdl.handle.net/1926/510
see  AddImageFilter

*/"
%javamethodmodifiers itk::simple::AddConstantToImageFilter::execute() "
/**Add a constant to all input pixels.

*/"
%javamethodmodifiers itk::simple::AddConstantTo "/**
Add a constant to all input pixels.

This filter is templated over the input image type and the output image type.
author Tom Vercauteren, INRIA & Mauna Kea Technologies
Based on filters from the Insight Journal paper:http://hdl.handle.net/1926/510
see  AddImageFilter

*/"
// Generated for ClassName from /scratch/blowekamp/build/ITK-gerrit/Utilities/Doxygen/xml/classitk_1_1AndImageFilter.xml
%typemap(javaimports) itk::simple::AndImageFilter "/** Implements the AND logical operator pixel-wise between two images.

This class is templated over the types of the two input images and the type of the output image. Numeric conversions (castings) are done by the C++ defaults.
Since the logical AND operation is only defined in C++ for integer types, the images passed to this filter must comply with the requirement of using integer pixel type.
The total operation over one pixel will beoutput_pixel=static_cast<OutputPixelType>(input1_pixel&input2_pixel)Where & is the boolean AND operator in C++.
par Wiki Examples:

li All Examples

li Binary AND two images

*/"
%javamethodmodifiers itk::simple::AndImageFilter::execute() "
/**Implements the AND logical operator pixel-wise between two images.

*/"
%javamethodmodifiers itk::simple::And "/**
Implements the AND logical operator pixel-wise between two images.

This class is templated over the types of the two input images and the type of the output image. Numeric conversions (castings) are done by the C++ defaults.
Since the logical AND operation is only defined in C++ for integer types, the images passed to this filter must comply with the requirement of using integer pixel type.
The total operation over one pixel will beoutput_pixel=static_cast<OutputPixelType>(input1_pixel&input2_pixel)Where & is the boolean AND operator in C++.
par Wiki Examples:

li All Examples

li Binary AND two images

*/"
// Generated for ClassName from /scratch/blowekamp/build/ITK-gerrit/Utilities/Doxygen/xml/classitk_1_1ApproximateSignedDistanceMapImageFilter.xml
%typemap(javaimports) itk::simple::ApproximateSignedDistanceMapImageFilter "/** Create a map of the approximate signed distance from the boundaries of a binary image.

The ApproximateSignedDistanceMapImageFiltertakes as input a binary image and produces a signed distance map. Each pixel value in the output contains the approximate distance from that pixel to the nearest object in the binary image. This filter differs from the DanielssonDistanceMapImageFilterin that it calculates the distance to the object edge for pixels within the object.
Negative values in the output indicate that the pixel at that position is within an object in the input image. The absolute value of a negative pixel represents the approximate distance to the nearest object boundary pixel.
WARNING: This filter requires that the output type be floating-point. Otherwise internal calculations will not be performed to the appropriate precision, resulting in completely incorrect (read: zero-valued) output.
The distances computed by this filter are Chamfer distances, which are only an approximation to Euclidian distances, and are not as exact approximations as those calculated by the DanielssonDistanceMapImageFilter. On the other hand, this filter is faster.
This filter requires that an inside value and outside value be set as parameters. The inside value is the intensity value of the binary image which corresponds to objects, and the outside value is the intensity of the background. (A typical binary image often repesents objects as black (0) and background as white (usually 255), or vice-versa.) Note that this filter is slightly faster if the inside value is less than the outside value. Otherwise an extra iteration through the image is required.
This filter uses the FastChamferDistanceImageFilterand the IsoContourDistanceImageFilterinernally to perform the distance calculations.
see  DanielssonDistanceMapImageFilter, SignedDanielssonDistanceMapImageFilter
see 
see  FastChamferDistanceImageFilter, IsoContourDistanceImageFilter
author Zach Pincus
par Wiki Examples:

li All Examples

li Compute a distance map from objects in a binary image

*/"
%javamethodmodifiers itk::simple::ApproximateSignedDistanceMapImageFilter::execute() "
/**Create a map of the approximate signed distance from the boundaries of a binary image.

*/"
%javamethodmodifiers itk::simple::ApproximateSignedDistanceMap "/**
Create a map of the approximate signed distance from the boundaries of a binary image.

The ApproximateSignedDistanceMapImageFiltertakes as input a binary image and produces a signed distance map. Each pixel value in the output contains the approximate distance from that pixel to the nearest object in the binary image. This filter differs from the DanielssonDistanceMapImageFilterin that it calculates the distance to the object edge for pixels within the object.
Negative values in the output indicate that the pixel at that position is within an object in the input image. The absolute value of a negative pixel represents the approximate distance to the nearest object boundary pixel.
WARNING: This filter requires that the output type be floating-point. Otherwise internal calculations will not be performed to the appropriate precision, resulting in completely incorrect (read: zero-valued) output.
The distances computed by this filter are Chamfer distances, which are only an approximation to Euclidian distances, and are not as exact approximations as those calculated by the DanielssonDistanceMapImageFilter. On the other hand, this filter is faster.
This filter requires that an inside value and outside value be set as parameters. The inside value is the intensity value of the binary image which corresponds to objects, and the outside value is the intensity of the background. (A typical binary image often repesents objects as black (0) and background as white (usually 255), or vice-versa.) Note that this filter is slightly faster if the inside value is less than the outside value. Otherwise an extra iteration through the image is required.
This filter uses the FastChamferDistanceImageFilterand the IsoContourDistanceImageFilterinernally to perform the distance calculations.
see  DanielssonDistanceMapImageFilter, SignedDanielssonDistanceMapImageFilter
see 
see  FastChamferDistanceImageFilter, IsoContourDistanceImageFilter
author Zach Pincus
par Wiki Examples:

li All Examples

li Compute a distance map from objects in a binary image

*/"
%javamethodmodifiers itk::simple::ApproximateSignedDistanceMapImageFilter::setInsideValue "/**
virtual void itk::ApproximateSignedDistanceMapImageFilter::SetInsideValue(InputPixelType _arg)

Set/Get intensity value representing the interior of objects in the mask
*/"

%javamethodmodifiers itk::simple::ApproximateSignedDistanceMapImageFilter::getInsideValue "/**
virtual InputPixelType itk::ApproximateSignedDistanceMapImageFilter::GetInsideValue() const

Set/Get intensity value representing the interior of objects in the mask
*/"

%javamethodmodifiers itk::simple::ApproximateSignedDistanceMapImageFilter::setOutsideValue "/**
virtual void itk::ApproximateSignedDistanceMapImageFilter::SetOutsideValue(InputPixelType _arg)

Set/Get intensity value representing non-objects in the mask
*/"

%javamethodmodifiers itk::simple::ApproximateSignedDistanceMapImageFilter::getOutsideValue "/**
virtual InputPixelType itk::ApproximateSignedDistanceMapImageFilter::GetOutsideValue() const

Set/Get intensity value representing non-objects in the mask
*/"

// Generated for ClassName from /scratch/blowekamp/build/ITK-gerrit/Utilities/Doxygen/xml/classitk_1_1AsinImageFilter.xml
%typemap(javaimports) itk::simple::AsinImageFilter "/** Computes the sine of each pixel.

This filter is templated over the pixel type of the input image and the pixel type of the output image.
The filter walks over all the pixels in the input image, and for each pixel does the following:

li cast the pixel value to double ,
li apply the vcl_asin() function to the double value,
li cast the double value resulting from vcl_asin() to the pixel type of the output image,
li store the casted value into the output image.
The filter expects both images to have the same dimension (e.g. both 2D, or both 3D, or both ND)
*/"
%javamethodmodifiers itk::simple::AsinImageFilter::execute() "
/**Computes the sine of each pixel.

*/"
%javamethodmodifiers itk::simple::Asin "/**
Computes the sine of each pixel.

This filter is templated over the pixel type of the input image and the pixel type of the output image.
The filter walks over all the pixels in the input image, and for each pixel does the following:

li cast the pixel value to double ,
li apply the vcl_asin() function to the double value,
li cast the double value resulting from vcl_asin() to the pixel type of the output image,
li store the casted value into the output image.
The filter expects both images to have the same dimension (e.g. both 2D, or both 3D, or both ND)
*/"
// Generated for ClassName from /scratch/blowekamp/build/ITK-gerrit/Utilities/Doxygen/xml/classitk_1_1AtanImageFilter.xml
%typemap(javaimports) itk::simple::AtanImageFilter "/** Computes the one-argument inverse tangent of each pixel.

This filter is templated over the pixel type of the input image and the pixel type of the output image.
The filter walks over all the pixels in the input image, and for each pixel does the following:

li cast the pixel value to double ,
li apply the vcl_atan() function to the double value,
li cast the double value resulting from vcl_atan() to the pixel type of the output image,
li store the cast value into the output image.

*/"
%javamethodmodifiers itk::simple::AtanImageFilter::execute() "
/**Computes the one-argument inverse tangent of each pixel.

*/"
%javamethodmodifiers itk::simple::Atan "/**
Computes the one-argument inverse tangent of each pixel.

This filter is templated over the pixel type of the input image and the pixel type of the output image.
The filter walks over all the pixels in the input image, and for each pixel does the following:

li cast the pixel value to double ,
li apply the vcl_atan() function to the double value,
li cast the double value resulting from vcl_atan() to the pixel type of the output image,
li store the cast value into the output image.

*/"
// Generated for ClassName from /scratch/blowekamp/build/ITK-gerrit/Utilities/Doxygen/xml/classitk_1_1Atan2ImageFilter.xml
%typemap(javaimports) itk::simple::Atan2ImageFilter "/** Computes two argument inverse tangent.

The first argument to the atan function is provided by a pixel in the first input image ( SetInput1()) and the corresponding pixel in the second input image ( SetInput2()) is used as the second argument.
This class is templated over the types of the two input images and the type of the output image. Numeric conversions (castings) are done by the C++ defaults.
Both pixel input types are cast to double in order to be used as parameters of vcl_atan2() . The resulting double value is cast to the output pixel type.
par Wiki Examples:

li All Examples

li Compute the arctangent of each pixel.

*/"
%javamethodmodifiers itk::simple::Atan2ImageFilter::execute() "
/**Computes two argument inverse tangent.

*/"
%javamethodmodifiers itk::simple::Atan2 "/**
Computes two argument inverse tangent.

The first argument to the atan function is provided by a pixel in the first input image ( SetInput1()) and the corresponding pixel in the second input image ( SetInput2()) is used as the second argument.
This class is templated over the types of the two input images and the type of the output image. Numeric conversions (castings) are done by the C++ defaults.
Both pixel input types are cast to double in order to be used as parameters of vcl_atan2() . The resulting double value is cast to the output pixel type.
par Wiki Examples:

li All Examples

li Compute the arctangent of each pixel.

*/"
// Generated for ClassName from /scratch/blowekamp/build/ITK-gerrit/Utilities/Doxygen/xml/classitk_1_1BilateralImageFilter.xml
%typemap(javaimports) itk::simple::BilateralImageFilter "/** Blurs an image while preserving edges.

This filter uses bilateral filtering to blur an image using both domain and range neighborhoods. Pixels that are close to a pixel in the image domain and similar to a pixel in the image range are used to calculate the filtered value. Two gaussian kernels (one in the image domain and one in the image range) are used to smooth the image. The result is an image that is smoothed in homogeneous regions yet has edges preserved. The result is similar to anisotropic diffusion but the implementation in non-iterative. Another benefit to bilateral filtering is that any distance metric can be used for kernel smoothing the image range. Hence, color images can be smoothed as vector images, using the CIE distances between intensity values as the similarity metric (the Gaussian kernel for the image domain is evaluated using CIE distances). A separate version of this filter will be designed for color and vector images.
Bilateral filtering is capable of reducing the noise in an image by an order of magnitude while maintaining edges.
The bilateral operator used here was described by Tomasi and Manduchi (Bilateral Filtering for Gray and ColorImages. IEEE ICCV. 1998.)
see  GaussianOperator
see 
see  RecursiveGaussianImageFilter
see 
see  DiscreteGaussianImageFilter
see 
see  AnisotropicDiffusionImageFilter
see 
see  Image
see 
see  Neighborhood
see 
see  NeighborhoodOperator
TodoSupport color images
Support vector images
par Wiki Examples:

li All Examples

li Bilateral filter an image

*/"
%javamethodmodifiers itk::simple::BilateralImageFilter::execute() "
/**Blurs an image while preserving edges.

*/"
%javamethodmodifiers itk::simple::Bilateral "/**
Blurs an image while preserving edges.

This filter uses bilateral filtering to blur an image using both domain and range neighborhoods. Pixels that are close to a pixel in the image domain and similar to a pixel in the image range are used to calculate the filtered value. Two gaussian kernels (one in the image domain and one in the image range) are used to smooth the image. The result is an image that is smoothed in homogeneous regions yet has edges preserved. The result is similar to anisotropic diffusion but the implementation in non-iterative. Another benefit to bilateral filtering is that any distance metric can be used for kernel smoothing the image range. Hence, color images can be smoothed as vector images, using the CIE distances between intensity values as the similarity metric (the Gaussian kernel for the image domain is evaluated using CIE distances). A separate version of this filter will be designed for color and vector images.
Bilateral filtering is capable of reducing the noise in an image by an order of magnitude while maintaining edges.
The bilateral operator used here was described by Tomasi and Manduchi (Bilateral Filtering for Gray and ColorImages. IEEE ICCV. 1998.)
see  GaussianOperator
see 
see  RecursiveGaussianImageFilter
see 
see  DiscreteGaussianImageFilter
see 
see  AnisotropicDiffusionImageFilter
see 
see  Image
see 
see  Neighborhood
see 
see  NeighborhoodOperator
TodoSupport color images
Support vector images
par Wiki Examples:

li All Examples

li Bilateral filter an image

*/"
%javamethodmodifiers itk::simple::BilateralImageFilter::setDomainSigma "/**
void itk::BilateralImageFilter::SetDomainSigma(const double v)

Convenience get/set methods for setting all domain parameters to the same values.
*/"

%javamethodmodifiers itk::simple::BilateralImageFilter::getDomainSigma "/**
virtual const ArrayType itk::BilateralImageFilter::GetDomainSigma() const

Standard get/set macros for filter parameters. DomainSigma is specified in the same units as the Imagespacing. RangeSigma is specified in the units of intensity.
*/"

%javamethodmodifiers itk::simple::BilateralImageFilter::setRangeSigma "/**
virtual void itk::BilateralImageFilter::SetRangeSigma(double _arg)

Standard get/set macros for filter parameters. DomainSigma is specified in the same units as the Imagespacing. RangeSigma is specified in the units of intensity.
*/"

%javamethodmodifiers itk::simple::BilateralImageFilter::getRangeSigma "/**
virtual double itk::BilateralImageFilter::GetRangeSigma() const

Standard get/set macros for filter parameters. DomainSigma is specified in the same units as the Imagespacing. RangeSigma is specified in the units of intensity.
*/"

%javamethodmodifiers itk::simple::BilateralImageFilter::setNumberOfRangeGaussianSamples "/**
virtual void itk::BilateralImageFilter::SetNumberOfRangeGaussianSamples(unsigned long _arg)

Set/Get the number of samples in the approximation to the Gaussian used for the range smoothing. Samples are only generated in the range of [0, 4*m_RangeSigma]. Default is 100.
*/"

%javamethodmodifiers itk::simple::BilateralImageFilter::getNumberOfRangeGaussianSamples "/**
virtual unsigned long itk::BilateralImageFilter::GetNumberOfRangeGaussianSamples() const

Set/Get the number of samples in the approximation to the Gaussian used for the range smoothing. Samples are only generated in the range of [0, 4*m_RangeSigma]. Default is 100.
*/"

// Generated for ClassName from /scratch/blowekamp/build/ITK-gerrit/Utilities/Doxygen/xml/classitk_1_1BinaryClosingByReconstructionImageFilter.xml
%typemap(javaimports) itk::simple::BinaryClosingByReconstructionImageFilter "/** binary closing by reconstruction of an image.

This filter removes small (i.e., smaller than the structuring element) holes in the image. It is defined as: Closing(f) = ReconstructionByErosion(Dilation(f)).
The structuring element is assumed to be composed of binary values (zero or one). Only elements of the structuring element having values > 0 are candidates for affecting the center pixel.
author Gaetan Lehmann. Biologie du Developpement et de la Reproduction, INRA de Jouy-en-Josas, France.
This implementation was taken from the Insight Journal paper:http://hdl.handle.net/1926/584orhttp://www.insight-journal.org/browse/publication/176
see  MorphologyImageFilter, ClosingByReconstructionImageFilter, BinaryOpeningByReconstructionImageFilter

*/"
%javamethodmodifiers itk::simple::BinaryClosingByReconstructionImageFilter::execute() "
/**binary closing by reconstruction of an image.

*/"
%javamethodmodifiers itk::simple::BinaryClosingByReconstruction "/**
binary closing by reconstruction of an image.

This filter removes small (i.e., smaller than the structuring element) holes in the image. It is defined as: Closing(f) = ReconstructionByErosion(Dilation(f)).
The structuring element is assumed to be composed of binary values (zero or one). Only elements of the structuring element having values > 0 are candidates for affecting the center pixel.
author Gaetan Lehmann. Biologie du Developpement et de la Reproduction, INRA de Jouy-en-Josas, France.
This implementation was taken from the Insight Journal paper:http://hdl.handle.net/1926/584orhttp://www.insight-journal.org/browse/publication/176
see  MorphologyImageFilter, ClosingByReconstructionImageFilter, BinaryOpeningByReconstructionImageFilter

*/"
%javamethodmodifiers itk::simple::BinaryClosingByReconstructionImageFilter::setForegroundValue "/**
virtual void itk::BinaryClosingByReconstructionImageFilter::SetForegroundValue(InputPixelType _arg)

Set the value in the image to consider as foreground. Defaults to maximum value of InputPixelType.
*/"

%javamethodmodifiers itk::simple::BinaryClosingByReconstructionImageFilter::getForegroundValue "/**
virtual InputPixelType itk::BinaryClosingByReconstructionImageFilter::GetForegroundValue()

Get the value in the image considered as foreground. Defaults to maximum value of InputPixelType.
*/"

%javamethodmodifiers itk::simple::BinaryClosingByReconstructionImageFilter::setFullyConnected "/**
virtual void itk::BinaryClosingByReconstructionImageFilter::SetFullyConnected(bool _arg)

Set/Get whether the connected components are defined strictly by face connectivity or by face+edge+vertex connectivity. Default is FullyConnectedOff. For objects that are 1 pixel wide, use FullyConnectedOn.
*/"

%javamethodmodifiers itk::simple::BinaryClosingByReconstructionImageFilter::getFullyConnected "/**
virtual const bool& itk::BinaryClosingByReconstructionImageFilter::GetFullyConnected()

Set/Get whether the connected components are defined strictly by face connectivity or by face+edge+vertex connectivity. Default is FullyConnectedOff. For objects that are 1 pixel wide, use FullyConnectedOn.
*/"

// Generated for ClassName from /scratch/blowekamp/build/ITK-gerrit/Utilities/Doxygen/xml/classitk_1_1BinaryContourImageFilter.xml
%typemap(javaimports) itk::simple::BinaryContourImageFilter "/** Labels the pixels on the border of the objects in a binary image.

 BinaryContourImageFiltertakes a binary image as input, where the pixels in the objects are the pixels with a value equal to ForegroundValue. Only the pixels on the contours of the objects are kept. The pixels not on the border are changed to BackgroundValue.
The connectivity can be changed to minimum or maximum connectivity with SetFullyConnected(). Full connectivity produces thicker contours.
http://hdl.handle.net/1926/1352
author Gaetan Lehmann. Biologie du Developpement et de la Reproduction, INRA de Jouy-en-Josas, France.
see  LabelContourImageFilter BinaryErodeImageFilter SimpleContourExtractorImageFilter
par Wiki Examples:

li All Examples

li Extract the boundaries of connected regions in a binary image

li Extract the inner and outer boundaries of blobs in a binary image

*/"
%javamethodmodifiers itk::simple::BinaryContourImageFilter::execute() "
/**Labels the pixels on the border of the objects in a binary image.

*/"
%javamethodmodifiers itk::simple::BinaryContour "/**
Labels the pixels on the border of the objects in a binary image.

 BinaryContourImageFiltertakes a binary image as input, where the pixels in the objects are the pixels with a value equal to ForegroundValue. Only the pixels on the contours of the objects are kept. The pixels not on the border are changed to BackgroundValue.
The connectivity can be changed to minimum or maximum connectivity with SetFullyConnected(). Full connectivity produces thicker contours.
http://hdl.handle.net/1926/1352
author Gaetan Lehmann. Biologie du Developpement et de la Reproduction, INRA de Jouy-en-Josas, France.
see  LabelContourImageFilter BinaryErodeImageFilter SimpleContourExtractorImageFilter
par Wiki Examples:

li All Examples

li Extract the boundaries of connected regions in a binary image

li Extract the inner and outer boundaries of blobs in a binary image

*/"
%javamethodmodifiers itk::simple::BinaryContourImageFilter::setFullyConnected "/**
virtual void itk::BinaryContourImageFilter::SetFullyConnected(bool _arg)

Set/Get whether the connected components are defined strictly by face connectivity or by face+edge+vertex connectivity. Default is FullyConnectedOff. For objects that are 1 pixel wide, use FullyConnectedOn.
*/"

%javamethodmodifiers itk::simple::BinaryContourImageFilter::getFullyConnected "/**
virtual const bool& itk::BinaryContourImageFilter::GetFullyConnected()

Set/Get whether the connected components are defined strictly by face connectivity or by face+edge+vertex connectivity. Default is FullyConnectedOff. For objects that are 1 pixel wide, use FullyConnectedOn.
*/"

%javamethodmodifiers itk::simple::BinaryContourImageFilter::setBackgroundValue "/**
virtual void itk::BinaryContourImageFilter::SetBackgroundValue(OutputImagePixelType _arg)

Set/Get the background value used to mark the pixels not on the border of the objects.
*/"

%javamethodmodifiers itk::simple::BinaryContourImageFilter::getBackgroundValue "/**
virtual OutputImagePixelType itk::BinaryContourImageFilter::GetBackgroundValue() const

Set/Get the background value used to mark the pixels not on the border of the objects.
*/"

%javamethodmodifiers itk::simple::BinaryContourImageFilter::setForegroundValue "/**
virtual void itk::BinaryContourImageFilter::SetForegroundValue(InputImagePixelType _arg)

Set/Get the foreground value used to identify the objects in the input and output images.
*/"

%javamethodmodifiers itk::simple::BinaryContourImageFilter::getForegroundValue "/**
virtual InputImagePixelType itk::BinaryContourImageFilter::GetForegroundValue() const

Set/Get the foreground value used to identify the objects in the input and output images.
*/"

// Generated for ClassName from /scratch/blowekamp/build/ITK-gerrit/Utilities/Doxygen/xml/classitk_1_1BinaryDilateImageFilter.xml
%typemap(javaimports) itk::simple::BinaryDilateImageFilter "/** Fast binary dilation.

 BinaryDilateImageFilteris a binary dilation morphologic operation. This implementation is based on the papers:
L.Vincent Morphological transformations of binary images with
 arbitrary structuring elements, and
N.Nikopoulos et al. An efficient algorithm for 3d binary morphological transformations with 3d structuring elements for arbitrary size and shape. IEEE Transactions on ImageProcessing. Vol. 9. No. 3. 2000. pp. 283-286.
Gray scale images can be processed as binary images by selecting a DilateValue. Pixel values matching the dilate value are considered the foreground and all other pixels are background. This is useful in processing segmented images where all pixels in segment #1 have value 1 and pixels in segment #2 have value 2, etc. A particular segment number can be processed. DilateValue defaults to the maximum possible value of the PixelType.
The structuring element is assumed to be composed of binary values (zero or one). Only elements of the structuring element having values > 0 are candidates for affecting the center pixel. A reasonable choice of structuring element is itk::BinaryBallStructuringElement.
see  ImageToImageFilter BinaryErodeImageFilter BinaryMorphologyImageFilter
par Wiki Examples:

li All Examples

li Dilate a binary image

*/"
%javamethodmodifiers itk::simple::BinaryDilateImageFilter::execute() "
/**Fast binary dilation.

*/"
%javamethodmodifiers itk::simple::BinaryDilate "/**
Fast binary dilation.

 BinaryDilateImageFilteris a binary dilation morphologic operation. This implementation is based on the papers:
L.Vincent Morphological transformations of binary images with
 arbitrary structuring elements, and
N.Nikopoulos et al. An efficient algorithm for 3d binary morphological transformations with 3d structuring elements for arbitrary size and shape. IEEE Transactions on ImageProcessing. Vol. 9. No. 3. 2000. pp. 283-286.
Gray scale images can be processed as binary images by selecting a DilateValue. Pixel values matching the dilate value are considered the foreground and all other pixels are background. This is useful in processing segmented images where all pixels in segment #1 have value 1 and pixels in segment #2 have value 2, etc. A particular segment number can be processed. DilateValue defaults to the maximum possible value of the PixelType.
The structuring element is assumed to be composed of binary values (zero or one). Only elements of the structuring element having values > 0 are candidates for affecting the center pixel. A reasonable choice of structuring element is itk::BinaryBallStructuringElement.
see  ImageToImageFilter BinaryErodeImageFilter BinaryMorphologyImageFilter
par Wiki Examples:

li All Examples

li Dilate a binary image

*/"
// Generated for ClassName from /scratch/blowekamp/build/ITK-gerrit/Utilities/Doxygen/xml/classitk_1_1BinaryErodeImageFilter.xml
%typemap(javaimports) itk::simple::BinaryErodeImageFilter "/** Fast binary erosion.

 BinaryErodeImageFilteris a binary erosion morphologic operation. This implementation is based on the papers:
L.Vincent Morphological transformations of binary images with
 arbitrary structuring elements, and
N.Nikopoulos et al. An efficient algorithm for 3d binary morphological transformations with 3d structuring elements for arbitrary size and shape. IEEE Transactions on ImageProcessing. Vol. 9. No. 3. 2000. pp. 283-286.
Gray scale images can be processed as binary images by selecting a ErodeValue. Pixel values matching the erode value are considered the foreground and all other pixels are background. This is useful in processing segmented images where all pixels in segment #1 have value 1 and pixels in segment #2 have value 2, etc. A particular segment number can be processed. ErodeValue defaults to the maximum possible value of the PixelType. The eroded pixels will receive the BackgroundValue (defaults to 0).
The structuring element is assumed to be composed of binary values (zero or one). Only elements of the structuring element having values > 0 are candidates for affecting the center pixel. A reasonable choice of structuring element is itk::BinaryBallStructuringElement.
see  ImageToImageFilter BinaryDilateImageFilter BinaryMorphologyImageFilter
par Wiki Examples:

li All Examples

li Erode a binary image

*/"
%javamethodmodifiers itk::simple::BinaryErodeImageFilter::execute() "
/**Fast binary erosion.

*/"
%javamethodmodifiers itk::simple::BinaryErode "/**
Fast binary erosion.

 BinaryErodeImageFilteris a binary erosion morphologic operation. This implementation is based on the papers:
L.Vincent Morphological transformations of binary images with
 arbitrary structuring elements, and
N.Nikopoulos et al. An efficient algorithm for 3d binary morphological transformations with 3d structuring elements for arbitrary size and shape. IEEE Transactions on ImageProcessing. Vol. 9. No. 3. 2000. pp. 283-286.
Gray scale images can be processed as binary images by selecting a ErodeValue. Pixel values matching the erode value are considered the foreground and all other pixels are background. This is useful in processing segmented images where all pixels in segment #1 have value 1 and pixels in segment #2 have value 2, etc. A particular segment number can be processed. ErodeValue defaults to the maximum possible value of the PixelType. The eroded pixels will receive the BackgroundValue (defaults to 0).
The structuring element is assumed to be composed of binary values (zero or one). Only elements of the structuring element having values > 0 are candidates for affecting the center pixel. A reasonable choice of structuring element is itk::BinaryBallStructuringElement.
see  ImageToImageFilter BinaryDilateImageFilter BinaryMorphologyImageFilter
par Wiki Examples:

li All Examples

li Erode a binary image

*/"
// Generated for ClassName from /scratch/blowekamp/build/ITK-gerrit/Utilities/Doxygen/xml/classitk_1_1BinaryFillholeImageFilter.xml
%typemap(javaimports) itk::simple::BinaryFillholeImageFilter "/** Remove holes not connected to the boundary of the image.

 BinaryFillholeImageFilterfills holes in a binary image.
Geodesic morphology and the Fillhole algorithm is described in Chapter 6 of Pierre Soille's book Morphological Image Analysis:
 Principles and Applications, Second Edition, Springer, 2003.
author Gaetan Lehmann. Biologie du Developpement et de la Reproduction, INRA de Jouy-en-Josas, France.
This implementation was taken from the Insight Journal paper:http://hdl.handle.net/1926/584orhttp://www.insight-journal.org/browse/publication/176
see  GrayscaleFillholeImageFilter

*/"
%javamethodmodifiers itk::simple::BinaryFillholeImageFilter::execute() "
/**Remove holes not connected to the boundary of the image.

*/"
%javamethodmodifiers itk::simple::BinaryFillhole "/**
Remove holes not connected to the boundary of the image.

 BinaryFillholeImageFilterfills holes in a binary image.
Geodesic morphology and the Fillhole algorithm is described in Chapter 6 of Pierre Soille's book Morphological Image Analysis:
 Principles and Applications, Second Edition, Springer, 2003.
author Gaetan Lehmann. Biologie du Developpement et de la Reproduction, INRA de Jouy-en-Josas, France.
This implementation was taken from the Insight Journal paper:http://hdl.handle.net/1926/584orhttp://www.insight-journal.org/browse/publication/176
see  GrayscaleFillholeImageFilter

*/"
%javamethodmodifiers itk::simple::BinaryFillholeImageFilter::setFullyConnected "/**
virtual void itk::BinaryFillholeImageFilter::SetFullyConnected(bool _arg)

Set/Get whether the connected components are defined strictly by face connectivity or by face+edge+vertex connectivity. Default is FullyConnectedOff. For objects that are 1 pixel wide, use FullyConnectedOn.
*/"

%javamethodmodifiers itk::simple::BinaryFillholeImageFilter::getFullyConnected "/**
virtual const bool& itk::BinaryFillholeImageFilter::GetFullyConnected()

Set/Get whether the connected components are defined strictly by face connectivity or by face+edge+vertex connectivity. Default is FullyConnectedOff. For objects that are 1 pixel wide, use FullyConnectedOn.
*/"

%javamethodmodifiers itk::simple::BinaryFillholeImageFilter::setForegroundValue "/**
virtual void itk::BinaryFillholeImageFilter::SetForegroundValue(InputImagePixelType _arg)

End concept checking Set the value in the image to consider as foreground. Defaults to maximum value of InputPixelType.
*/"

%javamethodmodifiers itk::simple::BinaryFillholeImageFilter::getForegroundValue "/**
virtual InputImagePixelType itk::BinaryFillholeImageFilter::GetForegroundValue()

Get the value in the image considered as foreground. Defaults to maximum value of InputPixelType.
*/"

// Generated for ClassName from /scratch/blowekamp/build/ITK-gerrit/Utilities/Doxygen/xml/classitk_1_1BinaryGrindPeakImageFilter.xml
%typemap(javaimports) itk::simple::BinaryGrindPeakImageFilter "/** Remove the objects not connected to the boundary of the image.

 BinaryGrindPeakImageFilterginds peaks in a grayscale image.
Geodesic morphology and the grind peak algorithm is described in Chapter 6 of Pierre Soille's book Morphological Image Analysis:
 Principles and Applications, Second Edition, Springer, 2003.
author Gaetan Lehmann. Biologie du Developpement et de la Reproduction, INRA de Jouy-en-Josas, France.
This implementation was taken from the Insight Journal paper:http://hdl.handle.net/1926/584orhttp://www.insight-journal.org/browse/publication/176
see  GrayscaleGrindPeakImageFilter

*/"
%javamethodmodifiers itk::simple::BinaryGrindPeakImageFilter::execute() "
/**Remove the objects not connected to the boundary of the image.

*/"
%javamethodmodifiers itk::simple::BinaryGrindPeak "/**
Remove the objects not connected to the boundary of the image.

 BinaryGrindPeakImageFilterginds peaks in a grayscale image.
Geodesic morphology and the grind peak algorithm is described in Chapter 6 of Pierre Soille's book Morphological Image Analysis:
 Principles and Applications, Second Edition, Springer, 2003.
author Gaetan Lehmann. Biologie du Developpement et de la Reproduction, INRA de Jouy-en-Josas, France.
This implementation was taken from the Insight Journal paper:http://hdl.handle.net/1926/584orhttp://www.insight-journal.org/browse/publication/176
see  GrayscaleGrindPeakImageFilter

*/"
%javamethodmodifiers itk::simple::BinaryGrindPeakImageFilter::setFullyConnected "/**
virtual void itk::BinaryGrindPeakImageFilter::SetFullyConnected(bool _arg)

Set/Get whether the connected components are defined strictly by face connectivity or by face+edge+vertex connectivity. Default is FullyConnectedOff. For objects that are 1 pixel wide, use FullyConnectedOn.
*/"

%javamethodmodifiers itk::simple::BinaryGrindPeakImageFilter::getFullyConnected "/**
virtual const bool& itk::BinaryGrindPeakImageFilter::GetFullyConnected()

Set/Get whether the connected components are defined strictly by face connectivity or by face+edge+vertex connectivity. Default is FullyConnectedOff. For objects that are 1 pixel wide, use FullyConnectedOn.
*/"

%javamethodmodifiers itk::simple::BinaryGrindPeakImageFilter::setForegroundValue "/**
virtual void itk::BinaryGrindPeakImageFilter::SetForegroundValue(InputImagePixelType _arg)

End concept checking Set the value in the image to consider as foreground. Defaults to maximum value of InputPixelType.
*/"

%javamethodmodifiers itk::simple::BinaryGrindPeakImageFilter::getForegroundValue "/**
virtual InputImagePixelType itk::BinaryGrindPeakImageFilter::GetForegroundValue()

Get the value in the image considered as foreground. Defaults to maximum value of InputPixelType.
*/"

%javamethodmodifiers itk::simple::BinaryGrindPeakImageFilter::setBackgroundValue "/**
virtual void itk::BinaryGrindPeakImageFilter::SetBackgroundValue(InputImagePixelType _arg)

Set the value in eroded part of the image. Defaults to zero
*/"

%javamethodmodifiers itk::simple::BinaryGrindPeakImageFilter::getBackgroundValue "/**
virtual InputImagePixelType itk::BinaryGrindPeakImageFilter::GetBackgroundValue()

Set the value in eroded part of the image. Defaults to zero
*/"

// Generated for ClassName from /scratch/blowekamp/build/ITK-gerrit/Utilities/Doxygen/xml/classitk_1_1BinaryMagnitudeImageFilter.xml
%typemap(javaimports) itk::simple::BinaryMagnitudeImageFilter "/** Computes the square root of the sum of squares of corresponding input pixels.

This filter is templated over the types of the two input images and the type of the output image.
Numeric conversions (castings) are done by the C++ defaults.
The filter walks over all of the pixels in the two input images, and for each pixel does the following:

li cast the input 1 pixel value to double 
li cast the input 2 pixel value to double 
li compute the sum of squares of the two pixel values
li compute the square root of the sum
li cast the double value resulting from vcl_sqrt() to the pixel type of the output image
li store the cast value into the output image.
The filter expects all images to have the same dimension (e.g. all 2D, or all 3D, or all ND)
*/"
%javamethodmodifiers itk::simple::BinaryMagnitudeImageFilter::execute() "
/**Computes the square root of the sum of squares of corresponding input pixels.

*/"
%javamethodmodifiers itk::simple::BinaryMagnitude "/**
Computes the square root of the sum of squares of corresponding input pixels.

This filter is templated over the types of the two input images and the type of the output image.
Numeric conversions (castings) are done by the C++ defaults.
The filter walks over all of the pixels in the two input images, and for each pixel does the following:

li cast the input 1 pixel value to double 
li cast the input 2 pixel value to double 
li compute the sum of squares of the two pixel values
li compute the square root of the sum
li cast the double value resulting from vcl_sqrt() to the pixel type of the output image
li store the cast value into the output image.
The filter expects all images to have the same dimension (e.g. all 2D, or all 3D, or all ND)
*/"
// Generated for ClassName from /scratch/blowekamp/build/ITK-gerrit/Utilities/Doxygen/xml/classitk_1_1BinaryMedianImageFilter.xml
%typemap(javaimports) itk::simple::BinaryMedianImageFilter "/** Applies a version of the median filter optimized for binary images.

This filter was contributed by Bjorn Hanch Sollie after identifying that the generic Median filter performed unnecessary operations when the input image is binary.
This filter computes an image where a given pixel is the median value of the pixels in a neighborhood about the corresponding input pixel. For the case of binary images the median can be obtained by simply counting the neighbors that are foreground.
A median filter is one of the family of nonlinear filters. It is used to smooth an image without being biased by outliers or shot noise.
see  Image
see 
see  Neighborhood
see 
see  NeighborhoodOperator
see 
see  NeighborhoodIterator

*/"
%javamethodmodifiers itk::simple::BinaryMedianImageFilter::execute() "
/**Applies a version of the median filter optimized for binary images.

*/"
%javamethodmodifiers itk::simple::BinaryMedian "/**
Applies a version of the median filter optimized for binary images.

This filter was contributed by Bjorn Hanch Sollie after identifying that the generic Median filter performed unnecessary operations when the input image is binary.
This filter computes an image where a given pixel is the median value of the pixels in a neighborhood about the corresponding input pixel. For the case of binary images the median can be obtained by simply counting the neighbors that are foreground.
A median filter is one of the family of nonlinear filters. It is used to smooth an image without being biased by outliers or shot noise.
see  Image
see 
see  Neighborhood
see 
see  NeighborhoodOperator
see 
see  NeighborhoodIterator

*/"
%javamethodmodifiers itk::simple::BinaryMedianImageFilter::setRadius "/**
virtual void itk::BinaryMedianImageFilter::SetRadius(InputSizeType _arg)

Set the radius of the neighborhood used to compute the median.
*/"

%javamethodmodifiers itk::simple::BinaryMedianImageFilter::getRadius "/**
virtual const InputSizeType& itk::BinaryMedianImageFilter::GetRadius()

Get the radius of the neighborhood used to compute the median
*/"

%javamethodmodifiers itk::simple::BinaryMedianImageFilter::setForegroundValue "/**
virtual void itk::BinaryMedianImageFilter::SetForegroundValue(InputPixelType _arg)

Set the value associated with the Foreground (or the object) on the binary input image and the Background .
*/"

%javamethodmodifiers itk::simple::BinaryMedianImageFilter::getForegroundValue "/**
virtual const InputPixelType& itk::BinaryMedianImageFilter::GetForegroundValue()

Get the value associated with the Foreground (or the object) on the binary input image and the Background .
*/"

%javamethodmodifiers itk::simple::BinaryMedianImageFilter::setBackgroundValue "/**
virtual void itk::BinaryMedianImageFilter::SetBackgroundValue(InputPixelType _arg)

Set the value associated with the Foreground (or the object) on the binary input image and the Background .
*/"

%javamethodmodifiers itk::simple::BinaryMedianImageFilter::getBackgroundValue "/**
virtual const InputPixelType& itk::BinaryMedianImageFilter::GetBackgroundValue()

Get the value associated with the Foreground (or the object) on the binary input image and the Background .
*/"

// Generated for ClassName from /scratch/blowekamp/build/ITK-gerrit/Utilities/Doxygen/xml/classitk_1_1BinaryMinMaxCurvatureFlowImageFilter.xml
%typemap(javaimports) itk::simple::BinaryMinMaxCurvatureFlowImageFilter "/** Denoise a binary image using min/max curvature flow.

 BinaryMinMaxCurvatureFlowImageFilterimplements a curvature driven image denosing algorithm. This filter assumes that the image is essentially binary: consisting of two classes. Iso-brightness contours in the input image are viewed as a level set. The level set is then evolved using a curvature-based speed function:
 f[ I_t = F_{mbox{minmax}} |nabla I| f]  
wheref$ F_{mbox{minmax}} = min(kappa,0) f$ iff$ mbox{Avg}_{mbox{stencil}}(x) f$ is less than or equal tof$ T_{thresold} f$ andf$ max(kappa,0) f$ , otherwise.f$ kappa f$ is the mean curvature of the iso-brightness contour at pointf$ x f$ .
In min/max curvature flow, movement is turned on or off depending on the scale of the noise one wants to remove. Switching depends on the average image value of a region of radiusf$ R f$ around each point. The choice off$ R f$ , the stencil radius, governs the scale of the noise to be removed.
The threshold valuef$ T_{threshold} f$ is a user specified value which discriminates between the two pixel classes.
This filter make use of the multi-threaded finite difference solver hierarchy. Updates are computed using a BinaryMinMaxCurvatureFlowFunctionobject. A zero flux Neumann boundary condition is used when computing derivatives near the data boundary.
warning This filter assumes that the input and output types have the same dimensions. This filter also requires that the output image pixels are of a real type. This filter works for any dimensional images.
Reference: Level Set Methods and Fast Marching Methods, J.A. Sethian, Cambridge Press, Chapter 16, Second edition, 1999.
see  BinaryMinMaxCurvatureFlowFunction
see 
see  CurvatureFlowImageFilter
see 
see  MinMaxCurvatureFlowImageFilter

*/"
%javamethodmodifiers itk::simple::BinaryMinMaxCurvatureFlowImageFilter::execute() "
/**Denoise a binary image using min/max curvature flow.

*/"
%javamethodmodifiers itk::simple::BinaryMinMaxCurvatureFlow "/**
Denoise a binary image using min/max curvature flow.

 BinaryMinMaxCurvatureFlowImageFilterimplements a curvature driven image denosing algorithm. This filter assumes that the image is essentially binary: consisting of two classes. Iso-brightness contours in the input image are viewed as a level set. The level set is then evolved using a curvature-based speed function:
 f[ I_t = F_{mbox{minmax}} |nabla I| f]  
wheref$ F_{mbox{minmax}} = min(kappa,0) f$ iff$ mbox{Avg}_{mbox{stencil}}(x) f$ is less than or equal tof$ T_{thresold} f$ andf$ max(kappa,0) f$ , otherwise.f$ kappa f$ is the mean curvature of the iso-brightness contour at pointf$ x f$ .
In min/max curvature flow, movement is turned on or off depending on the scale of the noise one wants to remove. Switching depends on the average image value of a region of radiusf$ R f$ around each point. The choice off$ R f$ , the stencil radius, governs the scale of the noise to be removed.
The threshold valuef$ T_{threshold} f$ is a user specified value which discriminates between the two pixel classes.
This filter make use of the multi-threaded finite difference solver hierarchy. Updates are computed using a BinaryMinMaxCurvatureFlowFunctionobject. A zero flux Neumann boundary condition is used when computing derivatives near the data boundary.
warning This filter assumes that the input and output types have the same dimensions. This filter also requires that the output image pixels are of a real type. This filter works for any dimensional images.
Reference: Level Set Methods and Fast Marching Methods, J.A. Sethian, Cambridge Press, Chapter 16, Second edition, 1999.
see  BinaryMinMaxCurvatureFlowFunction
see 
see  CurvatureFlowImageFilter
see 
see  MinMaxCurvatureFlowImageFilter

*/"
%javamethodmodifiers itk::simple::BinaryMinMaxCurvatureFlowImageFilter::setThreshold "/**
virtual void itk::BinaryMinMaxCurvatureFlowImageFilter::SetThreshold(double _arg)

Set/Get the threshold value.
*/"

%javamethodmodifiers itk::simple::BinaryMinMaxCurvatureFlowImageFilter::getThreshold "/**
virtual double itk::BinaryMinMaxCurvatureFlowImageFilter::GetThreshold() const

Set/Get the threshold value.
*/"

// Generated for ClassName from /scratch/blowekamp/build/ITK-gerrit/Utilities/Doxygen/xml/classitk_1_1BinaryMorphologicalClosingImageFilter.xml
%typemap(javaimports) itk::simple::BinaryMorphologicalClosingImageFilter "/** binary morphological closing of an image.

This filter removes small (i.e., smaller than the structuring element) holes and tube like structures in the interior or at the boundaries of the image. The morphological closing of an image f is defined as: Closing(f) = Erosion(Dilation(f)).
The structuring element is assumed to be composed of binary values (zero or one). Only elements of the structuring element having values > 0 are candidates for affecting the center pixel.
This code was contributed in the Insight Journal paper: Binary morphological closing and opening image filters by Lehmann G.http://hdl.handle.net/1926/141http://www.insight-journal.org/browse/publication/58
author Gaetan Lehmann. Biologie du Developpement et de la Reproduction, INRA de Jouy-en-Josas, France.
see  MorphologyImageFilter, GrayscaleDilateImageFilter, GrayscaleErodeImageFilter

*/"
%javamethodmodifiers itk::simple::BinaryMorphologicalClosingImageFilter::execute() "
/**binary morphological closing of an image.

*/"
%javamethodmodifiers itk::simple::BinaryMorphologicalClosing "/**
binary morphological closing of an image.

This filter removes small (i.e., smaller than the structuring element) holes and tube like structures in the interior or at the boundaries of the image. The morphological closing of an image f is defined as: Closing(f) = Erosion(Dilation(f)).
The structuring element is assumed to be composed of binary values (zero or one). Only elements of the structuring element having values > 0 are candidates for affecting the center pixel.
This code was contributed in the Insight Journal paper: Binary morphological closing and opening image filters by Lehmann G.http://hdl.handle.net/1926/141http://www.insight-journal.org/browse/publication/58
author Gaetan Lehmann. Biologie du Developpement et de la Reproduction, INRA de Jouy-en-Josas, France.
see  MorphologyImageFilter, GrayscaleDilateImageFilter, GrayscaleErodeImageFilter

*/"
%javamethodmodifiers itk::simple::BinaryMorphologicalClosingImageFilter::setForegroundValue "/**
virtual void itk::BinaryMorphologicalClosingImageFilter::SetForegroundValue(InputPixelType _arg)

Set the value in the image to consider as foreground. Defaults to maximum value of InputPixelType.
*/"

%javamethodmodifiers itk::simple::BinaryMorphologicalClosingImageFilter::getForegroundValue "/**
virtual InputPixelType itk::BinaryMorphologicalClosingImageFilter::GetForegroundValue() const

Get the value in the image considered as foreground. Defaults to maximum value of InputPixelType.
*/"

// Generated for ClassName from /scratch/blowekamp/build/ITK-gerrit/Utilities/Doxygen/xml/classitk_1_1BinaryMorphologicalOpeningImageFilter.xml
%typemap(javaimports) itk::simple::BinaryMorphologicalOpeningImageFilter "/** binary morphological opening of an image.

This filter removes small (i.e., smaller than the structuring element) structures in the interior or at the boundaries of the image. The morphological opening of an image f is defined as: Opening(f) = Dilatation(Erosion(f)).
The structuring element is assumed to be composed of binary values (zero or one). Only elements of the structuring element having values > 0 are candidates for affecting the center pixel.
This code was contributed in the Insight Journal paper: Binary morphological closing and opening image filters by Lehmann G.http://hdl.handle.net/1926/141http://www.insight-journal.org/browse/publication/58
author Gaetan Lehmann. Biologie du Developpement et de la Reproduction, INRA de Jouy-en-Josas, France.
see  MorphologyImageFilter, GrayscaleDilateImageFilter, GrayscaleErodeImageFilter

*/"
%javamethodmodifiers itk::simple::BinaryMorphologicalOpeningImageFilter::execute() "
/**binary morphological opening of an image.

*/"
%javamethodmodifiers itk::simple::BinaryMorphologicalOpening "/**
binary morphological opening of an image.

This filter removes small (i.e., smaller than the structuring element) structures in the interior or at the boundaries of the image. The morphological opening of an image f is defined as: Opening(f) = Dilatation(Erosion(f)).
The structuring element is assumed to be composed of binary values (zero or one). Only elements of the structuring element having values > 0 are candidates for affecting the center pixel.
This code was contributed in the Insight Journal paper: Binary morphological closing and opening image filters by Lehmann G.http://hdl.handle.net/1926/141http://www.insight-journal.org/browse/publication/58
author Gaetan Lehmann. Biologie du Developpement et de la Reproduction, INRA de Jouy-en-Josas, France.
see  MorphologyImageFilter, GrayscaleDilateImageFilter, GrayscaleErodeImageFilter

*/"
%javamethodmodifiers itk::simple::BinaryMorphologicalOpeningImageFilter::setBackgroundValue "/**
virtual void itk::BinaryMorphologicalOpeningImageFilter::SetBackgroundValue(PixelType _arg)

Set the value in eroded part of the image. Defaults to zero
*/"

%javamethodmodifiers itk::simple::BinaryMorphologicalOpeningImageFilter::getBackgroundValue "/**
virtual PixelType itk::BinaryMorphologicalOpeningImageFilter::GetBackgroundValue() const

Set the value in eroded part of the image. Defaults to zero
*/"

%javamethodmodifiers itk::simple::BinaryMorphologicalOpeningImageFilter::setForegroundValue "/**
virtual void itk::BinaryMorphologicalOpeningImageFilter::SetForegroundValue(PixelType _arg)

Set the value in the image to consider as foreground. Defaults to maximum value of PixelType.
*/"

%javamethodmodifiers itk::simple::BinaryMorphologicalOpeningImageFilter::getForegroundValue "/**
virtual PixelType itk::BinaryMorphologicalOpeningImageFilter::GetForegroundValue() const

Get the value in the image considered as foreground. Defaults to maximum value of PixelType.
*/"

// Generated for ClassName from /scratch/blowekamp/build/ITK-gerrit/Utilities/Doxygen/xml/classitk_1_1BinaryOpeningByReconstructionImageFilter.xml
%typemap(javaimports) itk::simple::BinaryOpeningByReconstructionImageFilter "/** binary morphological closing of an image.

This filter removes small (i.e., smaller than the structuring element) objects in the image. It is defined as: Opening(f) = ReconstructionByDilatation(Erosion(f)).
The structuring element is assumed to be composed of binary values (zero or one). Only elements of the structuring element having values > 0 are candidates for affecting the center pixel.
author Gaetan Lehmann. Biologie du Developpement et de la Reproduction, INRA de Jouy-en-Josas, France.
This implementation was taken from the Insight Journal paper:http://hdl.handle.net/1926/584orhttp://www.insight-journal.org/browse/publication/176
see  MorphologyImageFilter, OpeningByReconstructionImageFilter, BinaryClosingByReconstructionImageFilter

*/"
%javamethodmodifiers itk::simple::BinaryOpeningByReconstructionImageFilter::execute() "
/**binary morphological closing of an image.

*/"
%javamethodmodifiers itk::simple::BinaryOpeningByReconstruction "/**
binary morphological closing of an image.

This filter removes small (i.e., smaller than the structuring element) objects in the image. It is defined as: Opening(f) = ReconstructionByDilatation(Erosion(f)).
The structuring element is assumed to be composed of binary values (zero or one). Only elements of the structuring element having values > 0 are candidates for affecting the center pixel.
author Gaetan Lehmann. Biologie du Developpement et de la Reproduction, INRA de Jouy-en-Josas, France.
This implementation was taken from the Insight Journal paper:http://hdl.handle.net/1926/584orhttp://www.insight-journal.org/browse/publication/176
see  MorphologyImageFilter, OpeningByReconstructionImageFilter, BinaryClosingByReconstructionImageFilter

*/"
%javamethodmodifiers itk::simple::BinaryOpeningByReconstructionImageFilter::setForegroundValue "/**
virtual void itk::BinaryOpeningByReconstructionImageFilter::SetForegroundValue(PixelType _arg)

Set the value in the image to consider as foreground. Defaults to maximum value of PixelType.
*/"

%javamethodmodifiers itk::simple::BinaryOpeningByReconstructionImageFilter::getForegroundValue "/**
virtual PixelType itk::BinaryOpeningByReconstructionImageFilter::GetForegroundValue()

Get the value in the image considered as foreground. Defaults to maximum value of PixelType.
*/"

%javamethodmodifiers itk::simple::BinaryOpeningByReconstructionImageFilter::setBackgroundValue "/**
virtual void itk::BinaryOpeningByReconstructionImageFilter::SetBackgroundValue(PixelType _arg)

Set the value in eroded part of the image. Defaults to zero
*/"

%javamethodmodifiers itk::simple::BinaryOpeningByReconstructionImageFilter::getBackgroundValue "/**
virtual PixelType itk::BinaryOpeningByReconstructionImageFilter::GetBackgroundValue()

Set the value in eroded part of the image. Defaults to zero
*/"

%javamethodmodifiers itk::simple::BinaryOpeningByReconstructionImageFilter::setFullyConnected "/**
virtual void itk::BinaryOpeningByReconstructionImageFilter::SetFullyConnected(bool _arg)

Set/Get whether the connected components are defined strictly by face connectivity or by face+edge+vertex connectivity. Default is FullyConnectedOff. For objects that are 1 pixel wide, use FullyConnectedOn.
*/"

%javamethodmodifiers itk::simple::BinaryOpeningByReconstructionImageFilter::getFullyConnected "/**
virtual const bool& itk::BinaryOpeningByReconstructionImageFilter::GetFullyConnected()

Set/Get whether the connected components are defined strictly by face connectivity or by face+edge+vertex connectivity. Default is FullyConnectedOff. For objects that are 1 pixel wide, use FullyConnectedOn.
*/"

// Generated for ClassName from /scratch/blowekamp/build/ITK-gerrit/Utilities/Doxygen/xml/classitk_1_1BinaryProjectionImageFilter.xml
%typemap(javaimports) itk::simple::BinaryProjectionImageFilter "/** Binary projection.

This class was contributed to the Insight Journal by Gaetan Lehmann. the original paper can be found athttp://hdl.handle.net/1926/164
author Gaetan Lehmann. Biologie du Developpement et de la Reproduction, INRA de Jouy-en-Josas, France.
see  ProjectionImageFilter
see 
see  MedianProjectionImageFilter
see 
see  MeanProjectionImageFilter
see 
see  MeanProjectionImageFilter
see 
see  MaximumProjectionImageFilter
see 
see  MinimumProjectionImageFilter
see 
see  StandardDeviationProjectionImageFilter
see 
see  SumProjectionImageFilter

*/"
%javamethodmodifiers itk::simple::BinaryProjectionImageFilter::execute() "
/**Binary projection.

*/"
%javamethodmodifiers itk::simple::BinaryProjection "/**
Binary projection.

This class was contributed to the Insight Journal by Gaetan Lehmann. the original paper can be found athttp://hdl.handle.net/1926/164
author Gaetan Lehmann. Biologie du Developpement et de la Reproduction, INRA de Jouy-en-Josas, France.
see  ProjectionImageFilter
see 
see  MedianProjectionImageFilter
see 
see  MeanProjectionImageFilter
see 
see  MeanProjectionImageFilter
see 
see  MaximumProjectionImageFilter
see 
see  MinimumProjectionImageFilter
see 
see  StandardDeviationProjectionImageFilter
see 
see  SumProjectionImageFilter

*/"
%javamethodmodifiers itk::simple::BinaryProjectionImageFilter::setForegroundValue "/**
virtual void itk::BinaryProjectionImageFilter::SetForegroundValue(InputPixelType _arg)

Set the value in the image to consider as foreground. Defaults to maximum value of PixelType. Subclasses may alias this to DilateValue or ErodeValue.
*/"

%javamethodmodifiers itk::simple::BinaryProjectionImageFilter::getForegroundValue "/**
virtual InputPixelType itk::BinaryProjectionImageFilter::GetForegroundValue() const

Get the value in the image considered as foreground. Defaults to maximum value of PixelType.
*/"

%javamethodmodifiers itk::simple::BinaryProjectionImageFilter::setBackgroundValue "/**
virtual void itk::BinaryProjectionImageFilter::SetBackgroundValue(OutputPixelType _arg)

Set the value used as background. Any pixel value which is not DilateValue is considered background. BackgroundValue is used for defining boundary conditions. Defaults to NumericTraits<PixelType>::NonpositiveMin().
*/"

%javamethodmodifiers itk::simple::BinaryProjectionImageFilter::getBackgroundValue "/**
virtual OutputPixelType itk::BinaryProjectionImageFilter::GetBackgroundValue() const

Get the value used as background. Any pixel value which is not DilateValue is considered background. BackgroundValue is used for defining boundary conditions. Defaults to NumericTraits<PixelType>::NonpositiveMin().
*/"

// Generated for ClassName from /scratch/blowekamp/build/ITK-gerrit/Utilities/Doxygen/xml/classitk_1_1BinaryReconstructionByDilationImageFilter.xml
%typemap(javaimports) itk::simple::BinaryReconstructionByDilationImageFilter "/** binary reconstruction by dilation of an image

Reconstruction by dilation operates on a marker image and a mask image, and is defined as the dilation of the marker image with respect to the mask image iterated until stability.
Geodesic morphology is described in Chapter 6.2 of Pierre Soille's book Morphological Image Analysis: Principles and Applications, Second Edition, Springer, 2003.
author Gaetan Lehmann. Biologie du Developpement et de la Reproduction, INRA de Jouy-en-Josas, France.
This implementation was taken from the Insight Journal paper:http://hdl.handle.net/1926/584orhttp://www.insight-journal.org/browse/publication/176
see  MorphologyImageFilter, ReconstructionByDilationImageFilter, BinaryReconstructionByErosionImageFilter

*/"
%javamethodmodifiers itk::simple::BinaryReconstructionByDilationImageFilter::execute() "
/**binary reconstruction by dilation of an image

*/"
%javamethodmodifiers itk::simple::BinaryReconstructionByDilation "/**
binary reconstruction by dilation of an image

Reconstruction by dilation operates on a marker image and a mask image, and is defined as the dilation of the marker image with respect to the mask image iterated until stability.
Geodesic morphology is described in Chapter 6.2 of Pierre Soille's book Morphological Image Analysis: Principles and Applications, Second Edition, Springer, 2003.
author Gaetan Lehmann. Biologie du Developpement et de la Reproduction, INRA de Jouy-en-Josas, France.
This implementation was taken from the Insight Journal paper:http://hdl.handle.net/1926/584orhttp://www.insight-journal.org/browse/publication/176
see  MorphologyImageFilter, ReconstructionByDilationImageFilter, BinaryReconstructionByErosionImageFilter

*/"
%javamethodmodifiers itk::simple::BinaryReconstructionByDilationImageFilter::setBackgroundValue "/**
virtual void itk::BinaryReconstructionByDilationImageFilter::SetBackgroundValue(OutputImagePixelType _arg)

End concept checking Set/Get the value used as background in the output image. Defaults to NumericTraits<PixelType>::NonpositiveMin().
*/"

%javamethodmodifiers itk::simple::BinaryReconstructionByDilationImageFilter::getBackgroundValue "/**
virtual OutputImagePixelType itk::BinaryReconstructionByDilationImageFilter::GetBackgroundValue() const

End concept checking Set/Get the value used as background in the output image. Defaults to NumericTraits<PixelType>::NonpositiveMin().
*/"

%javamethodmodifiers itk::simple::BinaryReconstructionByDilationImageFilter::setForegroundValue "/**
virtual void itk::BinaryReconstructionByDilationImageFilter::SetForegroundValue(OutputImagePixelType _arg)

Set/Get the value used as foreground in the output image. Defaults to NumericTraits<PixelType>::max().
*/"

%javamethodmodifiers itk::simple::BinaryReconstructionByDilationImageFilter::getForegroundValue "/**
virtual OutputImagePixelType itk::BinaryReconstructionByDilationImageFilter::GetForegroundValue() const

Set/Get the value used as foreground in the output image. Defaults to NumericTraits<PixelType>::max().
*/"

%javamethodmodifiers itk::simple::BinaryReconstructionByDilationImageFilter::setFullyConnected "/**
virtual void itk::BinaryReconstructionByDilationImageFilter::SetFullyConnected(bool _arg)

Set/Get whether the connected components are defined strictly by face connectivity or by face+edge+vertex connectivity. Default is FullyConnectedOff. For objects that are 1 pixel wide, use FullyConnectedOn.
*/"

%javamethodmodifiers itk::simple::BinaryReconstructionByDilationImageFilter::getFullyConnected "/**
virtual const bool& itk::BinaryReconstructionByDilationImageFilter::GetFullyConnected()

Set/Get whether the connected components are defined strictly by face connectivity or by face+edge+vertex connectivity. Default is FullyConnectedOff. For objects that are 1 pixel wide, use FullyConnectedOn.
*/"

// Generated for ClassName from /scratch/blowekamp/build/ITK-gerrit/Utilities/Doxygen/xml/classitk_1_1BinaryReconstructionByErosionImageFilter.xml
%typemap(javaimports) itk::simple::BinaryReconstructionByErosionImageFilter "/** binary reconstruction by erosion of an image

Reconstruction by erosion operates on a marker image and a mask image, and is defined as the erosion of the marker image with respect to the mask image iterated until stability.
Geodesic morphology is described in Chapter 6.2 of Pierre Soille's book Morphological Image Analysis: Principles and Applications, Second Edition, Springer, 2003.
author Gaetan Lehmann. Biologie du Developpement et de la Reproduction, INRA de Jouy-en-Josas, France.
This implementation was taken from the Insight Journal paper:http://hdl.handle.net/1926/584orhttp://www.insight-journal.org/browse/publication/176
see  MorphologyImageFilter, ReconstructionByErosionImageFilter, BinaryReconstructionByDilationImageFilter

*/"
%javamethodmodifiers itk::simple::BinaryReconstructionByErosionImageFilter::execute() "
/**binary reconstruction by erosion of an image

*/"
%javamethodmodifiers itk::simple::BinaryReconstructionByErosion "/**
binary reconstruction by erosion of an image

Reconstruction by erosion operates on a marker image and a mask image, and is defined as the erosion of the marker image with respect to the mask image iterated until stability.
Geodesic morphology is described in Chapter 6.2 of Pierre Soille's book Morphological Image Analysis: Principles and Applications, Second Edition, Springer, 2003.
author Gaetan Lehmann. Biologie du Developpement et de la Reproduction, INRA de Jouy-en-Josas, France.
This implementation was taken from the Insight Journal paper:http://hdl.handle.net/1926/584orhttp://www.insight-journal.org/browse/publication/176
see  MorphologyImageFilter, ReconstructionByErosionImageFilter, BinaryReconstructionByDilationImageFilter

*/"
%javamethodmodifiers itk::simple::BinaryReconstructionByErosionImageFilter::setBackgroundValue "/**
virtual void itk::BinaryReconstructionByErosionImageFilter::SetBackgroundValue(OutputImagePixelType _arg)

End concept checking Set/Get the value used as background in the output image. Defaults to NumericTraits<PixelType>::NonpositiveMin().
*/"

%javamethodmodifiers itk::simple::BinaryReconstructionByErosionImageFilter::getBackgroundValue "/**
virtual OutputImagePixelType itk::BinaryReconstructionByErosionImageFilter::GetBackgroundValue() const

End concept checking Set/Get the value used as background in the output image. Defaults to NumericTraits<PixelType>::NonpositiveMin().
*/"

%javamethodmodifiers itk::simple::BinaryReconstructionByErosionImageFilter::setForegroundValue "/**
virtual void itk::BinaryReconstructionByErosionImageFilter::SetForegroundValue(OutputImagePixelType _arg)

Set/Get the value used as foreground in the output image. Defaults to NumericTraits<PixelType>::max().
*/"

%javamethodmodifiers itk::simple::BinaryReconstructionByErosionImageFilter::getForegroundValue "/**
virtual OutputImagePixelType itk::BinaryReconstructionByErosionImageFilter::GetForegroundValue() const

Set/Get the value used as foreground in the output image. Defaults to NumericTraits<PixelType>::max().
*/"

%javamethodmodifiers itk::simple::BinaryReconstructionByErosionImageFilter::setFullyConnected "/**
virtual void itk::BinaryReconstructionByErosionImageFilter::SetFullyConnected(bool _arg)

Set/Get whether the connected components are defined strictly by face connectivity or by face+edge+vertex connectivity. Default is FullyConnectedOff. For objects that are 1 pixel wide, use FullyConnectedOn.
*/"

%javamethodmodifiers itk::simple::BinaryReconstructionByErosionImageFilter::getFullyConnected "/**
virtual const bool& itk::BinaryReconstructionByErosionImageFilter::GetFullyConnected()

Set/Get whether the connected components are defined strictly by face connectivity or by face+edge+vertex connectivity. Default is FullyConnectedOff. For objects that are 1 pixel wide, use FullyConnectedOn.
*/"

// Generated for ClassName from /scratch/blowekamp/build/ITK-gerrit/Utilities/Doxygen/xml/classitk_1_1BinaryThinningImageFilter.xml
%typemap(javaimports) itk::simple::BinaryThinningImageFilter "/** This filter computes one-pixel-wide edges of the input image.

This class is parametrized over the type of the input image and the type of the output image.
The input is assumed to be a binary image. If the foreground pixels of the input image do not have a value of 1, they are rescaled to 1 internally to simplify the computation.
The filter will produce a skeleton of the object. The output background values are 0, and the foreground values are 1.
This filter is a sequential thinning algorithm and known to be computational time dependable on the image size. The algorithm corresponds with the 2D implementation described in:
Rafael C. Gonzales and Richard E. Woods. Digital ImageProcessing. Addison Wesley, 491-494, (1993).
To do: Make this filter ND.
see  MorphologyImageFilter
par Wiki Examples:

li All Examples

li Skeletonize/thin an image

*/"
%javamethodmodifiers itk::simple::BinaryThinningImageFilter::execute() "
/**This filter computes one-pixel-wide edges of the input image.

*/"
%javamethodmodifiers itk::simple::BinaryThinning "/**
This filter computes one-pixel-wide edges of the input image.

This class is parametrized over the type of the input image and the type of the output image.
The input is assumed to be a binary image. If the foreground pixels of the input image do not have a value of 1, they are rescaled to 1 internally to simplify the computation.
The filter will produce a skeleton of the object. The output background values are 0, and the foreground values are 1.
This filter is a sequential thinning algorithm and known to be computational time dependable on the image size. The algorithm corresponds with the 2D implementation described in:
Rafael C. Gonzales and Richard E. Woods. Digital ImageProcessing. Addison Wesley, 491-494, (1993).
To do: Make this filter ND.
see  MorphologyImageFilter
par Wiki Examples:

li All Examples

li Skeletonize/thin an image

*/"
// Generated for ClassName from /scratch/blowekamp/build/ITK-gerrit/Utilities/Doxygen/xml/classitk_1_1BinaryThresholdImageFilter.xml
%typemap(javaimports) itk::simple::BinaryThresholdImageFilter "/** Binarize an input image by thresholding.

This filter produces an output image whose pixels are either one of two values ( OutsideValue or InsideValue ), depending on whether the corresponding input image pixels lie between the two thresholds ( LowerThreshold and UpperThreshold ). Values equal to either threshold is considered to be between the thresholds.
More precisely f[ Output(x_i) = begin{cases} InsideValue & text{if f$LowerThreshold leq x_i leq UpperThresholdf$}  OutsideValue & text{otherwise} end{cases} f]  
This filter is templated over the input image type and the output image type.
The filter expect both images to have the same number of dimensions.
The default values for LowerThreshold and UpperThreshold are: LowerThreshold = NumericTraits<TInput>::NonpositiveMin(); UpperThreshold = NumericTraits<TInput>::max(); Therefore, generally only one of these needs to be set, depending on whether the user wants to threshold above or below the desired threshold.
par Wiki Examples:

li All Examples

li Threshold an image

*/"
%javamethodmodifiers itk::simple::BinaryThresholdImageFilter::execute() "
/**Binarize an input image by thresholding.

*/"
%javamethodmodifiers itk::simple::BinaryThreshold "/**
Binarize an input image by thresholding.

This filter produces an output image whose pixels are either one of two values ( OutsideValue or InsideValue ), depending on whether the corresponding input image pixels lie between the two thresholds ( LowerThreshold and UpperThreshold ). Values equal to either threshold is considered to be between the thresholds.
More precisely f[ Output(x_i) = begin{cases} InsideValue & text{if f$LowerThreshold leq x_i leq UpperThresholdf$}  OutsideValue & text{otherwise} end{cases} f]  
This filter is templated over the input image type and the output image type.
The filter expect both images to have the same number of dimensions.
The default values for LowerThreshold and UpperThreshold are: LowerThreshold = NumericTraits<TInput>::NonpositiveMin(); UpperThreshold = NumericTraits<TInput>::max(); Therefore, generally only one of these needs to be set, depending on whether the user wants to threshold above or below the desired threshold.
par Wiki Examples:

li All Examples

li Threshold an image

*/"
%javamethodmodifiers itk::simple::BinaryThresholdImageFilter::setLowerThreshold "/**
virtual void itk::BinaryThresholdImageFilter::SetLowerThreshold(const InputPixelType threshold)

*/"

%javamethodmodifiers itk::simple::BinaryThresholdImageFilter::getLowerThreshold "/**
virtual InputPixelType itk::BinaryThresholdImageFilter::GetLowerThreshold() const

*/"

%javamethodmodifiers itk::simple::BinaryThresholdImageFilter::setUpperThreshold "/**
virtual void itk::BinaryThresholdImageFilter::SetUpperThreshold(const InputPixelType threshold)

Set the thresholds. The default lower threshold is NumericTraits<InputPixelType>::NonpositiveMin(). The default upper threshold is NumericTraits<InputPixelType>::max. An execption is thrown if the lower threshold is greater than the upper threshold.
*/"

%javamethodmodifiers itk::simple::BinaryThresholdImageFilter::getUpperThreshold "/**
virtual InputPixelType itk::BinaryThresholdImageFilter::GetUpperThreshold() const

Get the threshold values.
*/"

%javamethodmodifiers itk::simple::BinaryThresholdImageFilter::setInsideValue "/**
virtual void itk::BinaryThresholdImageFilter::SetInsideValue(OutputPixelType _arg)

Set the inside pixel value. The default value NumericTraits<OutputPixelType>::max()
*/"

%javamethodmodifiers itk::simple::BinaryThresholdImageFilter::getInsideValue "/**
virtual const OutputPixelType& itk::BinaryThresholdImageFilter::GetInsideValue()

Get the inside pixel value.
*/"

%javamethodmodifiers itk::simple::BinaryThresholdImageFilter::setOutsideValue "/**
virtual void itk::BinaryThresholdImageFilter::SetOutsideValue(OutputPixelType _arg)

Set the outside pixel value. The default value NumericTraits<OutputPixelType>::Zero.
*/"

%javamethodmodifiers itk::simple::BinaryThresholdImageFilter::getOutsideValue "/**
virtual const OutputPixelType& itk::BinaryThresholdImageFilter::GetOutsideValue()

Get the outside pixel value.
*/"

// Generated for ClassName from /scratch/blowekamp/build/ITK-gerrit/Utilities/Doxygen/xml/classitk_1_1BinaryThresholdProjectionImageFilter.xml
%typemap(javaimports) itk::simple::BinaryThresholdProjectionImageFilter "/** BinaryThreshold projection.

This class was contributed to the Insight Journal by Gaetan Lehmann. the original paper can be found athttp://hdl.handle.net/1926/164
author Gaetan Lehmann. Biologie du Developpement et de la Reproduction, INRA de Jouy-en-Josas, France.
see  ProjectionImageFilter
see 
see  MedianProjectionImageFilter
see 
see  MeanProjectionImageFilter
see 
see  MeanProjectionImageFilter
see 
see  MaximumProjectionImageFilter
see 
see  MinimumProjectionImageFilter
see 
see  StandardDeviationProjectionImageFilter
see 
see  SumProjectionImageFilter

*/"
%javamethodmodifiers itk::simple::BinaryThresholdProjectionImageFilter::execute() "
/**BinaryThreshold projection.

*/"
%javamethodmodifiers itk::simple::BinaryThresholdProjection "/**
BinaryThreshold projection.

This class was contributed to the Insight Journal by Gaetan Lehmann. the original paper can be found athttp://hdl.handle.net/1926/164
author Gaetan Lehmann. Biologie du Developpement et de la Reproduction, INRA de Jouy-en-Josas, France.
see  ProjectionImageFilter
see 
see  MedianProjectionImageFilter
see 
see  MeanProjectionImageFilter
see 
see  MeanProjectionImageFilter
see 
see  MaximumProjectionImageFilter
see 
see  MinimumProjectionImageFilter
see 
see  StandardDeviationProjectionImageFilter
see 
see  SumProjectionImageFilter

*/"
%javamethodmodifiers itk::simple::BinaryThresholdProjectionImageFilter::setThresholdValue "/**
virtual void itk::BinaryThresholdProjectionImageFilter::SetThresholdValue(InputPixelType _arg)

Set/Get the input value consider as threshold. Defaults to NumericTraits<InputPixelType>::max()
*/"

%javamethodmodifiers itk::simple::BinaryThresholdProjectionImageFilter::getThresholdValue "/**
virtual InputPixelType itk::BinaryThresholdProjectionImageFilter::GetThresholdValue() const

Set/Get the input value consider as threshold. Defaults to NumericTraits<InputPixelType>::max()
*/"

%javamethodmodifiers itk::simple::BinaryThresholdProjectionImageFilter::setForegroundValue "/**
virtual void itk::BinaryThresholdProjectionImageFilter::SetForegroundValue(OutputPixelType _arg)

Set/Get the output value used as foreground. Defaults to maximum value of PixelType.
*/"

%javamethodmodifiers itk::simple::BinaryThresholdProjectionImageFilter::getForegroundValue "/**
virtual OutputPixelType itk::BinaryThresholdProjectionImageFilter::GetForegroundValue() const

Set/Get the output value used as foreground. Defaults to maximum value of PixelType.
*/"

%javamethodmodifiers itk::simple::BinaryThresholdProjectionImageFilter::setBackgroundValue "/**
virtual void itk::BinaryThresholdProjectionImageFilter::SetBackgroundValue(OutputPixelType _arg)

Set/Get the output value used as background. Defaults to NumericTraits<PixelType>::NonpositiveMin().
*/"

%javamethodmodifiers itk::simple::BinaryThresholdProjectionImageFilter::getBackgroundValue "/**
virtual OutputPixelType itk::BinaryThresholdProjectionImageFilter::GetBackgroundValue() const

Set/Get the output value used as background. Defaults to NumericTraits<PixelType>::NonpositiveMin().
*/"

// Generated for ClassName from /scratch/blowekamp/build/ITK-gerrit/Utilities/Doxygen/xml/classitk_1_1BinomialBlurImageFilter.xml
%typemap(javaimports) itk::simple::BinomialBlurImageFilter "/** Performs a separable blur on each dimension of an image.

The binomial blur consists of a nearest neighbor average along each image dimension. The net result after n-iterations approaches convultion with a gaussian.
par Wiki Examples:

li All Examples

li Blur an image

*/"
%javamethodmodifiers itk::simple::BinomialBlurImageFilter::execute() "
/**Performs a separable blur on each dimension of an image.

*/"
%javamethodmodifiers itk::simple::BinomialBlur "/**
Performs a separable blur on each dimension of an image.

The binomial blur consists of a nearest neighbor average along each image dimension. The net result after n-iterations approaches convultion with a gaussian.
par Wiki Examples:

li All Examples

li Blur an image

*/"
%javamethodmodifiers itk::simple::BinomialBlurImageFilter::setRepetitions "/**
virtual void itk::BinomialBlurImageFilter::SetRepetitions(unsigned int _arg)

Get and set the number of times to repeat the filter.
*/"

%javamethodmodifiers itk::simple::BinomialBlurImageFilter::getRepetitions "/**
virtual unsigned int itk::BinomialBlurImageFilter::GetRepetitions() const

Get and set the number of times to repeat the filter.
*/"

// Generated for ClassName from /scratch/blowekamp/build/ITK-gerrit/Utilities/Doxygen/xml/classitk_1_1BlackTopHatImageFilter.xml
%typemap(javaimports) itk::simple::BlackTopHatImageFilter "/** Black top hat extract local minima that are smaller than the structuring element.

Black top hat extract local minima that are smaller than the structuring element. It subtract the background in the input image. The output of the filter transforms the black peaks in white peaks.
Top-hats are described in Chapter 4.5 of Pierre Soille's book Morphological Image Analysis: Principles and Applications, Second Edition, Springer, 2003.
author Gaetan Lehmann. Biologie du Developpement et de la Reproduction, INRA de Jouy-en-Josas, France.

*/"
%javamethodmodifiers itk::simple::BlackTopHatImageFilter::execute() "
/**Black top hat extract local minima that are smaller than the structuring element.

*/"
%javamethodmodifiers itk::simple::BlackTopHat "/**
Black top hat extract local minima that are smaller than the structuring element.

Black top hat extract local minima that are smaller than the structuring element. It subtract the background in the input image. The output of the filter transforms the black peaks in white peaks.
Top-hats are described in Chapter 4.5 of Pierre Soille's book Morphological Image Analysis: Principles and Applications, Second Edition, Springer, 2003.
author Gaetan Lehmann. Biologie du Developpement et de la Reproduction, INRA de Jouy-en-Josas, France.

*/"
%javamethodmodifiers itk::simple::BlackTopHatImageFilter::setSafeBorder "/**
virtual void itk::BlackTopHatImageFilter::SetSafeBorder(bool _arg)

A safe border is added to input image to avoid borders effects and remove it once the closing is done
*/"

%javamethodmodifiers itk::simple::BlackTopHatImageFilter::getSafeBorder "/**
virtual const bool& itk::BlackTopHatImageFilter::GetSafeBorder()

A safe border is added to input image to avoid borders effects and remove it once the closing is done
*/"

// Generated for ClassName from /scratch/blowekamp/build/ITK-gerrit/Utilities/Doxygen/xml/classitk_1_1BoundedReciprocalImageFilter.xml
%typemap(javaimports) itk::simple::BoundedReciprocalImageFilter "/** Computes 1/(1+x) for each pixel in the image.

The filter expect both the input and output images to have the same number of dimensions, and both of a scalar image type.
*/"
%javamethodmodifiers itk::simple::BoundedReciprocalImageFilter::execute() "
/**Computes 1/(1+x) for each pixel in the image.

*/"
%javamethodmodifiers itk::simple::BoundedReciprocal "/**
Computes 1/(1+x) for each pixel in the image.

The filter expect both the input and output images to have the same number of dimensions, and both of a scalar image type.
*/"
// Generated for ClassName from /scratch/blowekamp/build/ITK-gerrit/Utilities/Doxygen/xml/classitk_1_1BoxMeanImageFilter.xml
%typemap(javaimports) itk::simple::BoxMeanImageFilter "/** Implements a fast rectangular mean filter using the accumulator approach.

This code was contributed in the Insight Journal paper: Efficient implementation of kernel filtering by Beare R., Lehmann Ghttp://hdl.handle.net/1926/555http://www.insight-journal.org/browse/publication/160
author Richard Beare

*/"
%javamethodmodifiers itk::simple::BoxMeanImageFilter::execute() "
/**Implements a fast rectangular mean filter using the accumulator approach.

*/"
%javamethodmodifiers itk::simple::BoxMean "/**
Implements a fast rectangular mean filter using the accumulator approach.

This code was contributed in the Insight Journal paper: Efficient implementation of kernel filtering by Beare R., Lehmann Ghttp://hdl.handle.net/1926/555http://www.insight-journal.org/browse/publication/160
author Richard Beare

*/"
// Generated for ClassName from /scratch/blowekamp/build/ITK-gerrit/Utilities/Doxygen/xml/classitk_1_1BoxSigmaImageFilter.xml
%typemap(javaimports) itk::simple::BoxSigmaImageFilter "/** Implements a fast rectangular sigma filter using the accumulator approach.

This code was contributed in the Insight Journal paper: Efficient implementation of kernel filtering by Beare R., Lehmann Ghttp://hdl.handle.net/1926/555http://www.insight-journal.org/browse/publication/160
author Gaetan Lehmann

*/"
%javamethodmodifiers itk::simple::BoxSigmaImageFilter::execute() "
/**Implements a fast rectangular sigma filter using the accumulator approach.

*/"
%javamethodmodifiers itk::simple::BoxSigma "/**
Implements a fast rectangular sigma filter using the accumulator approach.

This code was contributed in the Insight Journal paper: Efficient implementation of kernel filtering by Beare R., Lehmann Ghttp://hdl.handle.net/1926/555http://www.insight-journal.org/browse/publication/160
author Gaetan Lehmann

*/"
// Generated for ClassName from /scratch/blowekamp/build/ITK-gerrit/Utilities/Doxygen/xml/classitk_1_1CannyEdgeDetectionImageFilter.xml
%typemap(javaimports) itk::simple::CannyEdgeDetectionImageFilter "/** This filter is an implementation of a Canny edge detector for scalar-valued images. Based on John Canny's paper A Computational Approach
 to Edge Detection(IEEE Transactions on Pattern Analysis and Machine Intelligence, Vol. PAMI-8, No.6, November 1986), there are four major steps used in the edge-detection scheme: (1) Smooth the input image with Gaussian filter. (2) Calculate the second directional derivatives of the smoothed image. (3) Non-Maximum Suppression: the zero-crossings of 2nd derivative are found, and the sign of third derivative is used to find the correct extrema. (4) The hysteresis thresholding is applied to the gradient magnitude (multiplied with zero-crossings) of the smoothed image to find and link edges.

par Inputs and Outputs
The input to this filter should be a scalar, real-valued Itk image of arbitrary dimension. The output should also be a scalar, real-value Itk image of the same dimensionality.
par Parameters
There are four parameters for this filter that control the sub-filters used by the algorithm.
par Variance and Maximum error are used in the Gaussian smoothing of the input image. See itkDiscreteGaussianImageFilter for information on these parameters.
par Threshold is the lowest allowed value in the output image. Its data type is the same as the data type of the output image. Any values below the Threshold level will be replaced with the OutsideValue parameter value, whose default is zero.
TodoEdge-linking will be added when an itk connected component labeling algorithm is available.

see  DiscreteGaussianImageFilter
see 
see  ZeroCrossingImageFilter
see 
see  ThresholdImageFilter

*/"
%javamethodmodifiers itk::simple::CannyEdgeDetectionImageFilter::execute() "
/**This filter is an implementation of a Canny edge detector for scalar-valued images. Based on John Canny's paper A Computational Approach
 to Edge Detection(IEEE Transactions on Pattern Analysis and Machine Intelligence, Vol. PAMI-8, No.6, November 1986), there are four major steps used in the edge-detection scheme: (1) Smooth the input image with Gaussian filter. (2) Calculate the second directional derivatives of the smoothed image. (3) Non-Maximum Suppression: the zero-crossings of 2nd derivative are found, and the sign of third derivative is used to find the correct extrema. (4) The hysteresis thresholding is applied to the gradient magnitude (multiplied with zero-crossings) of the smoothed image to find and link edges.

*/"
%javamethodmodifiers itk::simple::CannyEdgeDetection "/**
This filter is an implementation of a Canny edge detector for scalar-valued images. Based on John Canny's paper A Computational Approach
 to Edge Detection(IEEE Transactions on Pattern Analysis and Machine Intelligence, Vol. PAMI-8, No.6, November 1986), there are four major steps used in the edge-detection scheme: (1) Smooth the input image with Gaussian filter. (2) Calculate the second directional derivatives of the smoothed image. (3) Non-Maximum Suppression: the zero-crossings of 2nd derivative are found, and the sign of third derivative is used to find the correct extrema. (4) The hysteresis thresholding is applied to the gradient magnitude (multiplied with zero-crossings) of the smoothed image to find and link edges.

par Inputs and Outputs
The input to this filter should be a scalar, real-valued Itk image of arbitrary dimension. The output should also be a scalar, real-value Itk image of the same dimensionality.
par Parameters
There are four parameters for this filter that control the sub-filters used by the algorithm.
par Variance and Maximum error are used in the Gaussian smoothing of the input image. See itkDiscreteGaussianImageFilter for information on these parameters.
par Threshold is the lowest allowed value in the output image. Its data type is the same as the data type of the output image. Any values below the Threshold level will be replaced with the OutsideValue parameter value, whose default is zero.
TodoEdge-linking will be added when an itk connected component labeling algorithm is available.

see  DiscreteGaussianImageFilter
see 
see  ZeroCrossingImageFilter
see 
see  ThresholdImageFilter

*/"
%javamethodmodifiers itk::simple::CannyEdgeDetectionImageFilter::setLowerThreshold "/**
virtual void itk::CannyEdgeDetectionImageFilter::SetLowerThreshold(OutputImagePixelType _arg)

*/"

%javamethodmodifiers itk::simple::CannyEdgeDetectionImageFilter::getLowerThreshold "/**
virtual OutputImagePixelType itk::CannyEdgeDetectionImageFilter::GetLowerThreshold() const

*/"

%javamethodmodifiers itk::simple::CannyEdgeDetectionImageFilter::setUpperThreshold "/**
virtual void itk::CannyEdgeDetectionImageFilter::SetUpperThreshold(OutputImagePixelType _arg)

TODO: Document in the ITKv4 migration guide that the SetThreshold member function was removed from the CannyEdgeDetectionImageFilter, and that both UpperThreshold and LowerThreshold need to be set. To get the same results as with the SetThreshold method change myfilter->SetThrehsold to myfilter->SetUpperThreshold, and add myfilter->SetLowerThreshold(GetUpperThreshold()/2.0)* Set the Threshold value for detected edges. */
*/"

%javamethodmodifiers itk::simple::CannyEdgeDetectionImageFilter::getUpperThreshold "/**
virtual OutputImagePixelType itk::CannyEdgeDetectionImageFilter::GetUpperThreshold() const

*/"

%javamethodmodifiers itk::simple::CannyEdgeDetectionImageFilter::setVariance "/**
void itk::CannyEdgeDetectionImageFilter::SetVariance(const typename ArrayType::ValueType v)

Set/Get the Variance parameter used by the Gaussian smoothing filter in this algorithm
*/"

%javamethodmodifiers itk::simple::CannyEdgeDetectionImageFilter::getVariance "/**
virtual const ArrayType itk::CannyEdgeDetectionImageFilter::GetVariance() const

Standard get/set macros for filter parameters.
*/"

%javamethodmodifiers itk::simple::CannyEdgeDetectionImageFilter::setMaximumError "/**
void itk::CannyEdgeDetectionImageFilter::SetMaximumError(const typename ArrayType::ValueType v)

Set/Get the MaximumError parameter used by the Gaussian smoothing filter in this algorithm
*/"

%javamethodmodifiers itk::simple::CannyEdgeDetectionImageFilter::getMaximumError "/**
virtual const ArrayType itk::CannyEdgeDetectionImageFilter::GetMaximumError() const

Standard get/set macros for filter parameters.
*/"

// Generated for ClassName from /scratch/blowekamp/build/ITK-gerrit/Utilities/Doxygen/xml/classitk_1_1CheckerBoardImageFilter.xml
%typemap(javaimports) itk::simple::CheckerBoardImageFilter "/** Combines two images in a checkerboard pattern.

 CheckerBoardImageFiltertakes two input images that must have the same dimension, size, origin and spacing and produces an output image of the same size by combinining the pixels from the two input images in a checkerboard pattern. This filter is commonly used for visually comparing two images, in particular for evaluating the results of an image registration process.
This filter is implemented as a multithreaded filter. It provides a ThreadedGenerateData()method for its implementation.
par Wiki Examples:

li All Examples

li Combine two images by alternating blocks of a checkerboard pattern

*/"
%javamethodmodifiers itk::simple::CheckerBoardImageFilter::execute() "
/**Combines two images in a checkerboard pattern.

*/"
%javamethodmodifiers itk::simple::CheckerBoard "/**
Combines two images in a checkerboard pattern.

 CheckerBoardImageFiltertakes two input images that must have the same dimension, size, origin and spacing and produces an output image of the same size by combinining the pixels from the two input images in a checkerboard pattern. This filter is commonly used for visually comparing two images, in particular for evaluating the results of an image registration process.
This filter is implemented as a multithreaded filter. It provides a ThreadedGenerateData()method for its implementation.
par Wiki Examples:

li All Examples

li Combine two images by alternating blocks of a checkerboard pattern

*/"
%javamethodmodifiers itk::simple::CheckerBoardImageFilter::setCheckerPattern "/**
virtual void itk::CheckerBoardImageFilter::SetCheckerPattern(PatternArrayType _arg)

Set array with number of checks to make per image dimension
*/"

%javamethodmodifiers itk::simple::CheckerBoardImageFilter::getCheckerPattern "/**
virtual const PatternArrayType& itk::CheckerBoardImageFilter::GetCheckerPattern()

Set array with number of checks to make per image dimension
*/"

// Generated for ClassName from /scratch/blowekamp/build/ITK-gerrit/Utilities/Doxygen/xml/classitk_1_1ClosingByReconstructionImageFilter.xml
%typemap(javaimports) itk::simple::ClosingByReconstructionImageFilter "/** Closing by reconstruction of an image.

This filter is similar to the morphological closing, but contrary to the mophological closing, the closing by reconstruction preserves the shape of the components. The closing by reconstruction of an image f is defined as:
ClosingByReconstruction(f) = ErosionByReconstruction(f, Dilation(f)).
Closing by reconstruction not only preserves structures preserved by the dilation, but also levels raises the contrast of the darkest regions. If PreserveIntensities is on, a subsequent reconstruction by dilation using a marker image that is the original image for all unaffected pixels.
Closing by reconstruction is described in Chapter 6.3.9 of Pierre Soille's book Morphological Image Analysis: Principles and
 Applications, Second Edition, Springer, 2003.
author Gaetan Lehmann. Biologie du Developpement et de la Reproduction, INRA de Jouy-en-Josas, France.
see  GrayscaleMorphologicalClosingImageFilter

*/"
%javamethodmodifiers itk::simple::ClosingByReconstructionImageFilter::execute() "
/**Closing by reconstruction of an image.

*/"
%javamethodmodifiers itk::simple::ClosingByReconstruction "/**
Closing by reconstruction of an image.

This filter is similar to the morphological closing, but contrary to the mophological closing, the closing by reconstruction preserves the shape of the components. The closing by reconstruction of an image f is defined as:
ClosingByReconstruction(f) = ErosionByReconstruction(f, Dilation(f)).
Closing by reconstruction not only preserves structures preserved by the dilation, but also levels raises the contrast of the darkest regions. If PreserveIntensities is on, a subsequent reconstruction by dilation using a marker image that is the original image for all unaffected pixels.
Closing by reconstruction is described in Chapter 6.3.9 of Pierre Soille's book Morphological Image Analysis: Principles and
 Applications, Second Edition, Springer, 2003.
author Gaetan Lehmann. Biologie du Developpement et de la Reproduction, INRA de Jouy-en-Josas, France.
see  GrayscaleMorphologicalClosingImageFilter

*/"
%javamethodmodifiers itk::simple::ClosingByReconstructionImageFilter::setFullyConnected "/**
virtual void itk::ClosingByReconstructionImageFilter::SetFullyConnected(bool _arg)

Set/Get whether the connected components are defined strictly by face connectivity or by face+edge+vertex connectivity. Default is FullyConnectedOff. For objects that are 1 pixel wide, use FullyConnectedOn.
*/"

%javamethodmodifiers itk::simple::ClosingByReconstructionImageFilter::getFullyConnected "/**
virtual const bool& itk::ClosingByReconstructionImageFilter::GetFullyConnected()

Set/Get whether the connected components are defined strictly by face connectivity or by face+edge+vertex connectivity. Default is FullyConnectedOff. For objects that are 1 pixel wide, use FullyConnectedOn.
*/"

%javamethodmodifiers itk::simple::ClosingByReconstructionImageFilter::setPreserveIntensities "/**
virtual void itk::ClosingByReconstructionImageFilter::SetPreserveIntensities(bool _arg)

Set/Get whether the original intensities of the image retained for those pixels unaffected by the opening by reconstrcution. If Off, the output pixel contrast will be reduced.
*/"

%javamethodmodifiers itk::simple::ClosingByReconstructionImageFilter::getPreserveIntensities "/**
virtual const bool& itk::ClosingByReconstructionImageFilter::GetPreserveIntensities()

Set/Get whether the original intensities of the image retained for those pixels unaffected by the opening by reconstrcution. If Off, the output pixel contrast will be reduced.
*/"

// Generated for ClassName from /scratch/blowekamp/build/ITK-gerrit/Utilities/Doxygen/xml/classitk_1_1ComplexToImaginaryImageFilter.xml
%typemap(javaimports) itk::simple::ComplexToImaginaryImageFilter "/** Computes pixel-wise the imaginary part of a complex image.

*/"
%javamethodmodifiers itk::simple::ComplexToImaginaryImageFilter::execute() "
/**Computes pixel-wise the imaginary part of a complex image.

*/"
%javamethodmodifiers itk::simple::ComplexToImaginary "/**
Computes pixel-wise the imaginary part of a complex image.

*/"
// Generated for ClassName from /scratch/blowekamp/build/ITK-gerrit/Utilities/Doxygen/xml/classitk_1_1ComplexToModulusImageFilter.xml
%typemap(javaimports) itk::simple::ComplexToModulusImageFilter "/** Computes pixel-wise the Modulus of a complex image.

*/"
%javamethodmodifiers itk::simple::ComplexToModulusImageFilter::execute() "
/**Computes pixel-wise the Modulus of a complex image.

*/"
%javamethodmodifiers itk::simple::ComplexToModulus "/**
Computes pixel-wise the Modulus of a complex image.

*/"
// Generated for ClassName from /scratch/blowekamp/build/ITK-gerrit/Utilities/Doxygen/xml/classitk_1_1ComplexToPhaseImageFilter.xml
%typemap(javaimports) itk::simple::ComplexToPhaseImageFilter "/** Computes pixel-wise the modulus of a complex image.

*/"
%javamethodmodifiers itk::simple::ComplexToPhaseImageFilter::execute() "
/**Computes pixel-wise the modulus of a complex image.

*/"
%javamethodmodifiers itk::simple::ComplexToPhase "/**
Computes pixel-wise the modulus of a complex image.

*/"
// Generated for ClassName from /scratch/blowekamp/build/ITK-gerrit/Utilities/Doxygen/xml/classitk_1_1ComplexToRealImageFilter.xml
%typemap(javaimports) itk::simple::ComplexToRealImageFilter "/** Computes pixel-wise the real(x) part of a complex image.

*/"
%javamethodmodifiers itk::simple::ComplexToRealImageFilter::execute() "
/**Computes pixel-wise the real(x) part of a complex image.

*/"
%javamethodmodifiers itk::simple::ComplexToReal "/**
Computes pixel-wise the real(x) part of a complex image.

*/"
// Generated for ClassName from /scratch/blowekamp/build/ITK-gerrit/Utilities/Doxygen/xml/classitk_1_1ComposeImageFilter.xml
%typemap(javaimports) itk::simple::ComposeImageFilter "/**  ComposeImageFiltercombine several scalar images into a multicomponent image.

 ComposeImageFiltercombine several scalar images into an itk::Imageof vector pixel ( itk::Vector, itk::RGBPixel, ...), of std::complex pixel, or in an itk::VectorImage.
par Inputs and Usage
filter->SetInput(0,image0);filter->SetInput(1,image1);...filter->Update(); itk::VectorImage< PixelType, dimension >::Pointer=filter->GetOutput();All input images are expected to have the same template parameters and have the same size and origin.
see  VectorImage
par Wiki Examples:

li All Examples

li Create a vector image from a collection of scalar images

li Compose a vector image (with 3 components) from three scalar images

li Convert a real image and an imaginary image to a complex image

*/"
%javamethodmodifiers itk::simple::ComposeImageFilter::execute() "
/** ComposeImageFiltercombine several scalar images into a multicomponent image.

*/"
%javamethodmodifiers itk::simple::Compose "/**
 ComposeImageFiltercombine several scalar images into a multicomponent image.

 ComposeImageFiltercombine several scalar images into an itk::Imageof vector pixel ( itk::Vector, itk::RGBPixel, ...), of std::complex pixel, or in an itk::VectorImage.
par Inputs and Usage
filter->SetInput(0,image0);filter->SetInput(1,image1);...filter->Update(); itk::VectorImage< PixelType, dimension >::Pointer=filter->GetOutput();All input images are expected to have the same template parameters and have the same size and origin.
see  VectorImage
par Wiki Examples:

li All Examples

li Create a vector image from a collection of scalar images

li Compose a vector image (with 3 components) from three scalar images

li Convert a real image and an imaginary image to a complex image

*/"
// Generated for ClassName from /scratch/blowekamp/build/ITK-gerrit/Utilities/Doxygen/xml/classitk_1_1ConfidenceConnectedImageFilter.xml
%typemap(javaimports) itk::simple::ConfidenceConnectedImageFilter "/** Segment pixels with similar statistics using connectivity.

This filter extracts a connected set of pixels whose pixel intensities are consistent with the pixel statistics of a seed point. The mean and variance across a neighborhood (8-connected, 26-connected, etc.) are calculated for a seed point. Then pixels connected to this seed point whose values are within the confidence interval for the seed point are grouped. The width of the confidence interval is controlled by the Multiplier variable (the confidence interval is the mean plus or minus the Multiplier times the standard deviation). If the intensity variations across a segment were gaussian, a Multiplier setting of 2.5 would define a confidence interval wide enough to capture 99% of samples in the segment.
After this initial segmentation is calculated, the mean and variance are re-calculated. All the pixels in the previous segmentation are used to calculate the mean the standard deviation (as opposed to using the pixels in the neighborhood of the seed point). The segmentation is then recalculated using these refined estimates for the mean and variance of the pixel values. This process is repeated for the specified number of iterations. Setting the NumberOfIterations to zero stops the algorithm after the initial segmentation from the seed point.
NOTE: the lower and upper threshold are restricted to lie within the valid numeric limits of the input data pixel type. Also, the limits may be adjusted to contain the seed point's intensity.
par Wiki Examples:

li All Examples

li Segment pixels with similar statistics using connectivity

*/"
%javamethodmodifiers itk::simple::ConfidenceConnectedImageFilter::execute() "
/**Segment pixels with similar statistics using connectivity.

*/"
%javamethodmodifiers itk::simple::ConfidenceConnected "/**
Segment pixels with similar statistics using connectivity.

This filter extracts a connected set of pixels whose pixel intensities are consistent with the pixel statistics of a seed point. The mean and variance across a neighborhood (8-connected, 26-connected, etc.) are calculated for a seed point. Then pixels connected to this seed point whose values are within the confidence interval for the seed point are grouped. The width of the confidence interval is controlled by the Multiplier variable (the confidence interval is the mean plus or minus the Multiplier times the standard deviation). If the intensity variations across a segment were gaussian, a Multiplier setting of 2.5 would define a confidence interval wide enough to capture 99% of samples in the segment.
After this initial segmentation is calculated, the mean and variance are re-calculated. All the pixels in the previous segmentation are used to calculate the mean the standard deviation (as opposed to using the pixels in the neighborhood of the seed point). The segmentation is then recalculated using these refined estimates for the mean and variance of the pixel values. This process is repeated for the specified number of iterations. Setting the NumberOfIterations to zero stops the algorithm after the initial segmentation from the seed point.
NOTE: the lower and upper threshold are restricted to lie within the valid numeric limits of the input data pixel type. Also, the limits may be adjusted to contain the seed point's intensity.
par Wiki Examples:

li All Examples

li Segment pixels with similar statistics using connectivity

*/"
%javamethodmodifiers itk::simple::ConfidenceConnectedImageFilter::setNumberOfIterations "/**
virtual void itk::ConfidenceConnectedImageFilter::SetNumberOfIterations(unsigned int _arg)

Set/Get the number of iterations
*/"

%javamethodmodifiers itk::simple::ConfidenceConnectedImageFilter::getNumberOfIterations "/**
virtual unsigned int itk::ConfidenceConnectedImageFilter::GetNumberOfIterations() const

Set/Get the number of iterations
*/"

%javamethodmodifiers itk::simple::ConfidenceConnectedImageFilter::setMultiplier "/**
virtual void itk::ConfidenceConnectedImageFilter::SetMultiplier(double _arg)

Set/Get the multiplier to define the confidence interval. Multiplier can be anything greater than zero. A typical value is 2.5
*/"

%javamethodmodifiers itk::simple::ConfidenceConnectedImageFilter::getMultiplier "/**
virtual double itk::ConfidenceConnectedImageFilter::GetMultiplier() const

Set/Get the multiplier to define the confidence interval. Multiplier can be anything greater than zero. A typical value is 2.5
*/"

%javamethodmodifiers itk::simple::ConfidenceConnectedImageFilter::setInitialNeighborhoodRadius "/**
virtual void itk::ConfidenceConnectedImageFilter::SetInitialNeighborhoodRadius(unsigned int _arg)

Get/Set the radius of the neighborhood over which the statistics are evaluated
*/"

%javamethodmodifiers itk::simple::ConfidenceConnectedImageFilter::getInitialNeighborhoodRadius "/**
virtual const unsigned int& itk::ConfidenceConnectedImageFilter::GetInitialNeighborhoodRadius()

Get/Set the radius of the neighborhood over which the statistics are evaluated
*/"

%javamethodmodifiers itk::simple::ConfidenceConnectedImageFilter::setReplaceValue "/**
virtual void itk::ConfidenceConnectedImageFilter::SetReplaceValue(OutputImagePixelType _arg)

Set/Get value to replace thresholded pixels
*/"

%javamethodmodifiers itk::simple::ConfidenceConnectedImageFilter::getReplaceValue "/**
virtual OutputImagePixelType itk::ConfidenceConnectedImageFilter::GetReplaceValue() const

Set/Get value to replace thresholded pixels
*/"

// Generated for ClassName from /scratch/blowekamp/build/ITK-gerrit/Utilities/Doxygen/xml/classitk_1_1ConnectedComponentImageFilter.xml
%typemap(javaimports) itk::simple::ConnectedComponentImageFilter "/** Label the objects in a binary image.

 ConnectedComponentImageFilterlabels the objects in a binary image. Each distinct object is assigned a unique label. The filter experiments with some improvements to the existing implementation, and is based on run length encoding along raster lines. The final object labels start with 1 and are consecutive. Objects that are reached earlier by a raster order scan have a lower label. This is different to the behaviour of the original connected component image filter which did not produce consecutive labels or impose any particular ordering.
see  ImageToImageFilter
par Wiki Examples:

li All Examples

li Label connected components in a binary image

*/"
%javamethodmodifiers itk::simple::ConnectedComponentImageFilter::execute() "
/**Label the objects in a binary image.

*/"
%javamethodmodifiers itk::simple::ConnectedComponent "/**
Label the objects in a binary image.

 ConnectedComponentImageFilterlabels the objects in a binary image. Each distinct object is assigned a unique label. The filter experiments with some improvements to the existing implementation, and is based on run length encoding along raster lines. The final object labels start with 1 and are consecutive. Objects that are reached earlier by a raster order scan have a lower label. This is different to the behaviour of the original connected component image filter which did not produce consecutive labels or impose any particular ordering.
see  ImageToImageFilter
par Wiki Examples:

li All Examples

li Label connected components in a binary image

*/"
%javamethodmodifiers itk::simple::ConnectedComponentImageFilter::setFullyConnected "/**
virtual void itk::ConnectedComponentImageFilter::SetFullyConnected(bool _arg)

Set/Get whether the connected components are defined strictly by face connectivity or by face+edge+vertex connectivity. Default is FullyConnectedOff. For objects that are 1 pixel wide, use FullyConnectedOn.
*/"

%javamethodmodifiers itk::simple::ConnectedComponentImageFilter::getFullyConnected "/**
virtual const bool& itk::ConnectedComponentImageFilter::GetFullyConnected()

Set/Get whether the connected components are defined strictly by face connectivity or by face+edge+vertex connectivity. Default is FullyConnectedOff. For objects that are 1 pixel wide, use FullyConnectedOn.
*/"

// Generated for ClassName from /scratch/blowekamp/build/ITK-gerrit/Utilities/Doxygen/xml/classitk_1_1ConnectedThresholdImageFilter.xml
%typemap(javaimports) itk::simple::ConnectedThresholdImageFilter "/** Label pixels that are connected to a seed and lie within a range of values.

 ConnectedThresholdImageFilterlabels pixels with ReplaceValue that are connected to an initial Seed AND lie within a Lower and Upper threshold range.
*/"
%javamethodmodifiers itk::simple::ConnectedThresholdImageFilter::execute() "
/**Label pixels that are connected to a seed and lie within a range of values.

*/"
%javamethodmodifiers itk::simple::ConnectedThreshold "/**
Label pixels that are connected to a seed and lie within a range of values.

 ConnectedThresholdImageFilterlabels pixels with ReplaceValue that are connected to an initial Seed AND lie within a Lower and Upper threshold range.
*/"
%javamethodmodifiers itk::simple::ConnectedThresholdImageFilter::setLower "/**
virtual void itk::ConnectedThresholdImageFilter::SetLower(InputImagePixelType)

Set Upper and Lower Threshold inputs as values
*/"

%javamethodmodifiers itk::simple::ConnectedThresholdImageFilter::getLower "/**
virtual InputImagePixelType itk::ConnectedThresholdImageFilter::GetLower() const

*/"

%javamethodmodifiers itk::simple::ConnectedThresholdImageFilter::setUpper "/**
virtual void itk::ConnectedThresholdImageFilter::SetUpper(InputImagePixelType)

Set Upper and Lower Threshold inputs as values
*/"

%javamethodmodifiers itk::simple::ConnectedThresholdImageFilter::getUpper "/**
virtual InputImagePixelType itk::ConnectedThresholdImageFilter::GetUpper() const

Get Upper and Lower Threshold inputs as values
*/"

%javamethodmodifiers itk::simple::ConnectedThresholdImageFilter::setReplaceValue "/**
virtual void itk::ConnectedThresholdImageFilter::SetReplaceValue(OutputImagePixelType _arg)

Set/Get value to replace thresholded pixels. Pixels that lie * within Lower and Upper (inclusive) will be replaced with this value. The default is 1.
*/"

%javamethodmodifiers itk::simple::ConnectedThresholdImageFilter::getReplaceValue "/**
virtual OutputImagePixelType itk::ConnectedThresholdImageFilter::GetReplaceValue() const

Set/Get value to replace thresholded pixels. Pixels that lie * within Lower and Upper (inclusive) will be replaced with this value. The default is 1.
*/"

// Generated for ClassName from /scratch/blowekamp/build/ITK-gerrit/Utilities/Doxygen/xml/classitk_1_1ConstantPadImageFilter.xml
%typemap(javaimports) itk::simple::ConstantPadImageFilter "/** Increase the image size by padding with a constant value.

 ConstantPadImageFilterchanges the output image region. If the output image region is larger than the input image region, the extra pixels are filled in by a constant value. The output image region must be specified.
Visual explanation of padding regions.This filter is implemented as a multithreaded filter. It provides a ThreadedGenerateData()method for its implementation.
see  WrapPadImageFilter, MirrorPadImageFilter
par Wiki Examples:

li All Examples

li Pad an image with a constant value

*/"
%javamethodmodifiers itk::simple::ConstantPadImageFilter::execute() "
/**Increase the image size by padding with a constant value.

*/"
%javamethodmodifiers itk::simple::ConstantPad "/**
Increase the image size by padding with a constant value.

 ConstantPadImageFilterchanges the output image region. If the output image region is larger than the input image region, the extra pixels are filled in by a constant value. The output image region must be specified.
Visual explanation of padding regions.This filter is implemented as a multithreaded filter. It provides a ThreadedGenerateData()method for its implementation.
see  WrapPadImageFilter, MirrorPadImageFilter
par Wiki Examples:

li All Examples

li Pad an image with a constant value

*/"
%javamethodmodifiers itk::simple::ConstantPadImageFilter::setConstant "/**
void itk::ConstantPadImageFilter::SetConstant(OutputImagePixelType constant)

Set/Get the pad value. Default is Zero.
*/"

%javamethodmodifiers itk::simple::ConstantPadImageFilter::getConstant "/**
OutputImagePixelType itk::ConstantPadImageFilter::GetConstant() const

Set/Get the pad value. Default is Zero.
*/"

// Generated for ClassName from /scratch/blowekamp/build/ITK-gerrit/Utilities/Doxygen/xml/classitk_1_1ConvolutionImageFilter.xml
%typemap(javaimports) itk::simple::ConvolutionImageFilter "/** Convolve a given image with an arbitrary image kernel.

This filter operates by centering the flipped kernel at each pixel in the image and computing the inner product between pixel values in the image and pixel values in the kernel. The center of the kernel is defined asf$ lfloor (2*i+s-1)/2 rfloor f$ wheref$if$ is the index andf$sf$ is the size of the largest possible region of the kernel image. For kernels with odd sizes in all dimensions, this corresponds to the center pixel. If a dimension of the kernel image has an even size, then the center index of the kernel in that dimension will be the largest integral index that is less than the continuous index of the image center.
The kernel can optionally be normalized to sum to 1 using NormalizeOn(). Normalization is off by default.
warning This filter ignores the spacing, origin, and orientation of the kernel image and treats them as identical to those in the input image.
This code was contributed in the Insight Journal paper:
Image Kernel Convolution by Tustison N., Gee J.http://hdl.handle.net/1926/1323http://www.insight-journal.org/browse/publication/208
author Nicholas J. Tustison
James C. Gee
par Wiki Examples:

li All Examples

li Convolve an image with a kernel

*/"
%javamethodmodifiers itk::simple::ConvolutionImageFilter::execute() "
/**Convolve a given image with an arbitrary image kernel.

*/"
%javamethodmodifiers itk::simple::Convolution "/**
Convolve a given image with an arbitrary image kernel.

This filter operates by centering the flipped kernel at each pixel in the image and computing the inner product between pixel values in the image and pixel values in the kernel. The center of the kernel is defined asf$ lfloor (2*i+s-1)/2 rfloor f$ wheref$if$ is the index andf$sf$ is the size of the largest possible region of the kernel image. For kernels with odd sizes in all dimensions, this corresponds to the center pixel. If a dimension of the kernel image has an even size, then the center index of the kernel in that dimension will be the largest integral index that is less than the continuous index of the image center.
The kernel can optionally be normalized to sum to 1 using NormalizeOn(). Normalization is off by default.
warning This filter ignores the spacing, origin, and orientation of the kernel image and treats them as identical to those in the input image.
This code was contributed in the Insight Journal paper:
Image Kernel Convolution by Tustison N., Gee J.http://hdl.handle.net/1926/1323http://www.insight-journal.org/browse/publication/208
author Nicholas J. Tustison
James C. Gee
par Wiki Examples:

li All Examples

li Convolve an image with a kernel

*/"
// Generated for ClassName from /scratch/blowekamp/build/ITK-gerrit/Utilities/Doxygen/xml/classitk_1_1CosImageFilter.xml
%typemap(javaimports) itk::simple::CosImageFilter "/** Computes the cosine of each pixel.

This filter is templated over the pixel type of the input image and the pixel type of the output image.
The filter walks over all of the pixels in the input image, and for each pixel does the following:

li cast the pixel value to double ,
li apply the vcl_cos() function to the double value,
li cast the double value resulting from vcl_cos() to the pixel type of the output image,
li store the cast value into the output image.
The filter expects both images to have the same dimension (e.g. both 2D, or both 3D, or both ND)
*/"
%javamethodmodifiers itk::simple::CosImageFilter::execute() "
/**Computes the cosine of each pixel.

*/"
%javamethodmodifiers itk::simple::Cos "/**
Computes the cosine of each pixel.

This filter is templated over the pixel type of the input image and the pixel type of the output image.
The filter walks over all of the pixels in the input image, and for each pixel does the following:

li cast the pixel value to double ,
li apply the vcl_cos() function to the double value,
li cast the double value resulting from vcl_cos() to the pixel type of the output image,
li store the cast value into the output image.
The filter expects both images to have the same dimension (e.g. both 2D, or both 3D, or both ND)
*/"
// Generated for ClassName from /scratch/blowekamp/build/ITK-gerrit/Utilities/Doxygen/xml/classitk_1_1CropImageFilter.xml
%typemap(javaimports) itk::simple::CropImageFilter "/** Decrease the image size by cropping the image by an itk::Sizeat both the upper and lower bounds of the largest possible region.

 CropImageFilterchanges the image boundary of an image by removing pixels outside the target region. The target region is not specified in advance, but calculated in BeforeThreadedGenerateData().
This filter uses ExtractImageFilterto perform the cropping.
par Wiki Examples:

li All Examples

li Crop an image by specifying the region to throw away

*/"
%javamethodmodifiers itk::simple::CropImageFilter::execute() "
/**Decrease the image size by cropping the image by an itk::Sizeat both the upper and lower bounds of the largest possible region.

*/"
%javamethodmodifiers itk::simple::Crop "/**
Decrease the image size by cropping the image by an itk::Sizeat both the upper and lower bounds of the largest possible region.

 CropImageFilterchanges the image boundary of an image by removing pixels outside the target region. The target region is not specified in advance, but calculated in BeforeThreadedGenerateData().
This filter uses ExtractImageFilterto perform the cropping.
par Wiki Examples:

li All Examples

li Crop an image by specifying the region to throw away

*/"
%javamethodmodifiers itk::simple::CropImageFilter::setLowerBoundaryCropSize "/**
virtual void itk::CropImageFilter::SetLowerBoundaryCropSize(SizeType _arg)

Set/Get the cropping sizes for the upper and lower boundaries.
*/"

%javamethodmodifiers itk::simple::CropImageFilter::getLowerBoundaryCropSize "/**
virtual SizeType itk::CropImageFilter::GetLowerBoundaryCropSize() const

Set/Get the cropping sizes for the upper and lower boundaries.
*/"

%javamethodmodifiers itk::simple::CropImageFilter::setUpperBoundaryCropSize "/**
virtual void itk::CropImageFilter::SetUpperBoundaryCropSize(SizeType _arg)

Set/Get the cropping sizes for the upper and lower boundaries.
*/"

%javamethodmodifiers itk::simple::CropImageFilter::getUpperBoundaryCropSize "/**
virtual SizeType itk::CropImageFilter::GetUpperBoundaryCropSize() const

Set/Get the cropping sizes for the upper and lower boundaries.
*/"

// Generated for ClassName from /scratch/blowekamp/build/ITK-gerrit/Utilities/Doxygen/xml/classitk_1_1CurvatureAnisotropicDiffusionImageFilter.xml
%typemap(javaimports) itk::simple::CurvatureAnisotropicDiffusionImageFilter "/** 
This filter performs anisotropic diffusion on a scalar itk::Imageusing the modified curvature diffusion equation (MCDE) implemented in itkCurvatureNDAnisotropicDiffusionFunction. For detailed information on anisotropic diffusion and the MCDE see itkAnisotropicDiffusionFunction and itkCurvatureNDAnisotropicDiffusionFunction.
par Inputs and Outputs
The input and output to this filter must be a scalar itk::Imagewith numerical pixel types (float or double). A user defined type which correctly defines arithmetic operations with floating point accuracy should also give correct results.
par Parameters
Please first read all the documentation found in AnisotropicDiffusionImageFilterand AnisotropicDiffusionFunction. Also see CurvatureNDAnisotropicDiffusionFunction.
The default time step for this filter is set to the maximum theoretically stable value: 0.5 / 2^N, where N is the dimensionality of the image. For a 2D image, this means valid time steps are below 0.1250. For a 3D image, valid time steps are below 0.0625.
see  AnisotropicDiffusionImageFilter
see 
see  AnisotropicDiffusionFunction
see 
see  CurvatureNDAnisotropicDiffusionFunction

*/"
%javamethodmodifiers itk::simple::CurvatureAnisotropicDiffusionImageFilter::execute() "
/**
*/"
%javamethodmodifiers itk::simple::CurvatureAnisotropicDiffusion "/**

This filter performs anisotropic diffusion on a scalar itk::Imageusing the modified curvature diffusion equation (MCDE) implemented in itkCurvatureNDAnisotropicDiffusionFunction. For detailed information on anisotropic diffusion and the MCDE see itkAnisotropicDiffusionFunction and itkCurvatureNDAnisotropicDiffusionFunction.
par Inputs and Outputs
The input and output to this filter must be a scalar itk::Imagewith numerical pixel types (float or double). A user defined type which correctly defines arithmetic operations with floating point accuracy should also give correct results.
par Parameters
Please first read all the documentation found in AnisotropicDiffusionImageFilterand AnisotropicDiffusionFunction. Also see CurvatureNDAnisotropicDiffusionFunction.
The default time step for this filter is set to the maximum theoretically stable value: 0.5 / 2^N, where N is the dimensionality of the image. For a 2D image, this means valid time steps are below 0.1250. For a 3D image, valid time steps are below 0.0625.
see  AnisotropicDiffusionImageFilter
see 
see  AnisotropicDiffusionFunction
see 
see  CurvatureNDAnisotropicDiffusionFunction

*/"
// Generated for ClassName from /scratch/blowekamp/build/ITK-gerrit/Utilities/Doxygen/xml/classitk_1_1CurvatureFlowImageFilter.xml
%typemap(javaimports) itk::simple::CurvatureFlowImageFilter "/** Denoise an image using curvature driven flow.

 CurvatureFlowImageFilterimplements a curvature driven image denoising algorithm. Iso-brightness contours in the grayscale input image are viewed as a level set. The level set is then evolved using a curvature-based speed function:
 f[ I_t = kappa |nabla I| f]  wheref$ kappa f$ is the curvature.
The advantage of this approach is that sharp boundaries are preserved with smoothing occurring only within a region. However, it should be noted that continuous application of this scheme will result in the eventual removal of all information as each contour shrinks to zero and disappear.
Note that unlike level set segmentation algorithms, the image to be denoised is already the level set and can be set directly as the input using the SetInput()method.
This filter has two parameters: the number of update iterations to be performed and the timestep between each update.
The timestep should be small enough to ensure numerical stability. Stability is guarantee when the timestep meets the CFL (Courant-Friedrichs-Levy) condition. Broadly speaking, this condition ensures that each contour does not move more than one grid position at each timestep. In the literature, the timestep is typically user specified and have to manually tuned to the application.
This filter make use of the multi-threaded finite difference solver hierarchy. Updates are computed using a CurvatureFlowFunctionobject. A zero flux Neumann boundary condition when computing derivatives near the data boundary.
This filter may be streamed. To support streaming this filter produces a padded output which takes into account edge effects. The size of the padding is m_NumberOfIterations on each edge. Users of this filter should only make use of the center valid central region.
warning This filter assumes that the input and output types have the same dimensions. This filter also requires that the output image pixels are of a floating point type. This filter works for any dimensional images.
Reference: Level Set Methods and Fast Marching Methods, J.A. Sethian, Cambridge Press, Chapter 16, Second edition, 1999.
see  DenseFiniteDifferenceImageFilter
see 
see  CurvatureFlowFunction
see 
see  MinMaxCurvatureFlowImageFilter
see 
see  BinaryMinMaxCurvatureFlowImageFilter
Input/Output Restrictions: TInputImage and TOutputImage must have the same dimension. TOutputImage's pixel type must be a real number type.
*/"
%javamethodmodifiers itk::simple::CurvatureFlowImageFilter::execute() "
/**Denoise an image using curvature driven flow.

*/"
%javamethodmodifiers itk::simple::CurvatureFlow "/**
Denoise an image using curvature driven flow.

 CurvatureFlowImageFilterimplements a curvature driven image denoising algorithm. Iso-brightness contours in the grayscale input image are viewed as a level set. The level set is then evolved using a curvature-based speed function:
 f[ I_t = kappa |nabla I| f]  wheref$ kappa f$ is the curvature.
The advantage of this approach is that sharp boundaries are preserved with smoothing occurring only within a region. However, it should be noted that continuous application of this scheme will result in the eventual removal of all information as each contour shrinks to zero and disappear.
Note that unlike level set segmentation algorithms, the image to be denoised is already the level set and can be set directly as the input using the SetInput()method.
This filter has two parameters: the number of update iterations to be performed and the timestep between each update.
The timestep should be small enough to ensure numerical stability. Stability is guarantee when the timestep meets the CFL (Courant-Friedrichs-Levy) condition. Broadly speaking, this condition ensures that each contour does not move more than one grid position at each timestep. In the literature, the timestep is typically user specified and have to manually tuned to the application.
This filter make use of the multi-threaded finite difference solver hierarchy. Updates are computed using a CurvatureFlowFunctionobject. A zero flux Neumann boundary condition when computing derivatives near the data boundary.
This filter may be streamed. To support streaming this filter produces a padded output which takes into account edge effects. The size of the padding is m_NumberOfIterations on each edge. Users of this filter should only make use of the center valid central region.
warning This filter assumes that the input and output types have the same dimensions. This filter also requires that the output image pixels are of a floating point type. This filter works for any dimensional images.
Reference: Level Set Methods and Fast Marching Methods, J.A. Sethian, Cambridge Press, Chapter 16, Second edition, 1999.
see  DenseFiniteDifferenceImageFilter
see 
see  CurvatureFlowFunction
see 
see  MinMaxCurvatureFlowImageFilter
see 
see  BinaryMinMaxCurvatureFlowImageFilter
Input/Output Restrictions: TInputImage and TOutputImage must have the same dimension. TOutputImage's pixel type must be a real number type.
*/"
%javamethodmodifiers itk::simple::CurvatureFlowImageFilter::setTimeStep "/**
virtual void itk::CurvatureFlowImageFilter::SetTimeStep(TimeStepType _arg)

Set the timestep parameter.
*/"

%javamethodmodifiers itk::simple::CurvatureFlowImageFilter::getTimeStep "/**
virtual TimeStepType itk::CurvatureFlowImageFilter::GetTimeStep() const

Get the timestep parameter.
*/"

// Generated for ClassName from /scratch/blowekamp/build/ITK-gerrit/Utilities/Doxygen/xml/classitk_1_1DanielssonDistanceMapImageFilter.xml
%typemap(javaimports) itk::simple::DanielssonDistanceMapImageFilter "/** This filter computes the distance map of the input image as an approximation with pixel accuracy to the Euclidean distance.

TInputImageInput ImageType
TOutputImageOutput ImageType
TVoronoiImageVoronoi ImageType. Note the default value is TInputImage.
The input is assumed to contain numeric codes defining objects. The filter will produce as output the following images:

li AVoronoi partitionusing the same numeric codes as the input.
li Adistance mapwith the approximation to the euclidean distance. from a particular pixel to the nearest object to this pixel in the input image.
li Avector mapcontaining the component of the vector relating the current pixel with the closest point of the closest object to this pixel. Given that the components of the distance are computed in pixels, the vector is represented by an itk::Offset. That is, physical coordinates are not used.
This filter is N-dimensional and known to be efficient in computational time. The algorithm is the N-dimensional version of the 4SED algorithm given for two dimensions in:
Danielsson, Per-Erik. Euclidean Distance Mapping. Computer Graphics and ImageProcessing 14, 227-248 (1980).
*/"
%javamethodmodifiers itk::simple::DanielssonDistanceMapImageFilter::execute() "
/**This filter computes the distance map of the input image as an approximation with pixel accuracy to the Euclidean distance.

*/"
%javamethodmodifiers itk::simple::DanielssonDistanceMap "/**
This filter computes the distance map of the input image as an approximation with pixel accuracy to the Euclidean distance.

TInputImageInput ImageType
TOutputImageOutput ImageType
TVoronoiImageVoronoi ImageType. Note the default value is TInputImage.
The input is assumed to contain numeric codes defining objects. The filter will produce as output the following images:

li AVoronoi partitionusing the same numeric codes as the input.
li Adistance mapwith the approximation to the euclidean distance. from a particular pixel to the nearest object to this pixel in the input image.
li Avector mapcontaining the component of the vector relating the current pixel with the closest point of the closest object to this pixel. Given that the components of the distance are computed in pixels, the vector is represented by an itk::Offset. That is, physical coordinates are not used.
This filter is N-dimensional and known to be efficient in computational time. The algorithm is the N-dimensional version of the 4SED algorithm given for two dimensions in:
Danielsson, Per-Erik. Euclidean Distance Mapping. Computer Graphics and ImageProcessing 14, 227-248 (1980).
*/"
%javamethodmodifiers itk::simple::DanielssonDistanceMapImageFilter::setInputIsBinary "/**
virtual void itk::DanielssonDistanceMapImageFilter::SetInputIsBinary(bool _arg)

Set if the input is binary. If this variable is set, each nonzero pixel in the input image will be given a unique numeric code to be used by the Voronoi partition. If the image is binary but you are not interested in the Voronoi regions of the different nonzero pixels, then you need not set this.
*/"

%javamethodmodifiers itk::simple::DanielssonDistanceMapImageFilter::getInputIsBinary "/**
virtual const bool& itk::DanielssonDistanceMapImageFilter::GetInputIsBinary()

Get if the input is binary. See SetInputIsBinary().
*/"

%javamethodmodifiers itk::simple::DanielssonDistanceMapImageFilter::setSquaredDistance "/**
virtual void itk::DanielssonDistanceMapImageFilter::SetSquaredDistance(bool _arg)

Set if the distance should be squared.
*/"

%javamethodmodifiers itk::simple::DanielssonDistanceMapImageFilter::getSquaredDistance "/**
virtual const bool& itk::DanielssonDistanceMapImageFilter::GetSquaredDistance()

Get the distance squared.
*/"

%javamethodmodifiers itk::simple::DanielssonDistanceMapImageFilter::setUseImageSpacing "/**
virtual void itk::DanielssonDistanceMapImageFilter::SetUseImageSpacing(bool _arg)

Set if image spacing should be used in computing distances.
*/"

%javamethodmodifiers itk::simple::DanielssonDistanceMapImageFilter::getUseImageSpacing "/**
virtual const bool& itk::DanielssonDistanceMapImageFilter::GetUseImageSpacing()

Get whether spacing is used.
*/"

// Generated for ClassName from /scratch/blowekamp/build/ITK-gerrit/Utilities/Doxygen/xml/classitk_1_1DerivativeImageFilter.xml
%typemap(javaimports) itk::simple::DerivativeImageFilter "/** Computes the directional derivative of an image. The directional derivative at each pixel location is computed by convolution with a derivative operator of user-specified order.

SetOrder specifies the order of the derivative.
SetDirection specifies the direction of the derivative with respect to the coordinate axes of the image.
see  Image
see 
see  Neighborhood
see 
see  NeighborhoodOperator
see 
see  NeighborhoodIterator
par Wiki Examples:

li All Examples

li Compute the derivative of an image in a particular direction

*/"
%javamethodmodifiers itk::simple::DerivativeImageFilter::execute() "
/**Computes the directional derivative of an image. The directional derivative at each pixel location is computed by convolution with a derivative operator of user-specified order.

*/"
%javamethodmodifiers itk::simple::Derivative "/**
Computes the directional derivative of an image. The directional derivative at each pixel location is computed by convolution with a derivative operator of user-specified order.

SetOrder specifies the order of the derivative.
SetDirection specifies the direction of the derivative with respect to the coordinate axes of the image.
see  Image
see 
see  Neighborhood
see 
see  NeighborhoodOperator
see 
see  NeighborhoodIterator
par Wiki Examples:

li All Examples

li Compute the derivative of an image in a particular direction

*/"
%javamethodmodifiers itk::simple::DerivativeImageFilter::setDirection "/**
virtual void itk::DerivativeImageFilter::SetDirection(unsigned int _arg)

End concept checking Standard get/set macros for filter parameters.
*/"

%javamethodmodifiers itk::simple::DerivativeImageFilter::getDirection "/**
virtual unsigned int itk::DerivativeImageFilter::GetDirection() const

End concept checking Standard get/set macros for filter parameters.
*/"

%javamethodmodifiers itk::simple::DerivativeImageFilter::setOrder "/**
virtual void itk::DerivativeImageFilter::SetOrder(unsigned int _arg)

End concept checking Standard get/set macros for filter parameters.
*/"

%javamethodmodifiers itk::simple::DerivativeImageFilter::getOrder "/**
virtual unsigned int itk::DerivativeImageFilter::GetOrder() const

End concept checking Standard get/set macros for filter parameters.
*/"

%javamethodmodifiers itk::simple::DerivativeImageFilter::setUseImageSpacing "/**
virtual void itk::DerivativeImageFilter::SetUseImageSpacing(bool _arg)

Set/Get whether or not the filter will use the spacing of the input image in its calculations
*/"

%javamethodmodifiers itk::simple::DerivativeImageFilter::getUseImageSpacing "/**
virtual bool itk::DerivativeImageFilter::GetUseImageSpacing() const

Set/Get whether or not the filter will use the spacing of the input image in its calculations
*/"

// Generated for ClassName from /scratch/blowekamp/build/ITK-gerrit/Utilities/Doxygen/xml/classitk_1_1DilateObjectMorphologyImageFilter.xml
%typemap(javaimports) itk::simple::DilateObjectMorphologyImageFilter "/** dilation of an object in an image

Dilate an image using binary morphology. Pixel values matching the object value are considered the foreground and all other pixels are background. This is useful in processing mask images containing only one object.
If a pixel's value is equal to the object value and the pixel is adjacent to a non-object valued pixel, then the kernel is centered on the object-value pixel and neighboring pixels covered by the kernel are assigned the object value. The structuring element is assumed to be composed of binary values (zero or one).
see  ObjectMorphologyImageFilter, ErodeObjectMorphologyImageFilter
see 
see  BinaryDilateImageFilter

*/"
%javamethodmodifiers itk::simple::DilateObjectMorphologyImageFilter::execute() "
/**dilation of an object in an image

*/"
%javamethodmodifiers itk::simple::DilateObjectMorphology "/**
dilation of an object in an image

Dilate an image using binary morphology. Pixel values matching the object value are considered the foreground and all other pixels are background. This is useful in processing mask images containing only one object.
If a pixel's value is equal to the object value and the pixel is adjacent to a non-object valued pixel, then the kernel is centered on the object-value pixel and neighboring pixels covered by the kernel are assigned the object value. The structuring element is assumed to be composed of binary values (zero or one).
see  ObjectMorphologyImageFilter, ErodeObjectMorphologyImageFilter
see 
see  BinaryDilateImageFilter

*/"
// Generated for ClassName from /scratch/blowekamp/build/ITK-gerrit/Utilities/Doxygen/xml/classitk_1_1DiscreteGaussianImageFilter.xml
%typemap(javaimports) itk::simple::DiscreteGaussianImageFilter "/** Blurs an image by separable convolution with discrete gaussian kernels. This filter performs Gaussian blurring by separable convolution of an image and a discrete Gaussian operator (kernel).

The Gaussian operator used here was described by Tony Lindeberg (Discrete Scale-Space Theory and the Scale-Space Primal Sketch. Dissertation. Royal Institute of Technology, Stockholm, Sweden. May 1991.) The Gaussian kernel used here was designed so that smoothing and derivative operations commute after discretization.
The variance or standard deviation (sigma) will be evaluated as pixel units if SetUseImageSpacing is off (false) or as physical units if SetUseImageSpacing is on (true, default). The variance can be set independently in each dimension.
When the Gaussian kernel is small, this filter tends to run faster than itk::RecursiveGaussianImageFilter.
see  GaussianOperator
see 
see  Image
see 
see  Neighborhood
see 
see  NeighborhoodOperator
see 
see  RecursiveGaussianImageFilter
par Wiki Examples:

li All Examples

li Smooth an image with a discrete Gaussian filter

*/"
%javamethodmodifiers itk::simple::DiscreteGaussianImageFilter::execute() "
/**Blurs an image by separable convolution with discrete gaussian kernels. This filter performs Gaussian blurring by separable convolution of an image and a discrete Gaussian operator (kernel).

*/"
%javamethodmodifiers itk::simple::DiscreteGaussian "/**
Blurs an image by separable convolution with discrete gaussian kernels. This filter performs Gaussian blurring by separable convolution of an image and a discrete Gaussian operator (kernel).

The Gaussian operator used here was described by Tony Lindeberg (Discrete Scale-Space Theory and the Scale-Space Primal Sketch. Dissertation. Royal Institute of Technology, Stockholm, Sweden. May 1991.) The Gaussian kernel used here was designed so that smoothing and derivative operations commute after discretization.
The variance or standard deviation (sigma) will be evaluated as pixel units if SetUseImageSpacing is off (false) or as physical units if SetUseImageSpacing is on (true, default). The variance can be set independently in each dimension.
When the Gaussian kernel is small, this filter tends to run faster than itk::RecursiveGaussianImageFilter.
see  GaussianOperator
see 
see  Image
see 
see  Neighborhood
see 
see  NeighborhoodOperator
see 
see  RecursiveGaussianImageFilter
par Wiki Examples:

li All Examples

li Smooth an image with a discrete Gaussian filter

*/"
%javamethodmodifiers itk::simple::DiscreteGaussianImageFilter::setVariance "/**
void itk::DiscreteGaussianImageFilter::SetVariance(const float *v)

*/"

%javamethodmodifiers itk::simple::DiscreteGaussianImageFilter::getVariance "/**
virtual const ArrayType itk::DiscreteGaussianImageFilter::GetVariance() const

The variance for the discrete Gaussian kernel. Sets the variance independently for each dimension, but see also SetVariance(const double v). The default is 0.0 in each dimension. If UseImageSpacing is true, the units are the physical units of your image. If UseImageSpacing is false then the units are pixels.
*/"

%javamethodmodifiers itk::simple::DiscreteGaussianImageFilter::setMaximumKernelWidth "/**
virtual void itk::DiscreteGaussianImageFilter::SetMaximumKernelWidth(int _arg)

Set the kernel to be no wider than MaximumKernelWidth pixels, even if MaximumError demands it. The default is 32 pixels.
*/"

%javamethodmodifiers itk::simple::DiscreteGaussianImageFilter::getMaximumKernelWidth "/**
virtual int itk::DiscreteGaussianImageFilter::GetMaximumKernelWidth() const

Set the kernel to be no wider than MaximumKernelWidth pixels, even if MaximumError demands it. The default is 32 pixels.
*/"

%javamethodmodifiers itk::simple::DiscreteGaussianImageFilter::setMaximumError "/**
void itk::DiscreteGaussianImageFilter::SetMaximumError(const float *v)

*/"

%javamethodmodifiers itk::simple::DiscreteGaussianImageFilter::getMaximumError "/**
virtual const ArrayType itk::DiscreteGaussianImageFilter::GetMaximumError() const

The algorithm will size the discrete kernel so that the error resulting from truncation of the kernel is no greater than MaximumError. The default is 0.01 in each dimension.
*/"

%javamethodmodifiers itk::simple::DiscreteGaussianImageFilter::setUseImageSpacing "/**
virtual void itk::DiscreteGaussianImageFilter::SetUseImageSpacing(bool _arg)

Set/Get whether or not the filter will use the spacing of the input image in its calculations
*/"

%javamethodmodifiers itk::simple::DiscreteGaussianImageFilter::getUseImageSpacing "/**
virtual bool itk::DiscreteGaussianImageFilter::GetUseImageSpacing() const

Set/Get whether or not the filter will use the spacing of the input image in its calculations
*/"

// Generated for ClassName from /scratch/blowekamp/build/ITK-gerrit/Utilities/Doxygen/xml/classitk_1_1DivideImageFilter.xml
%typemap(javaimports) itk::simple::DivideImageFilter "/** Pixel-wise division of two images.

This class is templated over the types of the two input images and the type of the output image. When the divisor is zero, the division result is set to the maximum number that can be represented by default to avoid exception. Numeric conversions (castings) are done by the C++ defaults.
par Wiki Examples:

li All Examples

li Pixel-wise division of two images

*/"
%javamethodmodifiers itk::simple::DivideImageFilter::execute() "
/**Pixel-wise division of two images.

*/"
%javamethodmodifiers itk::simple::Divide "/**
Pixel-wise division of two images.

This class is templated over the types of the two input images and the type of the output image. When the divisor is zero, the division result is set to the maximum number that can be represented by default to avoid exception. Numeric conversions (castings) are done by the C++ defaults.
par Wiki Examples:

li All Examples

li Pixel-wise division of two images

*/"
// Generated for ClassName from /scratch/blowekamp/build/ITK-gerrit/Utilities/Doxygen/xml/classitk_1_1DivideByConstantImageFilter.xml
%typemap(javaimports) itk::simple::DivideByConstantImageFilter "/** Add a constant to all input pixels.

This filter is templated over the input image type and the output image type.
author Tom Vercauteren, INRIA & Mauna Kea Technologies
Based on filters from the Insight Journal paper:http://hdl.handle.net/1926/510
see  DivideImageFilter

*/"
%javamethodmodifiers itk::simple::DivideByConstantImageFilter::execute() "
/**Add a constant to all input pixels.

*/"
%javamethodmodifiers itk::simple::DivideByConstant "/**
Add a constant to all input pixels.

This filter is templated over the input image type and the output image type.
author Tom Vercauteren, INRIA & Mauna Kea Technologies
Based on filters from the Insight Journal paper:http://hdl.handle.net/1926/510
see  DivideImageFilter

*/"
// Generated for ClassName from /scratch/blowekamp/build/ITK-gerrit/Utilities/Doxygen/xml/classitk_1_1DoubleThresholdImageFilter.xml
%typemap(javaimports) itk::simple::DoubleThresholdImageFilter "/** Binarize an input image using double thresholding.

Double threshold addresses the difficulty in selecting a threshold that will select the objects of interest without selecting extraneous objects. Double threshold considers two threshold ranges: a narrow range and a wide range (where the wide range encompasses the narrow range). If the wide range was used for a traditional threshold (where values inside the range map to the foreground and values outside the range map to the background), many extraneous pixels may survive the threshold operation. If the narrow range was used for a traditional threshold, then too few pixels may survive the threshold.
Double threshold uses the narrow threshold image as a marker image and the wide threshold image as a mask image in the geodesic dilation. Essentially, the marker image (narrow threshold) is dilated but constrained to lie within the mask image (wide threshold). Thus, only the objects of interest (those pixels that survived the narrow threshold) are extracted but the those objects appear in the final image as they would have if the wide threshold was used.
see  GrayscaleGeodesicDilateImageFilter
see 
see  MorphologyImageFilter, GrayscaleDilateImageFilter, GrayscaleFunctionDilateImageFilter, BinaryDilateImageFilter

*/"
%javamethodmodifiers itk::simple::DoubleThresholdImageFilter::execute() "
/**Binarize an input image using double thresholding.

*/"
%javamethodmodifiers itk::simple::DoubleThreshold "/**
Binarize an input image using double thresholding.

Double threshold addresses the difficulty in selecting a threshold that will select the objects of interest without selecting extraneous objects. Double threshold considers two threshold ranges: a narrow range and a wide range (where the wide range encompasses the narrow range). If the wide range was used for a traditional threshold (where values inside the range map to the foreground and values outside the range map to the background), many extraneous pixels may survive the threshold operation. If the narrow range was used for a traditional threshold, then too few pixels may survive the threshold.
Double threshold uses the narrow threshold image as a marker image and the wide threshold image as a mask image in the geodesic dilation. Essentially, the marker image (narrow threshold) is dilated but constrained to lie within the mask image (wide threshold). Thus, only the objects of interest (those pixels that survived the narrow threshold) are extracted but the those objects appear in the final image as they would have if the wide threshold was used.
see  GrayscaleGeodesicDilateImageFilter
see 
see  MorphologyImageFilter, GrayscaleDilateImageFilter, GrayscaleFunctionDilateImageFilter, BinaryDilateImageFilter

*/"
%javamethodmodifiers itk::simple::DoubleThresholdImageFilter::setThreshold1 "/**
virtual void itk::DoubleThresholdImageFilter::SetThreshold1(InputPixelType _arg)

Set the thresholds. Four thresholds should be specified. The two lower thresholds default to NumericTraits<InputPixelType>::NonpositiveMin(). The two upper thresholds default NumericTraits<InputPixelType>::max. Threshold1 <= Threshold2 <= Threshold3 <= Threshold4.
*/"

%javamethodmodifiers itk::simple::DoubleThresholdImageFilter::getThreshold1 "/**
virtual InputPixelType itk::DoubleThresholdImageFilter::GetThreshold1() const

Get the threshold values.
*/"

%javamethodmodifiers itk::simple::DoubleThresholdImageFilter::setThreshold2 "/**
virtual void itk::DoubleThresholdImageFilter::SetThreshold2(InputPixelType _arg)

Set the thresholds. Four thresholds should be specified. The two lower thresholds default to NumericTraits<InputPixelType>::NonpositiveMin(). The two upper thresholds default NumericTraits<InputPixelType>::max. Threshold1 <= Threshold2 <= Threshold3 <= Threshold4.
*/"

%javamethodmodifiers itk::simple::DoubleThresholdImageFilter::getThreshold2 "/**
virtual InputPixelType itk::DoubleThresholdImageFilter::GetThreshold2() const

Get the threshold values.
*/"

%javamethodmodifiers itk::simple::DoubleThresholdImageFilter::setThreshold3 "/**
virtual void itk::DoubleThresholdImageFilter::SetThreshold3(InputPixelType _arg)

Set the thresholds. Four thresholds should be specified. The two lower thresholds default to NumericTraits<InputPixelType>::NonpositiveMin(). The two upper thresholds default NumericTraits<InputPixelType>::max. Threshold1 <= Threshold2 <= Threshold3 <= Threshold4.
*/"

%javamethodmodifiers itk::simple::DoubleThresholdImageFilter::getThreshold3 "/**
virtual InputPixelType itk::DoubleThresholdImageFilter::GetThreshold3() const

Get the threshold values.
*/"

%javamethodmodifiers itk::simple::DoubleThresholdImageFilter::setThreshold4 "/**
virtual void itk::DoubleThresholdImageFilter::SetThreshold4(InputPixelType _arg)

Set the thresholds. Four thresholds should be specified. The two lower thresholds default to NumericTraits<InputPixelType>::NonpositiveMin(). The two upper thresholds default NumericTraits<InputPixelType>::max. Threshold1 <= Threshold2 <= Threshold3 <= Threshold4.
*/"

%javamethodmodifiers itk::simple::DoubleThresholdImageFilter::getThreshold4 "/**
virtual InputPixelType itk::DoubleThresholdImageFilter::GetThreshold4() const

Get the threshold values.
*/"

%javamethodmodifiers itk::simple::DoubleThresholdImageFilter::setInsideValue "/**
virtual void itk::DoubleThresholdImageFilter::SetInsideValue(OutputPixelType _arg)

Set the inside pixel value. The default value NumericTraits<OutputPixelType>::max()
*/"

%javamethodmodifiers itk::simple::DoubleThresholdImageFilter::getInsideValue "/**
virtual OutputPixelType itk::DoubleThresholdImageFilter::GetInsideValue() const

Get the inside pixel value.
*/"

%javamethodmodifiers itk::simple::DoubleThresholdImageFilter::setOutsideValue "/**
virtual void itk::DoubleThresholdImageFilter::SetOutsideValue(OutputPixelType _arg)

Set the outside pixel value. The default value NumericTraits<OutputPixelType>::Zero.
*/"

%javamethodmodifiers itk::simple::DoubleThresholdImageFilter::getOutsideValue "/**
virtual OutputPixelType itk::DoubleThresholdImageFilter::GetOutsideValue() const

Get the outside pixel value.
*/"

%javamethodmodifiers itk::simple::DoubleThresholdImageFilter::setFullyConnected "/**
virtual void itk::DoubleThresholdImageFilter::SetFullyConnected(bool _arg)

Set/Get whether the connected components are defined strictly by face connectivity or by face+edge+vertex connectivity. Default is FullyConnectedOff. For objects that are 1 pixel wide, use FullyConnectedOn.
*/"

%javamethodmodifiers itk::simple::DoubleThresholdImageFilter::getFullyConnected "/**
virtual const bool& itk::DoubleThresholdImageFilter::GetFullyConnected()

Set/Get whether the connected components are defined strictly by face connectivity or by face+edge+vertex connectivity. Default is FullyConnectedOff. For objects that are 1 pixel wide, use FullyConnectedOn.
*/"

// Generated for ClassName from /scratch/blowekamp/build/ITK-gerrit/Utilities/Doxygen/xml/classitk_1_1EdgePotentialImageFilter.xml
%typemap(javaimports) itk::simple::EdgePotentialImageFilter "/** Computes the edge potential of an image from the image gradient.

Input to this filter should be a CovariantVectorimage representing the image gradient.
The filter expect both the input and output images to have the same number of dimensions, and the output to be of a scalar image type.
*/"
%javamethodmodifiers itk::simple::EdgePotentialImageFilter::execute() "
/**Computes the edge potential of an image from the image gradient.

*/"
%javamethodmodifiers itk::simple::EdgePotential "/**
Computes the edge potential of an image from the image gradient.

Input to this filter should be a CovariantVectorimage representing the image gradient.
The filter expect both the input and output images to have the same number of dimensions, and the output to be of a scalar image type.
*/"
// Generated for ClassName from /scratch/blowekamp/build/ITK-gerrit/Utilities/Doxygen/xml/classitk_1_1ErodeObjectMorphologyImageFilter.xml
%typemap(javaimports) itk::simple::ErodeObjectMorphologyImageFilter "/** Erosion of an object in an image.

Erosion of an image using binary morphology. Pixel values matching the object value are considered the object and all other pixels are background. This is useful in processing mask images containing only one object.
If the pixel covered by the center of the kernel has the pixel value ObjectValue and the pixel is adjacent to a non-object valued pixel, then the kernel is centered on the object-value pixel and neighboring pixels covered by the kernel are assigned the background value. The structuring element is assumed to be composed of binary values (zero or one).
see  ObjectMorphologyImageFilter, BinaryFunctionErodeImageFilter
see 
see  BinaryErodeImageFilter

*/"
%javamethodmodifiers itk::simple::ErodeObjectMorphologyImageFilter::execute() "
/**Erosion of an object in an image.

*/"
%javamethodmodifiers itk::simple::ErodeObjectMorphology "/**
Erosion of an object in an image.

Erosion of an image using binary morphology. Pixel values matching the object value are considered the object and all other pixels are background. This is useful in processing mask images containing only one object.
If the pixel covered by the center of the kernel has the pixel value ObjectValue and the pixel is adjacent to a non-object valued pixel, then the kernel is centered on the object-value pixel and neighboring pixels covered by the kernel are assigned the background value. The structuring element is assumed to be composed of binary values (zero or one).
see  ObjectMorphologyImageFilter, BinaryFunctionErodeImageFilter
see 
see  BinaryErodeImageFilter

*/"
%javamethodmodifiers itk::simple::ErodeObjectMorphologyImageFilter::setBackgroundValue "/**
virtual void itk::ErodeObjectMorphologyImageFilter::SetBackgroundValue(PixelType _arg)

Set the value to be assigned to eroded pixels
*/"

%javamethodmodifiers itk::simple::ErodeObjectMorphologyImageFilter::getBackgroundValue "/**
virtual PixelType itk::ErodeObjectMorphologyImageFilter::GetBackgroundValue() const

Get the value to be assigned to eroded pixels
*/"

// Generated for ClassName from /scratch/blowekamp/build/ITK-gerrit/Utilities/Doxygen/xml/classitk_1_1ExpImageFilter.xml
%typemap(javaimports) itk::simple::ExpImageFilter "/** Computes the exponential function of each pixel.

The computation is performed using vcl_exp(x).
*/"
%javamethodmodifiers itk::simple::ExpImageFilter::execute() "
/**Computes the exponential function of each pixel.

*/"
%javamethodmodifiers itk::simple::Exp "/**
Computes the exponential function of each pixel.

The computation is performed using vcl_exp(x).
*/"
// Generated for ClassName from /scratch/blowekamp/build/ITK-gerrit/Utilities/Doxygen/xml/classitk_1_1ExpNegativeImageFilter.xml
%typemap(javaimports) itk::simple::ExpNegativeImageFilter "/** Computes the function exp(-K.x) for each input pixel.

Every output pixel is equal to vcl_exp(-K.x ). where x is the intensity of the homologous input pixel, and K is a user-provided constant.
*/"
%javamethodmodifiers itk::simple::ExpNegativeImageFilter::execute() "
/**Computes the function exp(-K.x) for each input pixel.

*/"
%javamethodmodifiers itk::simple::ExpNegative "/**
Computes the function exp(-K.x) for each input pixel.

Every output pixel is equal to vcl_exp(-K.x ). where x is the intensity of the homologous input pixel, and K is a user-provided constant.
*/"
// Generated for ClassName from /scratch/blowekamp/build/ITK-gerrit/Utilities/Doxygen/xml/classitk_1_1ExtractImageFilter.xml
%typemap(javaimports) itk::simple::ExtractImageFilter "/** Decrease the image size by cropping the image to the selected region bounds.

 ExtractImageFilterchanges the image boundary of an image by removing pixels outside the target region. The target region must be specified.
 ExtractImageFilteralso collapses dimensions so that the input image may have more dimensions than the output image (i.e. 4-D input image to a 3-D output image). To specify what dimensions to collapse, the ExtractionRegion must be specified. For any dimension dim where ExtractionRegion.Size[dim] = 0, that dimension is collapsed. The index to collapse on is specified by ExtractionRegion.Index[dim]. For example, we have a image 4D = a 4x4x4x4 image, and we want to get a 3D image, 3D = a 4x4x4 image, specified as [x,y,z,2] from 4D (i.e. the 3rd time slice from 4D). The ExtractionRegion.Size = [4,4,4,0] and ExtractionRegion.Index = [0,0,0,2].
The number of dimension in ExtractionRegion.Size and Indexmust = InputImageDimension. The number of non-zero dimensions in ExtractionRegion.Size must = OutputImageDimension.
The output image produced by this filter will have the same origin as the input image, while the ImageRegionof the output image will start at the starting index value provided in the ExtractRegion parameter. If you are looking for a filter that will re-compute the origin of the output image, and provide an output image region whose index is set to zeros, then you may want to use the RegionOfInterestImageFilter. The output spacing is is simply the collapsed version of the input spacing.
Determining the direction of the collapsed output image from an larger dimensional input space is an ill defined problem in general. It is required that the application developer select the desired transformation strategy for collapsing direction cosigns. It is REQUIRED that a strategy be explicitly requested (i.e. there is no working default). Direction Collapsing Strategies: 1) DirectionCollapseToUnknown(); This is the default and the filter can not run when this is set. The reason is to explicitly force the application developer to define their desired behavior. 1) DirectionCollapseToIdentity(); Output has identity direction no matter what 2) DirectionCollapseToSubmatrix(); Output direction is the sub-matrix if it is positive definite, else throw an exception.
This filter is implemented as a multithreaded filter. It provides a ThreadedGenerateData()method for its implementation.
note This filter is derived from InPlaceImageFilter. When the input to this filter matched the output requirested region, like with streaming filter for input, then setting this filter to run in-place will result in no copying of the bulk pixel data.
see  CropImageFilter
par Wiki Examples:

li All Examples

li Crop an image by specifying the region to keep

*/"
%javamethodmodifiers itk::simple::ExtractImageFilter::execute() "
/**Decrease the image size by cropping the image to the selected region bounds.

*/"
%javamethodmodifiers itk::simple::Extract "/**
Decrease the image size by cropping the image to the selected region bounds.

 ExtractImageFilterchanges the image boundary of an image by removing pixels outside the target region. The target region must be specified.
 ExtractImageFilteralso collapses dimensions so that the input image may have more dimensions than the output image (i.e. 4-D input image to a 3-D output image). To specify what dimensions to collapse, the ExtractionRegion must be specified. For any dimension dim where ExtractionRegion.Size[dim] = 0, that dimension is collapsed. The index to collapse on is specified by ExtractionRegion.Index[dim]. For example, we have a image 4D = a 4x4x4x4 image, and we want to get a 3D image, 3D = a 4x4x4 image, specified as [x,y,z,2] from 4D (i.e. the 3rd time slice from 4D). The ExtractionRegion.Size = [4,4,4,0] and ExtractionRegion.Index = [0,0,0,2].
The number of dimension in ExtractionRegion.Size and Indexmust = InputImageDimension. The number of non-zero dimensions in ExtractionRegion.Size must = OutputImageDimension.
The output image produced by this filter will have the same origin as the input image, while the ImageRegionof the output image will start at the starting index value provided in the ExtractRegion parameter. If you are looking for a filter that will re-compute the origin of the output image, and provide an output image region whose index is set to zeros, then you may want to use the RegionOfInterestImageFilter. The output spacing is is simply the collapsed version of the input spacing.
Determining the direction of the collapsed output image from an larger dimensional input space is an ill defined problem in general. It is required that the application developer select the desired transformation strategy for collapsing direction cosigns. It is REQUIRED that a strategy be explicitly requested (i.e. there is no working default). Direction Collapsing Strategies: 1) DirectionCollapseToUnknown(); This is the default and the filter can not run when this is set. The reason is to explicitly force the application developer to define their desired behavior. 1) DirectionCollapseToIdentity(); Output has identity direction no matter what 2) DirectionCollapseToSubmatrix(); Output direction is the sub-matrix if it is positive definite, else throw an exception.
This filter is implemented as a multithreaded filter. It provides a ThreadedGenerateData()method for its implementation.
note This filter is derived from InPlaceImageFilter. When the input to this filter matched the output requirested region, like with streaming filter for input, then setting this filter to run in-place will result in no copying of the bulk pixel data.
see  CropImageFilter
par Wiki Examples:

li All Examples

li Crop an image by specifying the region to keep

*/"
%javamethodmodifiers itk::simple::ExtractImageFilter::setDirectionCollapseToStrategy "/**
void itk::ExtractImageFilter::SetDirectionCollapseToStrategy(const DIRECTIONCOLLAPSESTRATEGY choosenStrategy)

Set the strategy to be used to collapse pysical space dimensions.
itk::itkExtractImageFilter::DIRECTIONCOLLAPSETOIDENTITY Set the strategy so that all collapsed images have an identity direction. Use this strategy when you know that retention of the physical space orientation of the collapsed image is not important.
itk::itkExtractImageFilter::DIRECTIONCOLLAPSETOGUESS Set the strategy so that all collapsed images where output direction is the sub-matrix it it is positive definite, else return identity. This is backwards compatible with ITKv3, but is highly discouraged because the results are difficult to anticipate under differing data scenerios.
itk::itkExtractImageFilter::DIRECTIONCOLLAPSETOSUBMATRIX Set the strategy so that all collapsed images where output direction is the sub-matrix it it is positive definite, else throw an exception. Use this strategy when it is known that properly identified physical space sub-volumes can be reliably extracted from a higher dimensional space. For example when the application programmer knows that a 4D image is 3D+time, and that the 3D sub-space is properly defined.
*/"

%javamethodmodifiers itk::simple::ExtractImageFilter::getDirectionCollapseToStrategy "/**
DIRECTIONCOLLAPSESTRATEGY itk::ExtractImageFilter::GetDirectionCollapseToStrategy() const

NOTE: The SetDirectionCollapseToUknown is explicitly not defined. It is a state that a filter can be in only when it is first instantiate prior to being initialized. Get the currently set strategy for collapsing directions of physical space.
*/"

// Generated for ClassName from /scratch/blowekamp/build/ITK-gerrit/Utilities/Doxygen/xml/classitk_1_1FFTConvolutionImageFilter.xml
%typemap(javaimports) itk::simple::FFTConvolutionImageFilter "/** Convolve a given image with an arbitrary image kernel using multiplication in the Fourier domain.

This filter produces output equivalent to the output of the ConvolutionImageFilter. However, it takes advantage of the convolution theorem to accelerate the convolution computation when the kernel is large.
warning This filter ignores the spacing, origin, and orientation of the kernel image and treats them as identical to those in the input image.
This code was adapted from the Insight Journal contribution:
FFT Based Convolution by Gaetan Lehmannhttp://hdl.handle.net/10380/3154
see  ConvolutionImageFilter

*/"
%javamethodmodifiers itk::simple::FFTConvolutionImageFilter::execute() "
/**Convolve a given image with an arbitrary image kernel using multiplication in the Fourier domain.

*/"
%javamethodmodifiers itk::simple::FFTConvolution "/**
Convolve a given image with an arbitrary image kernel using multiplication in the Fourier domain.

This filter produces output equivalent to the output of the ConvolutionImageFilter. However, it takes advantage of the convolution theorem to accelerate the convolution computation when the kernel is large.
warning This filter ignores the spacing, origin, and orientation of the kernel image and treats them as identical to those in the input image.
This code was adapted from the Insight Journal contribution:
FFT Based Convolution by Gaetan Lehmannhttp://hdl.handle.net/10380/3154
see  ConvolutionImageFilter

*/"
// Generated for ClassName from /scratch/blowekamp/build/ITK-gerrit/Utilities/Doxygen/xml/classitk_1_1FFTNormalizedCorrelationImageFilter.xml
%typemap(javaimports) itk::simple::FFTNormalizedCorrelationImageFilter "/** Calculate normalized cross correlation using FFTs.

This filter calculates the normalized cross correlation (NCC) of two images using FFTs instead of spatial correlation. It is much faster than spatial correlation for reasonably large structuring elements. This filter is a subclass of the more general MaskedFFTNormalizedCorrelationImageFilterand operates by essentially setting the masks in that algorithm to images of ones. As described in detail in the references below, there is no computational overhead to utilizing the more general masked algorithm because the FFTs of the images of ones are still necessary for the computations.
Inputs: Two images are required as inputs, fixedImage and movingImage. In the context of correlation, inputs are often defined as: image and template. In this filter, the fixedImage plays the role of the image, and the movingImage plays the role of the template. However, this filter is capable of correlating any two images and is not restricted to small movingImages (templates).
Optional parameters: The RequiredNumberOfOverlappingPixels enables the user to specify how many voxels of the two images must overlap; any location in the correlation map that results from fewer than this number of voxels will be set to zero. Larger values zero-out pixels on a larger border around the correlation image. Thus, larger values remove less stable computations but also limit the capture range. If RequiredNumberOfOverlappingPixels is set to 0, the default, no zeroing will take place.
 Imagesize: fixedImage and movingImage need not be the same size. Furthermore, whereas some algorithms require that the template be smaller than the image because of errors in the regions where the two are not fully overlapping, this filter has no such restriction.
 Imagespacing: Since the computations are done in the pixel domain, all input images must have the same spacing.
Outputs; The output is an image of RealPixelType that is the NCC of the two images and its values range from -1.0 to 1.0. The size of this NCC image is, by definition, size(fixedImage) + size(movingImage) - 1.
Example filter usage:typedef itk::FFTNormalizedCorrelationImageFilter< ShortImageType, DoubleImageType >FilterType;FilterType::Pointerfilter= FilterType::New();filter->SetFixedImage(fixedImage);filter->SetMovingImage(movingImage);filter->SetRequiredNumberOfOverlappingPixels(20);filter->Update();
warning The pixel type of the output image must be of real type (float or double). ConceptChecking is used to enforce the output pixel type. You will get a compilation error if the pixel type of the output image is not float or double.
References: 1) D. Padfield. Masked object registration in the Fourier domain. Transactions on ImageProcessing. 2) D. Padfield. Masked FFT registration. In Proc. Computer Vision and Pattern Recognition, 2010.
author : Dirk Padfield, GE Global Research,padfield@research.ge.com

*/"
%javamethodmodifiers itk::simple::FFTNormalizedCorrelationImageFilter::execute() "
/**Calculate normalized cross correlation using FFTs.

*/"
%javamethodmodifiers itk::simple::FFTNormalizedCorrelation "/**
Calculate normalized cross correlation using FFTs.

This filter calculates the normalized cross correlation (NCC) of two images using FFTs instead of spatial correlation. It is much faster than spatial correlation for reasonably large structuring elements. This filter is a subclass of the more general MaskedFFTNormalizedCorrelationImageFilterand operates by essentially setting the masks in that algorithm to images of ones. As described in detail in the references below, there is no computational overhead to utilizing the more general masked algorithm because the FFTs of the images of ones are still necessary for the computations.
Inputs: Two images are required as inputs, fixedImage and movingImage. In the context of correlation, inputs are often defined as: image and template. In this filter, the fixedImage plays the role of the image, and the movingImage plays the role of the template. However, this filter is capable of correlating any two images and is not restricted to small movingImages (templates).
Optional parameters: The RequiredNumberOfOverlappingPixels enables the user to specify how many voxels of the two images must overlap; any location in the correlation map that results from fewer than this number of voxels will be set to zero. Larger values zero-out pixels on a larger border around the correlation image. Thus, larger values remove less stable computations but also limit the capture range. If RequiredNumberOfOverlappingPixels is set to 0, the default, no zeroing will take place.
 Imagesize: fixedImage and movingImage need not be the same size. Furthermore, whereas some algorithms require that the template be smaller than the image because of errors in the regions where the two are not fully overlapping, this filter has no such restriction.
 Imagespacing: Since the computations are done in the pixel domain, all input images must have the same spacing.
Outputs; The output is an image of RealPixelType that is the NCC of the two images and its values range from -1.0 to 1.0. The size of this NCC image is, by definition, size(fixedImage) + size(movingImage) - 1.
Example filter usage:typedef itk::FFTNormalizedCorrelationImageFilter< ShortImageType, DoubleImageType >FilterType;FilterType::Pointerfilter= FilterType::New();filter->SetFixedImage(fixedImage);filter->SetMovingImage(movingImage);filter->SetRequiredNumberOfOverlappingPixels(20);filter->Update();
warning The pixel type of the output image must be of real type (float or double). ConceptChecking is used to enforce the output pixel type. You will get a compilation error if the pixel type of the output image is not float or double.
References: 1) D. Padfield. Masked object registration in the Fourier domain. Transactions on ImageProcessing. 2) D. Padfield. Masked FFT registration. In Proc. Computer Vision and Pattern Recognition, 2010.
author : Dirk Padfield, GE Global Research,padfield@research.ge.com

*/"
// Generated for ClassName from /scratch/blowekamp/build/ITK-gerrit/Utilities/Doxygen/xml/classitk_1_1FFTShiftImageFilter.xml
%typemap(javaimports) itk::simple::FFTShiftImageFilter "/** Shift the zero-frequency components of a Fourier transfrom to the center of the image.

The Fourier transform produces an image where the zero frequency components are in the corner of the image, making it difficult to understand. This filter shifts the component to the center of the image.
note For images with an odd-sized dimension, applying this filter twice will not produce the same image as the original one without using SetInverse(true) on one (and only one) of the two filters.
http://hdl.handle.net/1926/321
author Gaetan Lehmann. Biologie du Developpement et de la Reproduction, INRA de Jouy-en-Josas, France.
see  ForwardFFTImageFilter, InverseFFTImageFilter

*/"
%javamethodmodifiers itk::simple::FFTShiftImageFilter::execute() "
/**Shift the zero-frequency components of a Fourier transfrom to the center of the image.

*/"
%javamethodmodifiers itk::simple::FFTShift "/**
Shift the zero-frequency components of a Fourier transfrom to the center of the image.

The Fourier transform produces an image where the zero frequency components are in the corner of the image, making it difficult to understand. This filter shifts the component to the center of the image.
note For images with an odd-sized dimension, applying this filter twice will not produce the same image as the original one without using SetInverse(true) on one (and only one) of the two filters.
http://hdl.handle.net/1926/321
author Gaetan Lehmann. Biologie du Developpement et de la Reproduction, INRA de Jouy-en-Josas, France.
see  ForwardFFTImageFilter, InverseFFTImageFilter

*/"
%javamethodmodifiers itk::simple::FFTShiftImageFilter::setInverse "/**
virtual void itk::FFTShiftImageFilter::SetInverse(bool _arg)

Set/Get whether the filter must invert the transform or not. This option has no effect if none of the size of the input image is even, but is required to restore the original image if at least one of the dimensions has an odd size.
*/"

%javamethodmodifiers itk::simple::FFTShiftImageFilter::getInverse "/**
virtual const bool& itk::FFTShiftImageFilter::GetInverse()

Set/Get whether the filter must invert the transform or not. This option has no effect if none of the size of the input image is even, but is required to restore the original image if at least one of the dimensions has an odd size.
*/"

// Generated for ClassName from /scratch/blowekamp/build/ITK-gerrit/Utilities/Doxygen/xml/classitk_1_1FastMarchingImageFilter.xml
%typemap(javaimports) itk::simple::FastMarchingImageFilter "/** Solve an Eikonal equation using Fast Marching.

Fast marching solves an Eikonal equation where the speed is always non-negative and depends on the position only. Starting from an initial position on the front, fast marching systematically moves the front forward one grid point at a time.
Updates are preformed using an entropy satisfy scheme where only upwind neighborhoods are used. This implementation of Fast Marching uses a std::priority_queue to locate the next proper grid position to update.
Fast Marching sweeps through N grid points in (N log N) steps to obtain the arrival time value as the front propagates through the grid.
Implementation of this class is based on Chapter 8 of Level Set Methods and Fast Marching Methods, J.A. Sethian, Cambridge Press, Second edition, 1999.
This class is templated over the level set image type and the speed image type. The initial front is specified by two containers: one containing the known points and one containing the trial points. Alive points are those that are already part of the object, and trial points are considered for inclusion. In order for the filter to evolve, at least some trial points must be specified. These can for instance be specified as the layer of pixels around the alive points.
The speed function can be specified as a speed image or a speed constant. The speed image is set using the method SetInput(). If the speed image is NULL, a constant speed function is used and is specified using method the SetSpeedConstant().
If the speed function is constant and of value one, fast marching results in an approximate distance function from the initial alive points. FastMarchingImageFilteris used in the ReinitializeLevelSetImageFilterobject to create a signed distance function from the zero level set.
The algorithm can be terminated early by setting an appropriate stopping value. The algorithm terminates when the current arrival time being processed is greater than the stopping value.
There are two ways to specify the output image information ( LargestPossibleRegion, Spacing, Origin): (a) it is copied directly from the input speed image or (b) it is specified by the user. Default values are used if the user does not specify all the information.
The output information is computed as follows. If the speed image is NULL or if the OverrideOutputInformation is set to true, the output information is set from user specified parameters. These parameters can be specified using methods SetOutputRegion(), SetOutputSpacing(), SetOutputDirection(), and SetOutputOrigin(). Else if the speed image is not NULL, the output information is copied from the input speed image.
Possible Improvements: In the current implemenation, std::priority_queue only allows taking nodes out from the front and putting nodes in from the back. To update a value already on the heap, a new node is added to the heap. The defunct old node is left on the heap. When it is removed from the top, it will be recognized as invalid and not used. Future implementations can implement the heap in a different way allowing the values to be updated. This will generally require some sift-up and sift-down functions and an image of back-pointers going from the image to heap in order to locate the node which is to be updated.
see  LevelSetTypeDefault

*/"
%javamethodmodifiers itk::simple::FastMarchingImageFilter::execute() "
/**Solve an Eikonal equation using Fast Marching.

*/"
%javamethodmodifiers itk::simple::FastMarching "/**
Solve an Eikonal equation using Fast Marching.

Fast marching solves an Eikonal equation where the speed is always non-negative and depends on the position only. Starting from an initial position on the front, fast marching systematically moves the front forward one grid point at a time.
Updates are preformed using an entropy satisfy scheme where only upwind neighborhoods are used. This implementation of Fast Marching uses a std::priority_queue to locate the next proper grid position to update.
Fast Marching sweeps through N grid points in (N log N) steps to obtain the arrival time value as the front propagates through the grid.
Implementation of this class is based on Chapter 8 of Level Set Methods and Fast Marching Methods, J.A. Sethian, Cambridge Press, Second edition, 1999.
This class is templated over the level set image type and the speed image type. The initial front is specified by two containers: one containing the known points and one containing the trial points. Alive points are those that are already part of the object, and trial points are considered for inclusion. In order for the filter to evolve, at least some trial points must be specified. These can for instance be specified as the layer of pixels around the alive points.
The speed function can be specified as a speed image or a speed constant. The speed image is set using the method SetInput(). If the speed image is NULL, a constant speed function is used and is specified using method the SetSpeedConstant().
If the speed function is constant and of value one, fast marching results in an approximate distance function from the initial alive points. FastMarchingImageFilteris used in the ReinitializeLevelSetImageFilterobject to create a signed distance function from the zero level set.
The algorithm can be terminated early by setting an appropriate stopping value. The algorithm terminates when the current arrival time being processed is greater than the stopping value.
There are two ways to specify the output image information ( LargestPossibleRegion, Spacing, Origin): (a) it is copied directly from the input speed image or (b) it is specified by the user. Default values are used if the user does not specify all the information.
The output information is computed as follows. If the speed image is NULL or if the OverrideOutputInformation is set to true, the output information is set from user specified parameters. These parameters can be specified using methods SetOutputRegion(), SetOutputSpacing(), SetOutputDirection(), and SetOutputOrigin(). Else if the speed image is not NULL, the output information is copied from the input speed image.
Possible Improvements: In the current implemenation, std::priority_queue only allows taking nodes out from the front and putting nodes in from the back. To update a value already on the heap, a new node is added to the heap. The defunct old node is left on the heap. When it is removed from the top, it will be recognized as invalid and not used. Future implementations can implement the heap in a different way allowing the values to be updated. This will generally require some sift-up and sift-down functions and an image of back-pointers going from the image to heap in order to locate the node which is to be updated.
see  LevelSetTypeDefault

*/"
%javamethodmodifiers itk::simple::FastMarchingImageFilter::setNormalizationFactor "/**
virtual void itk::FastMarchingImageFilter::SetNormalizationFactor(double _arg)

Set/Get the Normalization Factor for the Speed Image. The values in the Speed Imageis divided by this factor. This allows the use of images with integer pixel types to represent the speed.
*/"

%javamethodmodifiers itk::simple::FastMarchingImageFilter::getNormalizationFactor "/**
virtual double itk::FastMarchingImageFilter::GetNormalizationFactor() const

Set/Get the Normalization Factor for the Speed Image. The values in the Speed Imageis divided by this factor. This allows the use of images with integer pixel types to represent the speed.
*/"

%javamethodmodifiers itk::simple::FastMarchingImageFilter::setStoppingValue "/**
virtual void itk::FastMarchingImageFilter::SetStoppingValue(double _arg)

Set the Fast Marching algorithm Stopping Value. The Fast Marching algorithm is terminated when the value of the smallest trial point is greater than the stopping value.
*/"

%javamethodmodifiers itk::simple::FastMarchingImageFilter::getStoppingValue "/**
virtual const double& itk::FastMarchingImageFilter::GetStoppingValue()

Get the Fast Marching algorithm Stopping Value.
*/"

// Generated for ClassName from /scratch/blowekamp/build/ITK-gerrit/Utilities/Doxygen/xml/classitk_1_1FlipImageFilter.xml
%typemap(javaimports) itk::simple::FlipImageFilter "/** Flips an image across user specified axes.

 FlipImageFilterflips an image across user specified axes. The flip axes are set via method SetFlipAxes( array ) where the input is a FixedArray<bool,ImageDimension>. The image is flipped across axes for which array[i] is true.
In terms of grid coordinates the image is flipped within the LargestPossibleRegion of the input image. As such, the LargestPossibleRegion of the ouput image is the same as the input.
In terms of geometric coordinates, the output origin is such that the image is flipped with respect to the coordinate axes.
par Wiki Examples:

li All Examples

li Flip an image over specified axes

*/"
%javamethodmodifiers itk::simple::FlipImageFilter::execute() "
/**Flips an image across user specified axes.

*/"
%javamethodmodifiers itk::simple::Flip "/**
Flips an image across user specified axes.

 FlipImageFilterflips an image across user specified axes. The flip axes are set via method SetFlipAxes( array ) where the input is a FixedArray<bool,ImageDimension>. The image is flipped across axes for which array[i] is true.
In terms of grid coordinates the image is flipped within the LargestPossibleRegion of the input image. As such, the LargestPossibleRegion of the ouput image is the same as the input.
In terms of geometric coordinates, the output origin is such that the image is flipped with respect to the coordinate axes.
par Wiki Examples:

li All Examples

li Flip an image over specified axes

*/"
%javamethodmodifiers itk::simple::FlipImageFilter::setFlipAxes "/**
virtual void itk::FlipImageFilter::SetFlipAxes(FlipAxesArrayType _arg)

Set/Get the axis to be flipped. The image is flipped along axes for which array[i] is true.
*/"

%javamethodmodifiers itk::simple::FlipImageFilter::getFlipAxes "/**
virtual FlipAxesArrayType itk::FlipImageFilter::GetFlipAxes() const

Set/Get the axis to be flipped. The image is flipped along axes for which array[i] is true.
*/"

%javamethodmodifiers itk::simple::FlipImageFilter::setFlipAboutOrigin "/**
virtual void itk::FlipImageFilter::SetFlipAboutOrigin(bool _arg)

Controls how the output origin is computed. If FlipAboutOrigin is on, the flip will occur about the origin of the axis, otherwise, the flip will occur about the center of the axis.
*/"

%javamethodmodifiers itk::simple::FlipImageFilter::getFlipAboutOrigin "/**
virtual bool itk::FlipImageFilter::GetFlipAboutOrigin() const

Controls how the output origin is computed. If FlipAboutOrigin is on, the flip will occur about the origin of the axis, otherwise, the flip will occur about the center of the axis.
*/"

// Generated for ClassName from /scratch/blowekamp/build/ITK-gerrit/Utilities/Doxygen/xml/classitk_1_1ForwardFFTImageFilter.xml
%typemap(javaimports) itk::simple::ForwardFFTImageFilter "/** Base class for forward Fast Fourier Transform.

This is a base class for the forward or direct discrete Fourier Transform. This is an abstract base class: the actual implementation is provided by the best child class available on the system when the object is created via the object factory system.
This class transforms a real input image into its full complex Fourier transform. The Fourier transform of a real input image has Hermitian symmetry:f$ f(mathbf{x}) = f^*(-mathbf{x}) f$ . That is, when the result of the transform is split in half along the x-dimension, the values in the second half of the transform are the complex conjugates of values in the first half reflected about the center of the image in each dimension.
This filter works only for real single-component input image types.
see  InverseFFTImageFilter, FFTComplexToComplexImageFilter

*/"
%javamethodmodifiers itk::simple::ForwardFFTImageFilter::execute() "
/**Base class for forward Fast Fourier Transform.

*/"
%javamethodmodifiers itk::simple::ForwardFFT "/**
Base class for forward Fast Fourier Transform.

This is a base class for the forward or direct discrete Fourier Transform. This is an abstract base class: the actual implementation is provided by the best child class available on the system when the object is created via the object factory system.
This class transforms a real input image into its full complex Fourier transform. The Fourier transform of a real input image has Hermitian symmetry:f$ f(mathbf{x}) = f^*(-mathbf{x}) f$ . That is, when the result of the transform is split in half along the x-dimension, the values in the second half of the transform are the complex conjugates of values in the first half reflected about the center of the image in each dimension.
This filter works only for real single-component input image types.
see  InverseFFTImageFilter, FFTComplexToComplexImageFilter

*/"
// Generated for ClassName from /scratch/blowekamp/build/ITK-gerrit/Utilities/Doxygen/xml/classitk_1_1GeodesicActiveContourLevelSetImageFilter.xml
%typemap(javaimports) itk::simple::GeodesicActiveContourLevelSetImageFilter "/** Segments structures in images based on a user supplied edge potential map.

par IMPORTANT
The SegmentationLevelSetImageFilterclass and the GeodesicActiveContourLevelSetFunctionclass contain additional information necessary to gain full understanding of how to use this filter.
par OVERVIEW
This class is a level set method segmentation filter. An initial contour is propagated outwards (or inwards) until it ''sticks'' to the shape boundaries. This is done by using a level set speed function based on a user supplied edge potential map.
par INPUTS
This filter requires two inputs. The first input is a initial level set. The initial level set is a real image which contains the initial contour/surface as the zero level set. For example, a signed distance function from the initial contour/surface is typically used. Unlike the simpler ShapeDetectionLevelSetImageFilterthe initial contour does not have to lie wholly within the shape to be segmented. The initial contour is allow to overlap the shape boundary. The extra advection term in the update equation behaves like a doublet and attracts the contour to the boundary. This approach for segmentation follows that of Caselles et al (1997).
par The second input is the feature image. For this filter, this is the edge potential map. General characteristics of an edge potential map is that it has values close to zero in regions near the edges and values close to one inside the shape itself. Typically, the edge potential map is compute from the image gradient, for example:
 f[ g(I) = 1 / ( 1 + | (nabla * G)(I)| ) f]   f[ g(I) = exp^{-|(nabla * G)(I)|} f]  
wheref$ I f$ is image intensity andf$ (nabla * G) f$ is the derivative of Gaussian operator.
par See SegmentationLevelSetImageFilterand SparseFieldLevelSetImageFilterfor more information on Inputs.
par PARAMETERS
The PropagationScaling parameter can be used to switch from propagation outwards (POSITIVE scaling parameter) versus propagating inwards (NEGATIVE scaling parameter).
This implementation allows the user to set the weights between the propagation, advection and curvature term using methods SetPropagationScaling(), SetAdvectionScaling(), SetCurvatureScaling(). In general, the larger the CurvatureScaling, the smoother the resulting contour. To follow the implementation in Caselles et al paper, set the PropagationScaling tof$ c f$ (the inflation or ballon force) and AdvectionScaling and CurvatureScaling both to 1.0.
par OUTPUTS
The filter outputs a single, scalar, real-valued image. Negative values in the output image represent the inside of the segmented region and positive values in the image represent the outside of the segmented region. The zero crossings of the image correspond to the position of the propagating front.
par See SparseFieldLevelSetImageFilterand SegmentationLevelSetImageFilterfor more information.
par REFERENCES
par Geodesic Active Contours, V. Caselles, R. Kimmel and G. Sapiro. International Journal on Computer Vision, Vol 22, No. 1, pp 61-97, 1997
see  SegmentationLevelSetImageFilter
see 
see  GeodesicActiveContourLevelSetFunction
see 
see  SparseFieldLevelSetImageFilter

*/"
%javamethodmodifiers itk::simple::GeodesicActiveContourLevelSetImageFilter::execute() "
/**Segments structures in images based on a user supplied edge potential map.

*/"
%javamethodmodifiers itk::simple::GeodesicActiveContourLevelSet "/**
Segments structures in images based on a user supplied edge potential map.

par IMPORTANT
The SegmentationLevelSetImageFilterclass and the GeodesicActiveContourLevelSetFunctionclass contain additional information necessary to gain full understanding of how to use this filter.
par OVERVIEW
This class is a level set method segmentation filter. An initial contour is propagated outwards (or inwards) until it ''sticks'' to the shape boundaries. This is done by using a level set speed function based on a user supplied edge potential map.
par INPUTS
This filter requires two inputs. The first input is a initial level set. The initial level set is a real image which contains the initial contour/surface as the zero level set. For example, a signed distance function from the initial contour/surface is typically used. Unlike the simpler ShapeDetectionLevelSetImageFilterthe initial contour does not have to lie wholly within the shape to be segmented. The initial contour is allow to overlap the shape boundary. The extra advection term in the update equation behaves like a doublet and attracts the contour to the boundary. This approach for segmentation follows that of Caselles et al (1997).
par The second input is the feature image. For this filter, this is the edge potential map. General characteristics of an edge potential map is that it has values close to zero in regions near the edges and values close to one inside the shape itself. Typically, the edge potential map is compute from the image gradient, for example:
 f[ g(I) = 1 / ( 1 + | (nabla * G)(I)| ) f]   f[ g(I) = exp^{-|(nabla * G)(I)|} f]  
wheref$ I f$ is image intensity andf$ (nabla * G) f$ is the derivative of Gaussian operator.
par See SegmentationLevelSetImageFilterand SparseFieldLevelSetImageFilterfor more information on Inputs.
par PARAMETERS
The PropagationScaling parameter can be used to switch from propagation outwards (POSITIVE scaling parameter) versus propagating inwards (NEGATIVE scaling parameter).
This implementation allows the user to set the weights between the propagation, advection and curvature term using methods SetPropagationScaling(), SetAdvectionScaling(), SetCurvatureScaling(). In general, the larger the CurvatureScaling, the smoother the resulting contour. To follow the implementation in Caselles et al paper, set the PropagationScaling tof$ c f$ (the inflation or ballon force) and AdvectionScaling and CurvatureScaling both to 1.0.
par OUTPUTS
The filter outputs a single, scalar, real-valued image. Negative values in the output image represent the inside of the segmented region and positive values in the image represent the outside of the segmented region. The zero crossings of the image correspond to the position of the propagating front.
par See SparseFieldLevelSetImageFilterand SegmentationLevelSetImageFilterfor more information.
par REFERENCES
par Geodesic Active Contours, V. Caselles, R. Kimmel and G. Sapiro. International Journal on Computer Vision, Vol 22, No. 1, pp 61-97, 1997
see  SegmentationLevelSetImageFilter
see 
see  GeodesicActiveContourLevelSetFunction
see 
see  SparseFieldLevelSetImageFilter

*/"
// Generated for ClassName from /scratch/blowekamp/build/ITK-gerrit/Utilities/Doxygen/xml/classitk_1_1GradientImageFilter.xml
%typemap(javaimports) itk::simple::GradientImageFilter "/** Computes the gradient of an image using directional derivatives.

Computes the gradient of an image using directional derivatives. The directional derivative at each pixel location is computed by convolution with a first-order derivative operator.
The second template parameter defines the value type used in the derivative operator (defaults to float). The third template parameter defines the value type used for output image (defaults to float). The output image is defined as a covariant vector image whose value type is specified as this third template parameter.
see  Image
see 
see  Neighborhood
see 
see  NeighborhoodOperator
see 
see  NeighborhoodIterator

*/"
%javamethodmodifiers itk::simple::GradientImageFilter::execute() "
/**Computes the gradient of an image using directional derivatives.

*/"
%javamethodmodifiers itk::simple::Gradient "/**
Computes the gradient of an image using directional derivatives.

Computes the gradient of an image using directional derivatives. The directional derivative at each pixel location is computed by convolution with a first-order derivative operator.
The second template parameter defines the value type used in the derivative operator (defaults to float). The third template parameter defines the value type used for output image (defaults to float). The output image is defined as a covariant vector image whose value type is specified as this third template parameter.
see  Image
see 
see  Neighborhood
see 
see  NeighborhoodOperator
see 
see  NeighborhoodIterator

*/"
%javamethodmodifiers itk::simple::GradientImageFilter::setUseImageSpacing "/**
virtual void itk::GradientImageFilter::SetUseImageSpacing(bool _arg)

Set/Get whether or not the filter will use the spacing of the input image in its calculations
*/"

%javamethodmodifiers itk::simple::GradientImageFilter::getUseImageSpacing "/**
virtual bool itk::GradientImageFilter::GetUseImageSpacing() const

Set/Get whether or not the filter will use the spacing of the input image in its calculations
*/"

%javamethodmodifiers itk::simple::GradientImageFilter::setUseImageDirection "/**
virtual void itk::GradientImageFilter::SetUseImageDirection(bool _arg)

End concept checking The UseImageDirection flag determines whether image derivatives are computed with respect to the image grid or with respect to the physical space. When this flag is ON the derivatives are computed with respect to the coodinate system of physical space. The difference is whether we take into account the image Direction or not. The flag ON will take into account the image direction and will result in an extra matrix multiplication compared to the amount of computation performed when the flag is OFF. The default value of this flag is On.
*/"

%javamethodmodifiers itk::simple::GradientImageFilter::getUseImageDirection "/**
virtual bool itk::GradientImageFilter::GetUseImageDirection() const

End concept checking The UseImageDirection flag determines whether image derivatives are computed with respect to the image grid or with respect to the physical space. When this flag is ON the derivatives are computed with respect to the coodinate system of physical space. The difference is whether we take into account the image Direction or not. The flag ON will take into account the image direction and will result in an extra matrix multiplication compared to the amount of computation performed when the flag is OFF. The default value of this flag is On.
*/"

// Generated for ClassName from /scratch/blowekamp/build/ITK-gerrit/Utilities/Doxygen/xml/classitk_1_1GradientAnisotropicDiffusionImageFilter.xml
%typemap(javaimports) itk::simple::GradientAnisotropicDiffusionImageFilter "/** 
This filter performs anisotropic diffusion on a scalar itk::Imageusing the classic Perona-Malik, gradient magnitude based equation implemented in itkGradientNDAnisotropicDiffusionFunction. For detailed information on anisotropic diffusion, see itkAnisotropicDiffusionFunction and itkGradientNDAnisotropicDiffusionFunction.
par Inputs and Outputs
The input to this filter should be a scalar itk::Imageof any dimensionality. The output image will be a diffused copy of the input.
par Parameters
Please see the description of parameters given in itkAnisotropicDiffusionImageFilter.
see  AnisotropicDiffusionImageFilter
see 
see  AnisotropicDiffusionFunction
see 
see GradientAnisotropicDiffusionFunction

*/"
%javamethodmodifiers itk::simple::GradientAnisotropicDiffusionImageFilter::execute() "
/**
*/"
%javamethodmodifiers itk::simple::GradientAnisotropicDiffusion "/**

This filter performs anisotropic diffusion on a scalar itk::Imageusing the classic Perona-Malik, gradient magnitude based equation implemented in itkGradientNDAnisotropicDiffusionFunction. For detailed information on anisotropic diffusion, see itkAnisotropicDiffusionFunction and itkGradientNDAnisotropicDiffusionFunction.
par Inputs and Outputs
The input to this filter should be a scalar itk::Imageof any dimensionality. The output image will be a diffused copy of the input.
par Parameters
Please see the description of parameters given in itkAnisotropicDiffusionImageFilter.
see  AnisotropicDiffusionImageFilter
see 
see  AnisotropicDiffusionFunction
see 
see GradientAnisotropicDiffusionFunction

*/"
// Generated for ClassName from /scratch/blowekamp/build/ITK-gerrit/Utilities/Doxygen/xml/classitk_1_1GradientMagnitudeImageFilter.xml
%typemap(javaimports) itk::simple::GradientMagnitudeImageFilter "/** Computes the gradient magnitude of an image region at each pixel.

see  Image
see 
see  Neighborhood
see 
see  NeighborhoodOperator
see 
see  NeighborhoodIterator
par Wiki Examples:

li All Examples

li Compute the gradient magnitude image

*/"
%javamethodmodifiers itk::simple::GradientMagnitudeImageFilter::execute() "
/**Computes the gradient magnitude of an image region at each pixel.

*/"
%javamethodmodifiers itk::simple::GradientMagnitude "/**
Computes the gradient magnitude of an image region at each pixel.

see  Image
see 
see  Neighborhood
see 
see  NeighborhoodOperator
see 
see  NeighborhoodIterator
par Wiki Examples:

li All Examples

li Compute the gradient magnitude image

*/"
%javamethodmodifiers itk::simple::GradientMagnitudeImageFilter::setUseImageSpacing "/**
virtual void itk::GradientMagnitudeImageFilter::SetUseImageSpacing(bool _arg)

Set/Get whether or not the filter will use the spacing of the input image in its calculations
*/"

%javamethodmodifiers itk::simple::GradientMagnitudeImageFilter::getUseImageSpacing "/**
virtual bool itk::GradientMagnitudeImageFilter::GetUseImageSpacing() const

Set/Get whether or not the filter will use the spacing of the input image in its calculations
*/"

// Generated for ClassName from /scratch/blowekamp/build/ITK-gerrit/Utilities/Doxygen/xml/classitk_1_1GradientMagnitudeRecursiveGaussianImageFilter.xml
%typemap(javaimports) itk::simple::GradientMagnitudeRecursiveGaussianImageFilter "/** Computes the Magnitude of the Gradient of an image by convolution with the first derivative of a Gaussian.

This filter is implemented using the recursive gaussian filters
par Wiki Examples:

li All Examples

li Find the gradient magnitude of the image first smoothed with a Gaussian kernel

*/"
%javamethodmodifiers itk::simple::GradientMagnitudeRecursiveGaussianImageFilter::execute() "
/**Computes the Magnitude of the Gradient of an image by convolution with the first derivative of a Gaussian.

*/"
%javamethodmodifiers itk::simple::GradientMagnitudeRecursiveGaussian "/**
Computes the Magnitude of the Gradient of an image by convolution with the first derivative of a Gaussian.

This filter is implemented using the recursive gaussian filters
par Wiki Examples:

li All Examples

li Find the gradient magnitude of the image first smoothed with a Gaussian kernel

*/"
%javamethodmodifiers itk::simple::GradientMagnitudeRecursiveGaussianImageFilter::setSigma "/**
void itk::GradientMagnitudeRecursiveGaussianImageFilter::SetSigma(RealType sigma)

Set Sigma value. Sigma is measured in the units of image spacing.
*/"

%javamethodmodifiers itk::simple::GradientMagnitudeRecursiveGaussianImageFilter::getSigma "/**
RealType itk::GradientMagnitudeRecursiveGaussianImageFilter::GetSigma()

Set Sigma value. Sigma is measured in the units of image spacing.
*/"

%javamethodmodifiers itk::simple::GradientMagnitudeRecursiveGaussianImageFilter::setNormalizeAcrossScale "/**
void itk::GradientMagnitudeRecursiveGaussianImageFilter::SetNormalizeAcrossScale(bool normalizeInScaleSpace)

Define which normalization factor will be used for the Gaussiansee  RecursiveGaussianImageFilter::SetNormalizeAcrossScale

*/"

%javamethodmodifiers itk::simple::GradientMagnitudeRecursiveGaussianImageFilter::getNormalizeAcrossScale "/**
virtual bool itk::GradientMagnitudeRecursiveGaussianImageFilter::GetNormalizeAcrossScale() const

Define which normalization factor will be used for the Gaussiansee  RecursiveGaussianImageFilter::SetNormalizeAcrossScale

*/"

// Generated for ClassName from /scratch/blowekamp/build/ITK-gerrit/Utilities/Doxygen/xml/classitk_1_1GrayscaleDilateImageFilter.xml
%typemap(javaimports) itk::simple::GrayscaleDilateImageFilter "/** gray scale dilation of an image

Dilate an image using grayscale morphology. Dilation takes the maximum of all the pixels identified by the structuring element.
The structuring element is assumed to be composed of binary values (zero or one). Only elements of the structuring element having values > 0 are candidates for affecting the center pixel.
see  MorphologyImageFilter, GrayscaleFunctionDilateImageFilter, BinaryDilateImageFilter
par Wiki Examples:

li All Examples

li Dilate a grayscale image

*/"
%javamethodmodifiers itk::simple::GrayscaleDilateImageFilter::execute() "
/**gray scale dilation of an image

*/"
%javamethodmodifiers itk::simple::GrayscaleDilate "/**
gray scale dilation of an image

Dilate an image using grayscale morphology. Dilation takes the maximum of all the pixels identified by the structuring element.
The structuring element is assumed to be composed of binary values (zero or one). Only elements of the structuring element having values > 0 are candidates for affecting the center pixel.
see  MorphologyImageFilter, GrayscaleFunctionDilateImageFilter, BinaryDilateImageFilter
par Wiki Examples:

li All Examples

li Dilate a grayscale image

*/"
// Generated for ClassName from /scratch/blowekamp/build/ITK-gerrit/Utilities/Doxygen/xml/classitk_1_1GrayscaleErodeImageFilter.xml
%typemap(javaimports) itk::simple::GrayscaleErodeImageFilter "/** gray scale dilation of an image

Erode an image using grayscale morphology. Dilation takes the maximum of all the pixels identified by the structuring element.
The structuring element is assumed to be composed of binary values (zero or one). Only elements of the structuring element having values > 0 are candidates for affecting the center pixel.
see  MorphologyImageFilter, GrayscaleFunctionErodeImageFilter, BinaryErodeImageFilter
par Wiki Examples:

li All Examples

li Erode a grayscale image

*/"
%javamethodmodifiers itk::simple::GrayscaleErodeImageFilter::execute() "
/**gray scale dilation of an image

*/"
%javamethodmodifiers itk::simple::GrayscaleErode "/**
gray scale dilation of an image

Erode an image using grayscale morphology. Dilation takes the maximum of all the pixels identified by the structuring element.
The structuring element is assumed to be composed of binary values (zero or one). Only elements of the structuring element having values > 0 are candidates for affecting the center pixel.
see  MorphologyImageFilter, GrayscaleFunctionErodeImageFilter, BinaryErodeImageFilter
par Wiki Examples:

li All Examples

li Erode a grayscale image

*/"
// Generated for ClassName from /scratch/blowekamp/build/ITK-gerrit/Utilities/Doxygen/xml/classitk_1_1GrayscaleFillholeImageFilter.xml
%typemap(javaimports) itk::simple::GrayscaleFillholeImageFilter "/** Remove local minima not connected to the boundary of the image.

 GrayscaleFillholeImageFilterfills holes in a grayscale image. Holes are local minima in the grayscale topography that are not connected to boundaries of the image. Gray level values adjacent to a hole are extrapolated across the hole.
This filter is used to smooth over local minima without affecting the values of local maxima. If you take the difference between the output of this filter and the original image (and perhaps threshold the difference above a small value), you'll obtain a map of the local minima.
This filter uses the ReconstructionByErosionImageFilter. It provides its own input as the mask input to the geodesic erosion. The marker image for the geodesic erosion is constructed such that boundary pixels match the boundary pixels of the input image and the interior pixels are set to the maximum pixel value in the input image.
Geodesic morphology and the Fillhole algorithm is described in Chapter 6 of Pierre Soille's book Morphological Image Analysis:
 Principles and Applications, Second Edition, Springer, 2003.
see  ReconstructionByErosionImageFilter
see 
see  MorphologyImageFilter, GrayscaleErodeImageFilter, GrayscaleFunctionErodeImageFilter, BinaryErodeImageFilter

*/"
%javamethodmodifiers itk::simple::GrayscaleFillholeImageFilter::execute() "
/**Remove local minima not connected to the boundary of the image.

*/"
%javamethodmodifiers itk::simple::GrayscaleFillhole "/**
Remove local minima not connected to the boundary of the image.

 GrayscaleFillholeImageFilterfills holes in a grayscale image. Holes are local minima in the grayscale topography that are not connected to boundaries of the image. Gray level values adjacent to a hole are extrapolated across the hole.
This filter is used to smooth over local minima without affecting the values of local maxima. If you take the difference between the output of this filter and the original image (and perhaps threshold the difference above a small value), you'll obtain a map of the local minima.
This filter uses the ReconstructionByErosionImageFilter. It provides its own input as the mask input to the geodesic erosion. The marker image for the geodesic erosion is constructed such that boundary pixels match the boundary pixels of the input image and the interior pixels are set to the maximum pixel value in the input image.
Geodesic morphology and the Fillhole algorithm is described in Chapter 6 of Pierre Soille's book Morphological Image Analysis:
 Principles and Applications, Second Edition, Springer, 2003.
see  ReconstructionByErosionImageFilter
see 
see  MorphologyImageFilter, GrayscaleErodeImageFilter, GrayscaleFunctionErodeImageFilter, BinaryErodeImageFilter

*/"
%javamethodmodifiers itk::simple::GrayscaleFillholeImageFilter::setFullyConnected "/**
virtual void itk::GrayscaleFillholeImageFilter::SetFullyConnected(bool _arg)

Set/Get whether the connected components are defined strictly by face connectivity or by face+edge+vertex connectivity. Default is FullyConnectedOff. For objects that are 1 pixel wide, use FullyConnectedOn.
*/"

%javamethodmodifiers itk::simple::GrayscaleFillholeImageFilter::getFullyConnected "/**
virtual const bool& itk::GrayscaleFillholeImageFilter::GetFullyConnected()

Set/Get whether the connected components are defined strictly by face connectivity or by face+edge+vertex connectivity. Default is FullyConnectedOff. For objects that are 1 pixel wide, use FullyConnectedOn.
*/"

// Generated for ClassName from /scratch/blowekamp/build/ITK-gerrit/Utilities/Doxygen/xml/classitk_1_1GrayscaleGeodesicDilateImageFilter.xml
%typemap(javaimports) itk::simple::GrayscaleGeodesicDilateImageFilter "/** geodesic gray scale dilation of an image

Geodesic dilation operates on a marker image and a mask image. The marker image is dilated using an elementary structuring element (neighborhood of radius one using only the face connected neighbors). The resulting image is then compared with the mask image. The output image is the pixelwise minimum of the dilated marker image and the mask image.
Geodesic dilation is run either one iteration or until convergence. In the convergence case, the filter is equivalent to reconstruction by dilation. This filter is implemented to handle both scenarios. The one iteration case is multi-threaded. The convergence case is delegated to another instance of the same filter (but configured to run a single iteration).
The marker image must be less than or equal to the mask image (on a pixel by pixel basis).
Geodesic morphology is described in Chapter 6 of Pierre Soille's book Morphological Image Analysis: Principles and Applications, Second Edition, Springer, 2003.
A noniterative version of this algorithm can be found in the ReconstructionByDilationImageFilter. This noniterative solution is much faster than the implementation provided here. All ITK filters that previously used GrayscaleGeodesicDiliateImageFilter as part of their implementation have been converted to use the ReconstructionByDilationImageFilter. The GrayscaleGeodesicDilateImageFilteris maintained for backward compatibility.
see  MorphologyImageFilter, GrayscaleDilateImageFilter, GrayscaleFunctionDilateImageFilter, BinaryDilateImageFilter, ReconstructionByDilationImageFilter

*/"
%javamethodmodifiers itk::simple::GrayscaleGeodesicDilateImageFilter::execute() "
/**geodesic gray scale dilation of an image

*/"
%javamethodmodifiers itk::simple::GrayscaleGeodesicDilate "/**
geodesic gray scale dilation of an image

Geodesic dilation operates on a marker image and a mask image. The marker image is dilated using an elementary structuring element (neighborhood of radius one using only the face connected neighbors). The resulting image is then compared with the mask image. The output image is the pixelwise minimum of the dilated marker image and the mask image.
Geodesic dilation is run either one iteration or until convergence. In the convergence case, the filter is equivalent to reconstruction by dilation. This filter is implemented to handle both scenarios. The one iteration case is multi-threaded. The convergence case is delegated to another instance of the same filter (but configured to run a single iteration).
The marker image must be less than or equal to the mask image (on a pixel by pixel basis).
Geodesic morphology is described in Chapter 6 of Pierre Soille's book Morphological Image Analysis: Principles and Applications, Second Edition, Springer, 2003.
A noniterative version of this algorithm can be found in the ReconstructionByDilationImageFilter. This noniterative solution is much faster than the implementation provided here. All ITK filters that previously used GrayscaleGeodesicDiliateImageFilter as part of their implementation have been converted to use the ReconstructionByDilationImageFilter. The GrayscaleGeodesicDilateImageFilteris maintained for backward compatibility.
see  MorphologyImageFilter, GrayscaleDilateImageFilter, GrayscaleFunctionDilateImageFilter, BinaryDilateImageFilter, ReconstructionByDilationImageFilter

*/"
%javamethodmodifiers itk::simple::GrayscaleGeodesicDilateImageFilter::setRunOneIteration "/**
virtual void itk::GrayscaleGeodesicDilateImageFilter::SetRunOneIteration(bool _arg)

Set/Get whether the filter should run one iteration or until convergence. When run to convergence, this filter is equivalent to reconstruction by dilation. Default is off.
*/"

%javamethodmodifiers itk::simple::GrayscaleGeodesicDilateImageFilter::getRunOneIteration "/**
virtual bool itk::GrayscaleGeodesicDilateImageFilter::GetRunOneIteration() const

Set/Get whether the filter should run one iteration or until convergence. When run to convergence, this filter is equivalent to reconstruction by dilation. Default is off.
*/"

%javamethodmodifiers itk::simple::GrayscaleGeodesicDilateImageFilter::setFullyConnected "/**
virtual void itk::GrayscaleGeodesicDilateImageFilter::SetFullyConnected(bool _arg)

Set/Get whether the connected components are defined strictly by face connectivity or by face+edge+vertex connectivity. Default is FullyConnectedOff. For objects that are 1 pixel wide, use FullyConnectedOn.
*/"

%javamethodmodifiers itk::simple::GrayscaleGeodesicDilateImageFilter::getFullyConnected "/**
virtual const bool& itk::GrayscaleGeodesicDilateImageFilter::GetFullyConnected()

Set/Get whether the connected components are defined strictly by face connectivity or by face+edge+vertex connectivity. Default is FullyConnectedOff. For objects that are 1 pixel wide, use FullyConnectedOn.
*/"

// Generated for ClassName from /scratch/blowekamp/build/ITK-gerrit/Utilities/Doxygen/xml/classitk_1_1GrayscaleGeodesicErodeImageFilter.xml
%typemap(javaimports) itk::simple::GrayscaleGeodesicErodeImageFilter "/** geodesic gray scale erosion of an image

Geodesic erosion operates on a marker image and a mask image. The marker image is eroded using an elementary structuring element (neighborhood of radius one using only the face connected neighbors). The resulting image is then compared with the mask image. The output image is the pixelwise maximum of the eroded marker image and the mask image.
Geodesic erosion is run either one iteration or until convergence. In the convergence case, the filter is equivalent to reconstruction by erosion. This filter is implemented to handle both scenarios. The one iteration case is multi-threaded. The convergence case is delegated to another instance of the same filter (but configured to run a single iteration).
The marker image must be greater than or equal to the mask image (on a pixel by pixel basis).
Geodesic morphology is described in Chapter 6 of Pierre Soille's book Morphological Image Analysis: Principles and Applications, Second Edition, Springer, 2003.
A noniterative version of this algorithm can be found in the ReconstructionByErosionImageFilter. This noniterative solution is much faster than the implementation provided here. All ITK filters that previously used GrayscaleGeodesicErodeImageFilteras part of their implementation have been converted to use the ReconstructionByErosionImageFilter. The GrayscaleGeodesicErodeImageFilteris maintained for backward compatibility.
see  MorphologyImageFilter, GrayscaleErodeImageFilter, GrayscaleFunctionErodeImageFilter, BinaryErodeImageFilter, ReconstructionByErosionImageFilter

*/"
%javamethodmodifiers itk::simple::GrayscaleGeodesicErodeImageFilter::execute() "
/**geodesic gray scale erosion of an image

*/"
%javamethodmodifiers itk::simple::GrayscaleGeodesicErode "/**
geodesic gray scale erosion of an image

Geodesic erosion operates on a marker image and a mask image. The marker image is eroded using an elementary structuring element (neighborhood of radius one using only the face connected neighbors). The resulting image is then compared with the mask image. The output image is the pixelwise maximum of the eroded marker image and the mask image.
Geodesic erosion is run either one iteration or until convergence. In the convergence case, the filter is equivalent to reconstruction by erosion. This filter is implemented to handle both scenarios. The one iteration case is multi-threaded. The convergence case is delegated to another instance of the same filter (but configured to run a single iteration).
The marker image must be greater than or equal to the mask image (on a pixel by pixel basis).
Geodesic morphology is described in Chapter 6 of Pierre Soille's book Morphological Image Analysis: Principles and Applications, Second Edition, Springer, 2003.
A noniterative version of this algorithm can be found in the ReconstructionByErosionImageFilter. This noniterative solution is much faster than the implementation provided here. All ITK filters that previously used GrayscaleGeodesicErodeImageFilteras part of their implementation have been converted to use the ReconstructionByErosionImageFilter. The GrayscaleGeodesicErodeImageFilteris maintained for backward compatibility.
see  MorphologyImageFilter, GrayscaleErodeImageFilter, GrayscaleFunctionErodeImageFilter, BinaryErodeImageFilter, ReconstructionByErosionImageFilter

*/"
%javamethodmodifiers itk::simple::GrayscaleGeodesicErodeImageFilter::setRunOneIteration "/**
virtual void itk::GrayscaleGeodesicErodeImageFilter::SetRunOneIteration(bool _arg)

Set/Get whether the filter should run one iteration or until convergence. When run to convergence, this filter is equivalent to reconstruction by erosion. Default is off.
*/"

%javamethodmodifiers itk::simple::GrayscaleGeodesicErodeImageFilter::getRunOneIteration "/**
virtual bool itk::GrayscaleGeodesicErodeImageFilter::GetRunOneIteration() const

Set/Get whether the filter should run one iteration or until convergence. When run to convergence, this filter is equivalent to reconstruction by erosion. Default is off.
*/"

%javamethodmodifiers itk::simple::GrayscaleGeodesicErodeImageFilter::setFullyConnected "/**
virtual void itk::GrayscaleGeodesicErodeImageFilter::SetFullyConnected(bool _arg)

Set/Get whether the connected components are defined strictly by face connectivity or by face+edge+vertex connectivity. Default is FullyConnectedOff. For objects that are 1 pixel wide, use FullyConnectedOn.
*/"

%javamethodmodifiers itk::simple::GrayscaleGeodesicErodeImageFilter::getFullyConnected "/**
virtual const bool& itk::GrayscaleGeodesicErodeImageFilter::GetFullyConnected()

Set/Get whether the connected components are defined strictly by face connectivity or by face+edge+vertex connectivity. Default is FullyConnectedOff. For objects that are 1 pixel wide, use FullyConnectedOn.
*/"

// Generated for ClassName from /scratch/blowekamp/build/ITK-gerrit/Utilities/Doxygen/xml/classitk_1_1GrayscaleGrindPeakImageFilter.xml
%typemap(javaimports) itk::simple::GrayscaleGrindPeakImageFilter "/** Remove local maxima not connected to the boundary of the image.

 GrayscaleGrindPeakImageFilterremoves peaks in a grayscale image. Peaks are local maxima in the grayscale topography that are not connected to boundaries of the image. Gray level values adjacent to a peak are extrapolated through the peak.
This filter is used to smooth over local maxima without affecting the values of local minima. If you take the difference between the output of this filter and the original image (and perhaps threshold the difference above a small value), you'll obtain a map of the local maxima.
This filter uses the GrayscaleGeodesicDilateImageFilter. It provides its own input as the mask input to the geodesic erosion. The marker image for the geodesic erosion is constructed such that boundary pixels match the boundary pixels of the input image and the interior pixels are set to the minimum pixel value in the input image.
This filter is the dual to the GrayscaleFillholeImageFilterwhich implements the Fillhole algorithm. Since it is a dual, it is somewhat superfluous but is provided as a convenience.
Geodesic morphology and the Fillhole algorithm is described in Chapter 6 of Pierre Soille's book Morphological Image Analysis:
 Principles and Applications, Second Edition, Springer, 2003.
see  GrayscaleGeodesicDilateImageFilter
see 
see  MorphologyImageFilter, GrayscaleDilateImageFilter, GrayscaleFunctionDilateImageFilter, BinaryDilateImageFilter

*/"
%javamethodmodifiers itk::simple::GrayscaleGrindPeakImageFilter::execute() "
/**Remove local maxima not connected to the boundary of the image.

*/"
%javamethodmodifiers itk::simple::GrayscaleGrindPeak "/**
Remove local maxima not connected to the boundary of the image.

 GrayscaleGrindPeakImageFilterremoves peaks in a grayscale image. Peaks are local maxima in the grayscale topography that are not connected to boundaries of the image. Gray level values adjacent to a peak are extrapolated through the peak.
This filter is used to smooth over local maxima without affecting the values of local minima. If you take the difference between the output of this filter and the original image (and perhaps threshold the difference above a small value), you'll obtain a map of the local maxima.
This filter uses the GrayscaleGeodesicDilateImageFilter. It provides its own input as the mask input to the geodesic erosion. The marker image for the geodesic erosion is constructed such that boundary pixels match the boundary pixels of the input image and the interior pixels are set to the minimum pixel value in the input image.
This filter is the dual to the GrayscaleFillholeImageFilterwhich implements the Fillhole algorithm. Since it is a dual, it is somewhat superfluous but is provided as a convenience.
Geodesic morphology and the Fillhole algorithm is described in Chapter 6 of Pierre Soille's book Morphological Image Analysis:
 Principles and Applications, Second Edition, Springer, 2003.
see  GrayscaleGeodesicDilateImageFilter
see 
see  MorphologyImageFilter, GrayscaleDilateImageFilter, GrayscaleFunctionDilateImageFilter, BinaryDilateImageFilter

*/"
%javamethodmodifiers itk::simple::GrayscaleGrindPeakImageFilter::setFullyConnected "/**
virtual void itk::GrayscaleGrindPeakImageFilter::SetFullyConnected(bool _arg)

Set/Get whether the connected components are defined strictly by face connectivity or by face+edge+vertex connectivity. Default is FullyConnectedOff. For objects that are 1 pixel wide, use FullyConnectedOn.
*/"

%javamethodmodifiers itk::simple::GrayscaleGrindPeakImageFilter::getFullyConnected "/**
virtual const bool& itk::GrayscaleGrindPeakImageFilter::GetFullyConnected()

Set/Get whether the connected components are defined strictly by face connectivity or by face+edge+vertex connectivity. Default is FullyConnectedOff. For objects that are 1 pixel wide, use FullyConnectedOn.
*/"

// Generated for ClassName from /scratch/blowekamp/build/ITK-gerrit/Utilities/Doxygen/xml/classitk_1_1GrayscaleMorphologicalClosingImageFilter.xml
%typemap(javaimports) itk::simple::GrayscaleMorphologicalClosingImageFilter "/** gray scale dilation of an image

Erode an image using grayscale morphology. Dilation takes the maximum of all the pixels identified by the structuring element.
The structuring element is assumed to be composed of binary values (zero or one). Only elements of the structuring element having values > 0 are candidates for affecting the center pixel.
see  MorphologyImageFilter, GrayscaleFunctionErodeImageFilter, BinaryErodeImageFilter

*/"
%javamethodmodifiers itk::simple::GrayscaleMorphologicalClosingImageFilter::execute() "
/**gray scale dilation of an image

*/"
%javamethodmodifiers itk::simple::GrayscaleMorphologicalClosing "/**
gray scale dilation of an image

Erode an image using grayscale morphology. Dilation takes the maximum of all the pixels identified by the structuring element.
The structuring element is assumed to be composed of binary values (zero or one). Only elements of the structuring element having values > 0 are candidates for affecting the center pixel.
see  MorphologyImageFilter, GrayscaleFunctionErodeImageFilter, BinaryErodeImageFilter

*/"
// Generated for ClassName from /scratch/blowekamp/build/ITK-gerrit/Utilities/Doxygen/xml/classitk_1_1GrayscaleMorphologicalOpeningImageFilter.xml
%typemap(javaimports) itk::simple::GrayscaleMorphologicalOpeningImageFilter "/** gray scale dilation of an image

Dilate an image using grayscale morphology. Dilation takes the maximum of all the pixels identified by the structuring element.
The structuring element is assumed to be composed of binary values (zero or one). Only elements of the structuring element having values > 0 are candidates for affecting the center pixel.
see  MorphologyImageFilter, GrayscaleFunctionDilateImageFilter, BinaryDilateImageFilter

*/"
%javamethodmodifiers itk::simple::GrayscaleMorphologicalOpeningImageFilter::execute() "
/**gray scale dilation of an image

*/"
%javamethodmodifiers itk::simple::GrayscaleMorphologicalOpening "/**
gray scale dilation of an image

Dilate an image using grayscale morphology. Dilation takes the maximum of all the pixels identified by the structuring element.
The structuring element is assumed to be composed of binary values (zero or one). Only elements of the structuring element having values > 0 are candidates for affecting the center pixel.
see  MorphologyImageFilter, GrayscaleFunctionDilateImageFilter, BinaryDilateImageFilter

*/"
// Generated for ClassName from /scratch/blowekamp/build/ITK-gerrit/Utilities/Doxygen/xml/classitk_1_1HConcaveImageFilter.xml
%typemap(javaimports) itk::simple::HConcaveImageFilter "/** Identify local minima whose depth below the baseline is greater than h.

 HConcaveImageFilterextract local minima that are more than h intensity units below the (local) background. This has the effect of extracting objects that are darker than the background by at least h intensity units.
This filter uses the HMinimaImageFilter.
Geodesic morphology and the H-Convex algorithm is described in Chapter 6 of Pierre Soille's book Morphological Image Analysis:
 Principles and Applications, Second Edition, Springer, 2003.
see  GrayscaleGeodesicDilateImageFilter, HMaximaImageFilter,
see 
see  MorphologyImageFilter, GrayscaleDilateImageFilter, GrayscaleFunctionDilateImageFilter, BinaryDilateImageFilter

*/"
%javamethodmodifiers itk::simple::HConcaveImageFilter::execute() "
/**Identify local minima whose depth below the baseline is greater than h.

*/"
%javamethodmodifiers itk::simple::HConcave "/**
Identify local minima whose depth below the baseline is greater than h.

 HConcaveImageFilterextract local minima that are more than h intensity units below the (local) background. This has the effect of extracting objects that are darker than the background by at least h intensity units.
This filter uses the HMinimaImageFilter.
Geodesic morphology and the H-Convex algorithm is described in Chapter 6 of Pierre Soille's book Morphological Image Analysis:
 Principles and Applications, Second Edition, Springer, 2003.
see  GrayscaleGeodesicDilateImageFilter, HMaximaImageFilter,
see 
see  MorphologyImageFilter, GrayscaleDilateImageFilter, GrayscaleFunctionDilateImageFilter, BinaryDilateImageFilter

*/"
%javamethodmodifiers itk::simple::HConcaveImageFilter::setHeight "/**
virtual void itk::HConcaveImageFilter::SetHeight(InputImagePixelType _arg)

Set/Get the height that a local maximum must be above the local background (local contrast) in order to survive the processing. Local maxima below this value are replaced with an estimate of the local background.
*/"

%javamethodmodifiers itk::simple::HConcaveImageFilter::getHeight "/**
virtual InputImagePixelType itk::HConcaveImageFilter::GetHeight() const

Set/Get the height that a local maximum must be above the local background (local contrast) in order to survive the processing. Local maxima below this value are replaced with an estimate of the local background.
*/"

%javamethodmodifiers itk::simple::HConcaveImageFilter::setFullyConnected "/**
virtual void itk::HConcaveImageFilter::SetFullyConnected(bool _arg)

Set/Get whether the connected components are defined strictly by face connectivity or by face+edge+vertex connectivity. Default is FullyConnectedOff. For objects that are 1 pixel wide, use FullyConnectedOn.
*/"

%javamethodmodifiers itk::simple::HConcaveImageFilter::getFullyConnected "/**
virtual const bool& itk::HConcaveImageFilter::GetFullyConnected()

Set/Get whether the connected components are defined strictly by face connectivity or by face+edge+vertex connectivity. Default is FullyConnectedOff. For objects that are 1 pixel wide, use FullyConnectedOn.
*/"

// Generated for ClassName from /scratch/blowekamp/build/ITK-gerrit/Utilities/Doxygen/xml/classitk_1_1HConvexImageFilter.xml
%typemap(javaimports) itk::simple::HConvexImageFilter "/** Identify local maxima whose height above the baseline is greater than h.

 HConvexImageFilterextract local maxima that are more than h intensity units above the (local) background. This has the effect of extracting objects that are brighter than background by at least h intensity units.
This filter uses the HMaximaImageFilter.
Geodesic morphology and the H-Convex algorithm is described in Chapter 6 of Pierre Soille's book Morphological Image Analysis:
 Principles and Applications, Second Edition, Springer, 2003.
see  GrayscaleGeodesicDilateImageFilter, HMinimaImageFilter
see 
see  MorphologyImageFilter, GrayscaleDilateImageFilter, GrayscaleFunctionDilateImageFilter, BinaryDilateImageFilter

*/"
%javamethodmodifiers itk::simple::HConvexImageFilter::execute() "
/**Identify local maxima whose height above the baseline is greater than h.

*/"
%javamethodmodifiers itk::simple::HConvex "/**
Identify local maxima whose height above the baseline is greater than h.

 HConvexImageFilterextract local maxima that are more than h intensity units above the (local) background. This has the effect of extracting objects that are brighter than background by at least h intensity units.
This filter uses the HMaximaImageFilter.
Geodesic morphology and the H-Convex algorithm is described in Chapter 6 of Pierre Soille's book Morphological Image Analysis:
 Principles and Applications, Second Edition, Springer, 2003.
see  GrayscaleGeodesicDilateImageFilter, HMinimaImageFilter
see 
see  MorphologyImageFilter, GrayscaleDilateImageFilter, GrayscaleFunctionDilateImageFilter, BinaryDilateImageFilter

*/"
%javamethodmodifiers itk::simple::HConvexImageFilter::setHeight "/**
virtual void itk::HConvexImageFilter::SetHeight(InputImagePixelType _arg)

Set/Get the height that a local maximum must be above the local background (local contrast) in order to survive the processing. Local maxima below this value are replaced with an estimate of the local background.
*/"

%javamethodmodifiers itk::simple::HConvexImageFilter::getHeight "/**
virtual InputImagePixelType itk::HConvexImageFilter::GetHeight() const

Set/Get the height that a local maximum must be above the local background (local contrast) in order to survive the processing. Local maxima below this value are replaced with an estimate of the local background.
*/"

%javamethodmodifiers itk::simple::HConvexImageFilter::setFullyConnected "/**
virtual void itk::HConvexImageFilter::SetFullyConnected(bool _arg)

Set/Get whether the connected components are defined strictly by face connectivity or by face+edge+vertex connectivity. Default is FullyConnectedOff. For objects that are 1 pixel wide, use FullyConnectedOn.
*/"

%javamethodmodifiers itk::simple::HConvexImageFilter::getFullyConnected "/**
virtual const bool& itk::HConvexImageFilter::GetFullyConnected()

Set/Get whether the connected components are defined strictly by face connectivity or by face+edge+vertex connectivity. Default is FullyConnectedOff. For objects that are 1 pixel wide, use FullyConnectedOn.
*/"

// Generated for ClassName from /scratch/blowekamp/build/ITK-gerrit/Utilities/Doxygen/xml/classitk_1_1HMaximaImageFilter.xml
%typemap(javaimports) itk::simple::HMaximaImageFilter "/** Suppress local maxima whose height above the baseline is less than h.

 HMaximaImageFiltersuppresses local maxima that are less than h intensity units above the (local) background. This has the effect of smoothing over the high parts of the noise in the image without smoothing over large changes in intensity (region boundaries). See the HMinimaImageFilterto suppress the local minima whose depth is less than h intensity units below the (local) background.
If the output of HMaximaImageFilteris subtracted from the original image, the signicant peaks in the image can be identified. This is what the HConvexImageFilterprovides.
This filter uses the ReconstructionByDilationImageFilter. It provides its own input as the mask input to the geodesic dilation. The marker image for the geodesic dilation is the input image minus the height parameter h.
Geodesic morphology and the H-Maxima algorithm is described in Chapter 6 of Pierre Soille's book Morphological Image Analysis:
 Principles and Applications, Second Edition, Springer, 2003.
The height parameter is set using SetHeight.
see  ReconstructionByDilationImageFilter, HMinimaImageFilter, HConvexImageFilter
see 
see  MorphologyImageFilter, GrayscaleDilateImageFilter, GrayscaleFunctionDilateImageFilter, BinaryDilateImageFilter

*/"
%javamethodmodifiers itk::simple::HMaximaImageFilter::execute() "
/**Suppress local maxima whose height above the baseline is less than h.

*/"
%javamethodmodifiers itk::simple::HMaxima "/**
Suppress local maxima whose height above the baseline is less than h.

 HMaximaImageFiltersuppresses local maxima that are less than h intensity units above the (local) background. This has the effect of smoothing over the high parts of the noise in the image without smoothing over large changes in intensity (region boundaries). See the HMinimaImageFilterto suppress the local minima whose depth is less than h intensity units below the (local) background.
If the output of HMaximaImageFilteris subtracted from the original image, the signicant peaks in the image can be identified. This is what the HConvexImageFilterprovides.
This filter uses the ReconstructionByDilationImageFilter. It provides its own input as the mask input to the geodesic dilation. The marker image for the geodesic dilation is the input image minus the height parameter h.
Geodesic morphology and the H-Maxima algorithm is described in Chapter 6 of Pierre Soille's book Morphological Image Analysis:
 Principles and Applications, Second Edition, Springer, 2003.
The height parameter is set using SetHeight.
see  ReconstructionByDilationImageFilter, HMinimaImageFilter, HConvexImageFilter
see 
see  MorphologyImageFilter, GrayscaleDilateImageFilter, GrayscaleFunctionDilateImageFilter, BinaryDilateImageFilter

*/"
%javamethodmodifiers itk::simple::HMaximaImageFilter::setHeight "/**
virtual void itk::HMaximaImageFilter::SetHeight(InputImagePixelType _arg)

Set/Get the height that a local maximum must be above the local background (local contrast) in order to survive the processing. Local maxima below this value are replaced with an estimate of the local background.
*/"

%javamethodmodifiers itk::simple::HMaximaImageFilter::getHeight "/**
virtual InputImagePixelType itk::HMaximaImageFilter::GetHeight() const

Set/Get the height that a local maximum must be above the local background (local contrast) in order to survive the processing. Local maxima below this value are replaced with an estimate of the local background.
*/"

// Generated for ClassName from /scratch/blowekamp/build/ITK-gerrit/Utilities/Doxygen/xml/classitk_1_1HMinimaImageFilter.xml
%typemap(javaimports) itk::simple::HMinimaImageFilter "/** Suppress local minima whose depth below the baseline is less than h.

 HMinimaImageFiltersuppresses local minima that are less than h intensity units below the (local) background. This has the effect of smoothing over the low parts of the noise in the image without smoothing over large changes in intensity (region boundaries). See the HMaximaImageFilterto suppress the local maxima whose height is less than h intensity units above the (local) background.
If original image is subtracted from the output of HMinimaImageFilter, the signicant valleys in the image can be identified. This is what the HConcaveImageFilterprovides.
This filter uses the GrayscaleGeodesicErodeImageFilter. It provides its own input as the mask input to the geodesic dilation. The marker image for the geodesic dilation is the input image plus the height parameter h.
Geodesic morphology and the H-Minima algorithm is described in Chapter 6 of Pierre Soille's book Morphological Image Analysis:
 Principles and Applications, Second Edition, Springer, 2003.
see  GrayscaleGeodesicDilateImageFilter, HMinimaImageFilter, HConvexImageFilter
see 
see  MorphologyImageFilter, GrayscaleDilateImageFilter, GrayscaleFunctionDilateImageFilter, BinaryDilateImageFilter

*/"
%javamethodmodifiers itk::simple::HMinimaImageFilter::execute() "
/**Suppress local minima whose depth below the baseline is less than h.

*/"
%javamethodmodifiers itk::simple::HMinima "/**
Suppress local minima whose depth below the baseline is less than h.

 HMinimaImageFiltersuppresses local minima that are less than h intensity units below the (local) background. This has the effect of smoothing over the low parts of the noise in the image without smoothing over large changes in intensity (region boundaries). See the HMaximaImageFilterto suppress the local maxima whose height is less than h intensity units above the (local) background.
If original image is subtracted from the output of HMinimaImageFilter, the signicant valleys in the image can be identified. This is what the HConcaveImageFilterprovides.
This filter uses the GrayscaleGeodesicErodeImageFilter. It provides its own input as the mask input to the geodesic dilation. The marker image for the geodesic dilation is the input image plus the height parameter h.
Geodesic morphology and the H-Minima algorithm is described in Chapter 6 of Pierre Soille's book Morphological Image Analysis:
 Principles and Applications, Second Edition, Springer, 2003.
see  GrayscaleGeodesicDilateImageFilter, HMinimaImageFilter, HConvexImageFilter
see 
see  MorphologyImageFilter, GrayscaleDilateImageFilter, GrayscaleFunctionDilateImageFilter, BinaryDilateImageFilter

*/"
%javamethodmodifiers itk::simple::HMinimaImageFilter::setHeight "/**
virtual void itk::HMinimaImageFilter::SetHeight(InputImagePixelType _arg)

Set/Get the height that a local maximum must be above the local background (local contrast) in order to survive the processing. Local maxima below this value are replaced with an estimate of the local background.
*/"

%javamethodmodifiers itk::simple::HMinimaImageFilter::getHeight "/**
virtual InputImagePixelType itk::HMinimaImageFilter::GetHeight() const

Set/Get the height that a local maximum must be above the local background (local contrast) in order to survive the processing. Local maxima below this value are replaced with an estimate of the local background.
*/"

%javamethodmodifiers itk::simple::HMinimaImageFilter::setFullyConnected "/**
virtual void itk::HMinimaImageFilter::SetFullyConnected(bool _arg)

Set/Get whether the connected components are defined strictly by face connectivity or by face+edge+vertex connectivity. Default is FullyConnectedOff. For objects that are 1 pixel wide, use FullyConnectedOn.
*/"

%javamethodmodifiers itk::simple::HMinimaImageFilter::getFullyConnected "/**
virtual const bool& itk::HMinimaImageFilter::GetFullyConnected()

Set/Get whether the connected components are defined strictly by face connectivity or by face+edge+vertex connectivity. Default is FullyConnectedOff. For objects that are 1 pixel wide, use FullyConnectedOn.
*/"

// Generated for ClassName from /scratch/blowekamp/build/ITK-gerrit/Utilities/Doxygen/xml/classitk_1_1HausdorffDistanceImageFilter.xml
%typemap(javaimports) itk::simple::HausdorffDistanceImageFilter "/** Computes the Hausdorff distance between the set of non-zero pixels of two images.

 HausdorffDistanceImageFiltercomputes the distance between the set non-zero pixels of two images using the following formula: f[ H(A,B) = max(h(A,B),h(B,A)) f]  where f[ h(A,B) = max_{a in A} min_{b in B} | a - b| f]  is the directed Hausdorff distance andf$Af$ andf$Bf$ are respectively the set of non-zero pixels in the first and second input images.
In particular, this filter uses the DirectedHausdorffImageFilter inside to compute the two directed distances and then select the largest of the two.
The Hausdorff distance measures the degree of mismatch between two sets and behaves like a metric over the set of all closed bounded sets - with properties of identity, symmetry and triangle inequality.
This filter requires the largest possible region of the first image and the same corresponding region in the second image. It behaves as filter with two inputs and one output. Thus it can be inserted in a pipeline with other filters. The filter passes the first input through unmodified.
This filter is templated over the two input image types. It assume both images have the same number of dimensions.
see  DirectedHausdorffDistanceImageFilter

*/"
%javamethodmodifiers itk::simple::HausdorffDistanceImageFilter::execute() "
/**Computes the Hausdorff distance between the set of non-zero pixels of two images.

*/"
%javamethodmodifiers itk::simple::HausdorffDistance "/**
Computes the Hausdorff distance between the set of non-zero pixels of two images.

 HausdorffDistanceImageFiltercomputes the distance between the set non-zero pixels of two images using the following formula: f[ H(A,B) = max(h(A,B),h(B,A)) f]  where f[ h(A,B) = max_{a in A} min_{b in B} | a - b| f]  is the directed Hausdorff distance andf$Af$ andf$Bf$ are respectively the set of non-zero pixels in the first and second input images.
In particular, this filter uses the DirectedHausdorffImageFilter inside to compute the two directed distances and then select the largest of the two.
The Hausdorff distance measures the degree of mismatch between two sets and behaves like a metric over the set of all closed bounded sets - with properties of identity, symmetry and triangle inequality.
This filter requires the largest possible region of the first image and the same corresponding region in the second image. It behaves as filter with two inputs and one output. Thus it can be inserted in a pipeline with other filters. The filter passes the first input through unmodified.
This filter is templated over the two input image types. It assume both images have the same number of dimensions.
see  DirectedHausdorffDistanceImageFilter

*/"
// Generated for ClassName from /scratch/blowekamp/build/ITK-gerrit/Utilities/Doxygen/xml/classitk_1_1HistogramMatchingImageFilter.xml
%typemap(javaimports) itk::simple::HistogramMatchingImageFilter "/** Normalize the grayscale values between two images by histogram matching.

 HistogramMatchingImageFilternormalizes the grayscale values of a source image based on the grayscale values of a reference image. This filter uses a histogram matching technique where the histograms of the two images are matched only at a specified number of quantile values.
This filter was originally designed to normalize MR images of the same MR protocol and same body part. The algorithm works best if background pixels are excluded from both the source and reference histograms. A simple background exclusion method is to exclude all pixels whose grayscale values are smaller than the mean grayscale value. ThresholdAtMeanIntensityOn()switches on this simple background exclusion method.
The source image can be set via either SetInput()or SetSourceImage(). The reference image can be set via SetReferenceImage().
 SetNumberOfHistogramLevels()sets the number of bins used when creating histograms of the source and reference images. SetNumberOfMatchPoints()governs the number of quantile values to be matched.
This filter assumes that both the source and reference are of the same type and that the input and output image type have the same number of dimension and have scalar pixel types.
par REFERENCE
Laszlo G. Nyul, Jayaram K. Udupa, and Xuan Zhang, New Variants of a Method
 of MRI Scale Standardization, IEEE Transactions on Medical Imaging, 19(2):143-150, 2000.

*/"
%javamethodmodifiers itk::simple::HistogramMatchingImageFilter::execute() "
/**Normalize the grayscale values between two images by histogram matching.

*/"
%javamethodmodifiers itk::simple::HistogramMatching "/**
Normalize the grayscale values between two images by histogram matching.

 HistogramMatchingImageFilternormalizes the grayscale values of a source image based on the grayscale values of a reference image. This filter uses a histogram matching technique where the histograms of the two images are matched only at a specified number of quantile values.
This filter was originally designed to normalize MR images of the same MR protocol and same body part. The algorithm works best if background pixels are excluded from both the source and reference histograms. A simple background exclusion method is to exclude all pixels whose grayscale values are smaller than the mean grayscale value. ThresholdAtMeanIntensityOn()switches on this simple background exclusion method.
The source image can be set via either SetInput()or SetSourceImage(). The reference image can be set via SetReferenceImage().
 SetNumberOfHistogramLevels()sets the number of bins used when creating histograms of the source and reference images. SetNumberOfMatchPoints()governs the number of quantile values to be matched.
This filter assumes that both the source and reference are of the same type and that the input and output image type have the same number of dimension and have scalar pixel types.
par REFERENCE
Laszlo G. Nyul, Jayaram K. Udupa, and Xuan Zhang, New Variants of a Method
 of MRI Scale Standardization, IEEE Transactions on Medical Imaging, 19(2):143-150, 2000.

*/"
%javamethodmodifiers itk::simple::HistogramMatchingImageFilter::setNumberOfHistogramLevels "/**
virtual void itk::HistogramMatchingImageFilter::SetNumberOfHistogramLevels(SizeValueType _arg)

Set/Get the number of histogram levels used.
*/"

%javamethodmodifiers itk::simple::HistogramMatchingImageFilter::getNumberOfHistogramLevels "/**
virtual SizeValueType itk::HistogramMatchingImageFilter::GetNumberOfHistogramLevels() const

Set/Get the number of histogram levels used.
*/"

%javamethodmodifiers itk::simple::HistogramMatchingImageFilter::setNumberOfMatchPoints "/**
virtual void itk::HistogramMatchingImageFilter::SetNumberOfMatchPoints(SizeValueType _arg)

Set/Get the number of match points used.
*/"

%javamethodmodifiers itk::simple::HistogramMatchingImageFilter::getNumberOfMatchPoints "/**
virtual SizeValueType itk::HistogramMatchingImageFilter::GetNumberOfMatchPoints() const

Set/Get the number of match points used.
*/"

%javamethodmodifiers itk::simple::HistogramMatchingImageFilter::setThresholdAtMeanIntensity "/**
virtual void itk::HistogramMatchingImageFilter::SetThresholdAtMeanIntensity(bool _arg)

Set/Get the threshold at mean intensity flag. If true, only source (reference) pixels which are greater than the mean source (reference) intensity is used in the histogram matching. If false, all pixels are used.
*/"

%javamethodmodifiers itk::simple::HistogramMatchingImageFilter::getThresholdAtMeanIntensity "/**
virtual bool itk::HistogramMatchingImageFilter::GetThresholdAtMeanIntensity() const

Set/Get the threshold at mean intensity flag. If true, only source (reference) pixels which are greater than the mean source (reference) intensity is used in the histogram matching. If false, all pixels are used.
*/"

// Generated for ClassName from /scratch/blowekamp/build/ITK-gerrit/Utilities/Doxygen/xml/classitk_1_1HuangThresholdImageFilter.xml
%typemap(javaimports) itk::simple::HuangThresholdImageFilter "/** Threshold an image using the Huang Threshold.

This filter creates a binary thresholded image that separates an image into foreground and background components. The filter computes the threshold using the HuangThresholdCalculatorand applies that theshold to the input image using the BinaryThresholdImageFilter.
author Richard Beare. Department of Medicine, Monash University, Melbourne, Australia.
Gaetan Lehmann. Biologie du Developpement et de la Reproduction, INRA de Jouy-en-Josas, France.
This implementation was taken from the Insight Journal paper:http://hdl.handle.net/10380/3279orhttp://www.insight-journal.org/browse/publication/811
see HistogramThresholdImageFitler

*/"
%javamethodmodifiers itk::simple::HuangThresholdImageFilter::execute() "
/**Threshold an image using the Huang Threshold.

*/"
%javamethodmodifiers itk::simple::HuangThreshold "/**
Threshold an image using the Huang Threshold.

This filter creates a binary thresholded image that separates an image into foreground and background components. The filter computes the threshold using the HuangThresholdCalculatorand applies that theshold to the input image using the BinaryThresholdImageFilter.
author Richard Beare. Department of Medicine, Monash University, Melbourne, Australia.
Gaetan Lehmann. Biologie du Developpement et de la Reproduction, INRA de Jouy-en-Josas, France.
This implementation was taken from the Insight Journal paper:http://hdl.handle.net/10380/3279orhttp://www.insight-journal.org/browse/publication/811
see HistogramThresholdImageFitler

*/"
// Generated for ClassName from /scratch/blowekamp/build/ITK-gerrit/Utilities/Doxygen/xml/classitk_1_1IntensityWindowingImageFilter.xml
%typemap(javaimports) itk::simple::IntensityWindowingImageFilter "/** Applies a linear transformation to the intensity levels of the input Imagethat are inside a user-defined interval. Values below this interval are mapped to a constant. Values over the interval are mapped to another constant.

 IntensityWindowingImageFilterapplies pixel-wise a linear transformation to the intensity values of input image pixels. The linear transformation is defined by the user in terms of the minimum and maximum values that the output image should have and the lower and upper limits of the intensity window of the input image. This operation is very common in visualization, and can also be applied as a convenient preprocessing operation for image segmentation.
All computations are performed in the precison of the input pixel's RealType. Before assigning the computed value to the output pixel.
par Wiki Examples:

li All Examples

li IntensityWindowingImageFilter
see  RescaleIntensityImageFilter

*/"
%javamethodmodifiers itk::simple::IntensityWindowingImageFilter::execute() "
/**Applies a linear transformation to the intensity levels of the input Imagethat are inside a user-defined interval. Values below this interval are mapped to a constant. Values over the interval are mapped to another constant.

*/"
%javamethodmodifiers itk::simple::IntensityWindowing "/**
Applies a linear transformation to the intensity levels of the input Imagethat are inside a user-defined interval. Values below this interval are mapped to a constant. Values over the interval are mapped to another constant.

 IntensityWindowingImageFilterapplies pixel-wise a linear transformation to the intensity values of input image pixels. The linear transformation is defined by the user in terms of the minimum and maximum values that the output image should have and the lower and upper limits of the intensity window of the input image. This operation is very common in visualization, and can also be applied as a convenient preprocessing operation for image segmentation.
All computations are performed in the precison of the input pixel's RealType. Before assigning the computed value to the output pixel.
par Wiki Examples:

li All Examples

li IntensityWindowingImageFilter
see  RescaleIntensityImageFilter

*/"
%javamethodmodifiers itk::simple::IntensityWindowingImageFilter::setWindowMinimum "/**
virtual void itk::IntensityWindowingImageFilter::SetWindowMinimum(InputPixelType _arg)

Set/Get the values of the maximum and minimum intensities of the input intensity window
*/"

%javamethodmodifiers itk::simple::IntensityWindowingImageFilter::getWindowMinimum "/**
virtual const InputPixelType& itk::IntensityWindowingImageFilter::GetWindowMinimum()

Set/Get the values of the maximum and minimum intensities of the input intensity window
*/"

%javamethodmodifiers itk::simple::IntensityWindowingImageFilter::setWindowMaximum "/**
virtual void itk::IntensityWindowingImageFilter::SetWindowMaximum(InputPixelType _arg)

Set/Get the values of the maximum and minimum intensities of the input intensity window
*/"

%javamethodmodifiers itk::simple::IntensityWindowingImageFilter::getWindowMaximum "/**
virtual const InputPixelType& itk::IntensityWindowingImageFilter::GetWindowMaximum()

Set/Get the values of the maximum and minimum intensities of the input intensity window
*/"

%javamethodmodifiers itk::simple::IntensityWindowingImageFilter::setOutputMinimum "/**
virtual void itk::IntensityWindowingImageFilter::SetOutputMinimum(OutputPixelType _arg)

Set/Get the values of the maximum and minimum intensities of the outputimage
*/"

%javamethodmodifiers itk::simple::IntensityWindowingImageFilter::getOutputMinimum "/**
virtual const OutputPixelType& itk::IntensityWindowingImageFilter::GetOutputMinimum()

Set/Get the values of the maximum and minimum intensities of the outputimage
*/"

%javamethodmodifiers itk::simple::IntensityWindowingImageFilter::setOutputMaximum "/**
virtual void itk::IntensityWindowingImageFilter::SetOutputMaximum(OutputPixelType _arg)

Set/Get the values of the maximum and minimum intensities of the outputimage
*/"

%javamethodmodifiers itk::simple::IntensityWindowingImageFilter::getOutputMaximum "/**
virtual const OutputPixelType& itk::IntensityWindowingImageFilter::GetOutputMaximum()

Set/Get the values of the maximum and minimum intensities of the outputimage
*/"

// Generated for ClassName from /scratch/blowekamp/build/ITK-gerrit/Utilities/Doxygen/xml/classitk_1_1IntermodesThresholdImageFilter.xml
%typemap(javaimports) itk::simple::IntermodesThresholdImageFilter "/** Threshold an image using the Intermodes Threshold.

This filter creates a binary thresholded image that separates an image into foreground and background components. The filter computes the threshold using the IntermodesThresholdCalculatorand applies that theshold to the input image using the BinaryThresholdImageFilter.
author Richard Beare. Department of Medicine, Monash University, Melbourne, Australia.
Gaetan Lehmann. Biologie du Developpement et de la Reproduction, INRA de Jouy-en-Josas, France.
This implementation was taken from the Insight Journal paper:http://hdl.handle.net/10380/3279orhttp://www.insight-journal.org/browse/publication/811
see HistogramThresholdImageFitler

*/"
%javamethodmodifiers itk::simple::IntermodesThresholdImageFilter::execute() "
/**Threshold an image using the Intermodes Threshold.

*/"
%javamethodmodifiers itk::simple::IntermodesThreshold "/**
Threshold an image using the Intermodes Threshold.

This filter creates a binary thresholded image that separates an image into foreground and background components. The filter computes the threshold using the IntermodesThresholdCalculatorand applies that theshold to the input image using the BinaryThresholdImageFilter.
author Richard Beare. Department of Medicine, Monash University, Melbourne, Australia.
Gaetan Lehmann. Biologie du Developpement et de la Reproduction, INRA de Jouy-en-Josas, France.
This implementation was taken from the Insight Journal paper:http://hdl.handle.net/10380/3279orhttp://www.insight-journal.org/browse/publication/811
see HistogramThresholdImageFitler

*/"
// Generated for ClassName from /scratch/blowekamp/build/ITK-gerrit/Utilities/Doxygen/xml/classitk_1_1InverseDeconvolutionImageFilter.xml
%typemap(javaimports) itk::simple::InverseDeconvolutionImageFilter "/** The direct linear inverse deconvolution filter.

The inverse filter is the most straightforward deconvolution method. Considering that convolution of two images in the spatial domain is equivalent to multiplying the Fourier transform of the two images, the inverse filter consists of inverting the multiplication. In other words, this filter computes the following: f[ hat{F}(omega) = begin{cases} G(omega) / H(omega) & text{if f$|H(omega)| geq epsilonf$}  0 & text{otherwise} end{cases} f]  wheref$hat{F}(omega)f$ is the Fourier transform of the estimate produced by this filter,f$G(omega)f$ is the Fourier transform of the input blurred image,f$H(omega)f$ is the Fourier transform of the blurring kernel, andf$epsilonf$ is a constant real non-negative threshold (called KernelZeroMagnitudeThreshold in this filter) that determines when the magnitude of a complex number is considered zero.
author Gaetan Lehmann, Biologie du Developpement et de la Reproduction, INRA de Jouy-en-Josas, France
Cory Quammen, The University of North Carolina at Chapel Hill

*/"
%javamethodmodifiers itk::simple::InverseDeconvolutionImageFilter::execute() "
/**The direct linear inverse deconvolution filter.

*/"
%javamethodmodifiers itk::simple::InverseDeconvolution "/**
The direct linear inverse deconvolution filter.

The inverse filter is the most straightforward deconvolution method. Considering that convolution of two images in the spatial domain is equivalent to multiplying the Fourier transform of the two images, the inverse filter consists of inverting the multiplication. In other words, this filter computes the following: f[ hat{F}(omega) = begin{cases} G(omega) / H(omega) & text{if f$|H(omega)| geq epsilonf$}  0 & text{otherwise} end{cases} f]  wheref$hat{F}(omega)f$ is the Fourier transform of the estimate produced by this filter,f$G(omega)f$ is the Fourier transform of the input blurred image,f$H(omega)f$ is the Fourier transform of the blurring kernel, andf$epsilonf$ is a constant real non-negative threshold (called KernelZeroMagnitudeThreshold in this filter) that determines when the magnitude of a complex number is considered zero.
author Gaetan Lehmann, Biologie du Developpement et de la Reproduction, INRA de Jouy-en-Josas, France
Cory Quammen, The University of North Carolina at Chapel Hill

*/"
%javamethodmodifiers itk::simple::InverseDeconvolutionImageFilter::setKernelZeroMagnitudeThreshold "/**
virtual void itk::InverseDeconvolutionImageFilter::SetKernelZeroMagnitudeThreshold(double _arg)

Set/get the threshold value uused to determine whether a frequency of the Fourier transform of the blurring kernel is considered to be zero. Default value is 1.0e-4.
*/"

%javamethodmodifiers itk::simple::InverseDeconvolutionImageFilter::getKernelZeroMagnitudeThreshold "/**
virtual double itk::InverseDeconvolutionImageFilter::GetKernelZeroMagnitudeThreshold() const

Set/get the threshold value uused to determine whether a frequency of the Fourier transform of the blurring kernel is considered to be zero. Default value is 1.0e-4.
*/"

// Generated for ClassName from /scratch/blowekamp/build/ITK-gerrit/Utilities/Doxygen/xml/classitk_1_1InverseFFTImageFilter.xml
%typemap(javaimports) itk::simple::InverseFFTImageFilter "/** Base class for inverse Fast Fourier Transform.

This is a base class for the inverse or reverse Discrete Fourier Transform. This is an abstract base class: the actual implementation is provided by the best child available on the system when the object is created via the object factory system.
This class transforms a full complex image with Hermitian symmetry into its real spatial domain representation. If the input does not have Hermitian symmetry, the imaginary component is discarded.
see  ForwardFFTImageFilter, InverseFFTImageFilter

*/"
%javamethodmodifiers itk::simple::InverseFFTImageFilter::execute() "
/**Base class for inverse Fast Fourier Transform.

*/"
%javamethodmodifiers itk::simple::InverseFFT "/**
Base class for inverse Fast Fourier Transform.

This is a base class for the inverse or reverse Discrete Fourier Transform. This is an abstract base class: the actual implementation is provided by the best child available on the system when the object is created via the object factory system.
This class transforms a full complex image with Hermitian symmetry into its real spatial domain representation. If the input does not have Hermitian symmetry, the imaginary component is discarded.
see  ForwardFFTImageFilter, InverseFFTImageFilter

*/"
// Generated for ClassName from /scratch/blowekamp/build/ITK-gerrit/Utilities/Doxygen/xml/classitk_1_1InvertIntensityImageFilter.xml
%typemap(javaimports) itk::simple::InvertIntensityImageFilter "/** Invert the intensity of an image.

 InvertIntensityImageFilterinverts intensity of pixels by subtracting pixel value to a maximum value. The maximum value can be set with SetMaximum and defaults the maximum of input pixel type. This filter can be used to invert, for example, a binary image, a distance map, etc.
author Gaetan Lehmann. Biologie du Developpement et de la Reproduction, INRA de Jouy-en-Josas, France.
see  IntensityWindowingImageFilter ShiftScaleImageFilter
par Wiki Examples:

li All Examples

li Invert an image

*/"
%javamethodmodifiers itk::simple::InvertIntensityImageFilter::execute() "
/**Invert the intensity of an image.

*/"
%javamethodmodifiers itk::simple::InvertIntensity "/**
Invert the intensity of an image.

 InvertIntensityImageFilterinverts intensity of pixels by subtracting pixel value to a maximum value. The maximum value can be set with SetMaximum and defaults the maximum of input pixel type. This filter can be used to invert, for example, a binary image, a distance map, etc.
author Gaetan Lehmann. Biologie du Developpement et de la Reproduction, INRA de Jouy-en-Josas, France.
see  IntensityWindowingImageFilter ShiftScaleImageFilter
par Wiki Examples:

li All Examples

li Invert an image

*/"
%javamethodmodifiers itk::simple::InvertIntensityImageFilter::setMaximum "/**
virtual void itk::InvertIntensityImageFilter::SetMaximum(InputPixelType _arg)

*/"

%javamethodmodifiers itk::simple::InvertIntensityImageFilter::getMaximum "/**
virtual const InputPixelType& itk::InvertIntensityImageFilter::GetMaximum()

*/"

// Generated for ClassName from /scratch/blowekamp/build/ITK-gerrit/Utilities/Doxygen/xml/classitk_1_1IsoContourDistanceImageFilter.xml
%typemap(javaimports) itk::simple::IsoContourDistanceImageFilter "/** Compute an approximate distance from an interpolated isocontour to the close grid points.

For standard level set algorithms, it is useful to periodically reinitialize the evolving image to prevent numerical accuracy problems in computing derivatives. This reinitialization is done by computing a signed distance map to the current level set. This class provides the first step in this reinitialization by computing an estimate of the distance from the interpolated isocontour to the pixels (or voxels) that are close to it, i.e. for which the isocontour crosses a segment between them and one of their direct neighbors. This class supports narrowbanding. If the input narrowband is provided, the algorithm will only locate the level set within the input narrowband.
Implementation of this class is based on Fast and Accurate Redistancing for Level Set Methods `Krissian K. and Westin C.F.', EUROCAST NeuroImaging Workshop Las Palmas Spain, Ninth International Conference on Computer Aided Systems Theory , pages 48-51, Feb 2003.
*/"
%javamethodmodifiers itk::simple::IsoContourDistanceImageFilter::execute() "
/**Compute an approximate distance from an interpolated isocontour to the close grid points.

*/"
%javamethodmodifiers itk::simple::IsoContourDistance "/**
Compute an approximate distance from an interpolated isocontour to the close grid points.

For standard level set algorithms, it is useful to periodically reinitialize the evolving image to prevent numerical accuracy problems in computing derivatives. This reinitialization is done by computing a signed distance map to the current level set. This class provides the first step in this reinitialization by computing an estimate of the distance from the interpolated isocontour to the pixels (or voxels) that are close to it, i.e. for which the isocontour crosses a segment between them and one of their direct neighbors. This class supports narrowbanding. If the input narrowband is provided, the algorithm will only locate the level set within the input narrowband.
Implementation of this class is based on Fast and Accurate Redistancing for Level Set Methods `Krissian K. and Westin C.F.', EUROCAST NeuroImaging Workshop Las Palmas Spain, Ninth International Conference on Computer Aided Systems Theory , pages 48-51, Feb 2003.
*/"
%javamethodmodifiers itk::simple::IsoContourDistanceImageFilter::setLevelSetValue "/**
virtual void itk::IsoContourDistanceImageFilter::SetLevelSetValue(InputPixelType _arg)

Set/Get the value of the level set to be located. The default value is 0.
*/"

%javamethodmodifiers itk::simple::IsoContourDistanceImageFilter::getLevelSetValue "/**
virtual InputPixelType itk::IsoContourDistanceImageFilter::GetLevelSetValue() const

Set/Get the value of the level set to be located. The default value is 0.
*/"

%javamethodmodifiers itk::simple::IsoContourDistanceImageFilter::setFarValue "/**
virtual void itk::IsoContourDistanceImageFilter::SetFarValue(PixelType _arg)

Set/Get the value of the level set to be located. The default value is 0.
*/"

%javamethodmodifiers itk::simple::IsoContourDistanceImageFilter::getFarValue "/**
virtual PixelType itk::IsoContourDistanceImageFilter::GetFarValue() const

Set/Get the value of the level set to be located. The default value is 0.
*/"

// Generated for ClassName from /scratch/blowekamp/build/ITK-gerrit/Utilities/Doxygen/xml/classitk_1_1IsoDataThresholdImageFilter.xml
%typemap(javaimports) itk::simple::IsoDataThresholdImageFilter "/** Threshold an image using the IsoData Threshold.

This filter creates a binary thresholded image that separates an image into foreground and background components. The filter computes the threshold using the IsoDataThresholdCalculatorand applies that theshold to the input image using the BinaryThresholdImageFilter.
author Richard Beare. Department of Medicine, Monash University, Melbourne, Australia.
Gaetan Lehmann. Biologie du Developpement et de la Reproduction, INRA de Jouy-en-Josas, France.
This implementation was taken from the Insight Journal paper:http://hdl.handle.net/10380/3279orhttp://www.insight-journal.org/browse/publication/811
see HistogramThresholdImageFitler

*/"
%javamethodmodifiers itk::simple::IsoDataThresholdImageFilter::execute() "
/**Threshold an image using the IsoData Threshold.

*/"
%javamethodmodifiers itk::simple::IsoDataThreshold "/**
Threshold an image using the IsoData Threshold.

This filter creates a binary thresholded image that separates an image into foreground and background components. The filter computes the threshold using the IsoDataThresholdCalculatorand applies that theshold to the input image using the BinaryThresholdImageFilter.
author Richard Beare. Department of Medicine, Monash University, Melbourne, Australia.
Gaetan Lehmann. Biologie du Developpement et de la Reproduction, INRA de Jouy-en-Josas, France.
This implementation was taken from the Insight Journal paper:http://hdl.handle.net/10380/3279orhttp://www.insight-journal.org/browse/publication/811
see HistogramThresholdImageFitler

*/"
// Generated for ClassName from /scratch/blowekamp/build/ITK-gerrit/Utilities/Doxygen/xml/classitk_1_1IsolatedConnectedImageFilter.xml
%typemap(javaimports) itk::simple::IsolatedConnectedImageFilter "/** Label pixels that are connected to one set of seeds but not another.

 IsolatedConnectedImageFilterfinds the optimal threshold to separate two regions. It has two modes, one to separate dark regions surrounded by bright regions by automatically finding a minimum isolating upper threshold, and another to separate bright regions surrounded by dark regions by automatically finding a maximum lower isolating threshold. The mode can be chosen by setting FindUpperThresholdOn()/Off(). In both cases, the isolating threshold is retrieved with GetIsolatedValue().
The algorithm labels pixels with ReplaceValue that are connected to Seeds1 AND NOT connected to Seeds2. When finding the threshold to separate two dark regions surrounded by bright regions, given a fixed lower threshold, the filter adjusts the upper threshold until the two sets of seeds are not connected. The algorithm uses a binary search to adjust the upper threshold, starting at Upper. The reverse is true for finding the threshold to separate two bright regions. Lower defaults to the smallest possible value for the InputImagePixelType, and Upper defaults to the largest possible value for the InputImagePixelType.
The user can also supply the Lower and Upper values to restrict the search. However, if the range is too restrictive, it could happen that no isolating threshold can be found between the user specified Lower and Upper values. Therefore, unless the user is sure of the bounds to set, it is recommended that the user set these values to the lowest and highest intensity values in the image, respectively.
The user can specify more than one seed for both regions to separate. The algorithm will try find the threshold that ensures that all of the first seeds are contained in the resulting segmentation and all of the second seeds are not contained in the segmentation.
It is possible that the algorithm may not be able to find the isolating threshold because no such threshold exists. The user can check for this by querying the GetThresholdingFailed()flag.
*/"
%javamethodmodifiers itk::simple::IsolatedConnectedImageFilter::execute() "
/**Label pixels that are connected to one set of seeds but not another.

*/"
%javamethodmodifiers itk::simple::IsolatedConnected "/**
Label pixels that are connected to one set of seeds but not another.

 IsolatedConnectedImageFilterfinds the optimal threshold to separate two regions. It has two modes, one to separate dark regions surrounded by bright regions by automatically finding a minimum isolating upper threshold, and another to separate bright regions surrounded by dark regions by automatically finding a maximum lower isolating threshold. The mode can be chosen by setting FindUpperThresholdOn()/Off(). In both cases, the isolating threshold is retrieved with GetIsolatedValue().
The algorithm labels pixels with ReplaceValue that are connected to Seeds1 AND NOT connected to Seeds2. When finding the threshold to separate two dark regions surrounded by bright regions, given a fixed lower threshold, the filter adjusts the upper threshold until the two sets of seeds are not connected. The algorithm uses a binary search to adjust the upper threshold, starting at Upper. The reverse is true for finding the threshold to separate two bright regions. Lower defaults to the smallest possible value for the InputImagePixelType, and Upper defaults to the largest possible value for the InputImagePixelType.
The user can also supply the Lower and Upper values to restrict the search. However, if the range is too restrictive, it could happen that no isolating threshold can be found between the user specified Lower and Upper values. Therefore, unless the user is sure of the bounds to set, it is recommended that the user set these values to the lowest and highest intensity values in the image, respectively.
The user can specify more than one seed for both regions to separate. The algorithm will try find the threshold that ensures that all of the first seeds are contained in the resulting segmentation and all of the second seeds are not contained in the segmentation.
It is possible that the algorithm may not be able to find the isolating threshold because no such threshold exists. The user can check for this by querying the GetThresholdingFailed()flag.
*/"
%javamethodmodifiers itk::simple::IsolatedConnectedImageFilter::setSeed1 "/**
void itk::IsolatedConnectedImageFilter::SetSeed1(const IndexType &seed)

Set seed point 1. This seed will be isolated from Seed2 (if possible). All pixels connected to this seed will be replaced with ReplaceValue. This method is deprecated, please use AddSeed()
*/"

%javamethodmodifiers itk::simple::IsolatedConnectedImageFilter::setSeed2 "/**
void itk::IsolatedConnectedImageFilter::SetSeed2(const IndexType &seed)

Set seed point 2. This seed will be isolated from Seed1 (if possible). This method is deprecated, please use AddSeed()
*/"

%javamethodmodifiers itk::simple::IsolatedConnectedImageFilter::setLower "/**
virtual void itk::IsolatedConnectedImageFilter::SetLower(InputImagePixelType _arg)

Set/Get the limit on the lower threshold value. The default is the NonpositiveMin() for the InputPixelType.
*/"

%javamethodmodifiers itk::simple::IsolatedConnectedImageFilter::getLower "/**
virtual const InputImagePixelType& itk::IsolatedConnectedImageFilter::GetLower()

Set/Get the limit on the lower threshold value. The default is the NonpositiveMin() for the InputPixelType.
*/"

%javamethodmodifiers itk::simple::IsolatedConnectedImageFilter::setUpper "/**
virtual void itk::IsolatedConnectedImageFilter::SetUpper(InputImagePixelType _arg)

Set/Get the limit on the upper threshold value. The default is the max() for the InputPixelType.
*/"

%javamethodmodifiers itk::simple::IsolatedConnectedImageFilter::getUpper "/**
virtual const InputImagePixelType& itk::IsolatedConnectedImageFilter::GetUpper()

Set/Get the limit on the upper threshold value. The default is the max() for the InputPixelType.
*/"

%javamethodmodifiers itk::simple::IsolatedConnectedImageFilter::setReplaceValue "/**
virtual void itk::IsolatedConnectedImageFilter::SetReplaceValue(OutputImagePixelType _arg)

Set/Get value to replace thresholded pixels. Pixels that lie within the thresholds will be replaced with this value. The default is 1.
*/"

%javamethodmodifiers itk::simple::IsolatedConnectedImageFilter::getReplaceValue "/**
virtual const OutputImagePixelType& itk::IsolatedConnectedImageFilter::GetReplaceValue()

Set/Get value to replace thresholded pixels. Pixels that lie within the thresholds will be replaced with this value. The default is 1.
*/"

%javamethodmodifiers itk::simple::IsolatedConnectedImageFilter::setIsolatedValueTolerance "/**
virtual void itk::IsolatedConnectedImageFilter::SetIsolatedValueTolerance(InputImagePixelType _arg)

Set/Get the precision required for the intensity threshold value. The default is 1.
*/"

%javamethodmodifiers itk::simple::IsolatedConnectedImageFilter::getIsolatedValueTolerance "/**
virtual const InputImagePixelType& itk::IsolatedConnectedImageFilter::GetIsolatedValueTolerance()

Set/Get the precision required for the intensity threshold value. The default is 1.
*/"

%javamethodmodifiers itk::simple::IsolatedConnectedImageFilter::setFindUpperThreshold "/**
virtual void itk::IsolatedConnectedImageFilter::SetFindUpperThreshold(bool _arg)

Set/Get whether to find an upper threshold (separating two dark regions) or a lower threshold (separating two bright regions).
*/"

%javamethodmodifiers itk::simple::IsolatedConnectedImageFilter::getFindUpperThreshold "/**
virtual const bool& itk::IsolatedConnectedImageFilter::GetFindUpperThreshold()

Set/Get whether to find an upper threshold (separating two dark regions) or a lower threshold (separating two bright regions).
*/"

// Generated for ClassName from /scratch/blowekamp/build/ITK-gerrit/Utilities/Doxygen/xml/classitk_1_1IsolatedWatershedImageFilter.xml
%typemap(javaimports) itk::simple::IsolatedWatershedImageFilter "/** Isolate watershed basins using two seeds.

 IsolatedWatershedImageFilterlabels pixels with ReplaceValue1 that are in the same watershed basin as Seed1 AND NOT the same as Seed2. The filter adjusts the waterlevel until the two seeds are not in different basins. The user supplies a Watershed threshold. The algorithm uses a binary search to adjust the upper waterlevel, starting at UpperValueLimit. UpperValueLimit defaults to the 1.0.
*/"
%javamethodmodifiers itk::simple::IsolatedWatershedImageFilter::execute() "
/**Isolate watershed basins using two seeds.

*/"
%javamethodmodifiers itk::simple::IsolatedWatershed "/**
Isolate watershed basins using two seeds.

 IsolatedWatershedImageFilterlabels pixels with ReplaceValue1 that are in the same watershed basin as Seed1 AND NOT the same as Seed2. The filter adjusts the waterlevel until the two seeds are not in different basins. The user supplies a Watershed threshold. The algorithm uses a binary search to adjust the upper waterlevel, starting at UpperValueLimit. UpperValueLimit defaults to the 1.0.
*/"
%javamethodmodifiers itk::simple::IsolatedWatershedImageFilter::setSeed1 "/**
virtual void itk::IsolatedWatershedImageFilter::SetSeed1(IndexType _arg)

Set seed point 1. This seed will be isolated from Seed2 (if possible). All pixels connected to this seed will be replaced with ReplaceValue1.
*/"

%javamethodmodifiers itk::simple::IsolatedWatershedImageFilter::setSeed2 "/**
virtual void itk::IsolatedWatershedImageFilter::SetSeed2(IndexType _arg)

Set seed point 2. This seed will be isolated from Seed1 (if possible). All pixels connected to this seed will be replaced with ReplaceValue2.
*/"

%javamethodmodifiers itk::simple::IsolatedWatershedImageFilter::setThreshold "/**
virtual void itk::IsolatedWatershedImageFilter::SetThreshold(double _arg)

Set/Get the Watershed threshold. The default is 0.
*/"

%javamethodmodifiers itk::simple::IsolatedWatershedImageFilter::getThreshold "/**
virtual double itk::IsolatedWatershedImageFilter::GetThreshold() const

Set/Get the Watershed threshold. The default is 0.
*/"

%javamethodmodifiers itk::simple::IsolatedWatershedImageFilter::setUpperValueLimit "/**
virtual void itk::IsolatedWatershedImageFilter::SetUpperValueLimit(double _arg)

Set/Get the limit on the upper waterlevel value. The default is 1.0.
*/"

%javamethodmodifiers itk::simple::IsolatedWatershedImageFilter::getUpperValueLimit "/**
virtual double itk::IsolatedWatershedImageFilter::GetUpperValueLimit() const

Set/Get the limit on the upper waterlevel value. The default is 1.0.
*/"

%javamethodmodifiers itk::simple::IsolatedWatershedImageFilter::setIsolatedValueTolerance "/**
virtual void itk::IsolatedWatershedImageFilter::SetIsolatedValueTolerance(double _arg)

Set/Get the precision required for the intensity threshold value. The default is .001.
*/"

%javamethodmodifiers itk::simple::IsolatedWatershedImageFilter::getIsolatedValueTolerance "/**
virtual double itk::IsolatedWatershedImageFilter::GetIsolatedValueTolerance() const

Set/Get the precision required for the intensity threshold value. The default is .001.
*/"

%javamethodmodifiers itk::simple::IsolatedWatershedImageFilter::setReplaceValue1 "/**
virtual void itk::IsolatedWatershedImageFilter::SetReplaceValue1(OutputImagePixelType _arg)

Set/Get value to replace Seed1(Seed2) pixels, pixels that are within the basin that contains Seed1(Seed2) this value. The default is 1(0).
*/"

%javamethodmodifiers itk::simple::IsolatedWatershedImageFilter::getReplaceValue1 "/**
virtual OutputImagePixelType itk::IsolatedWatershedImageFilter::GetReplaceValue1() const

Set/Get value to replace Seed1(Seed2) pixels, pixels that are within the basin that contains Seed1(Seed2) this value. The default is 1(0).
*/"

%javamethodmodifiers itk::simple::IsolatedWatershedImageFilter::setReplaceValue2 "/**
virtual void itk::IsolatedWatershedImageFilter::SetReplaceValue2(OutputImagePixelType _arg)

Set/Get value to replace Seed1(Seed2) pixels, pixels that are within the basin that contains Seed1(Seed2) this value. The default is 1(0).
*/"

%javamethodmodifiers itk::simple::IsolatedWatershedImageFilter::getReplaceValue2 "/**
virtual OutputImagePixelType itk::IsolatedWatershedImageFilter::GetReplaceValue2() const

Set/Get value to replace Seed1(Seed2) pixels, pixels that are within the basin that contains Seed1(Seed2) this value. The default is 1(0).
*/"

// Generated for ClassName from /scratch/blowekamp/build/ITK-gerrit/Utilities/Doxygen/xml/classitk_1_1JoinSeriesImageFilter.xml
%typemap(javaimports) itk::simple::JoinSeriesImageFilter "/** Join N-D images into an (N+1)-D image.

This filter is templated over the input image type and the output image type. The pixel type of them must be the same and the input dimension must be less than the output dimension. When the input images are N-dimensinal, they are joined in order and the size of the N+1'th dimension of the output is same as the number of the inputs. The spacing and the origin (where the first input is placed) for the N+1'th dimension is specified in this filter. The output image informations for the first N dimensions are taken from the first input. Note that all the inputs should have the same information.
author Hideaki Hiraki
Contributed in the users listhttp://public.kitware.com/pipermail/insight-users/2004-February/006542.html
*/"
%javamethodmodifiers itk::simple::JoinSeriesImageFilter::execute() "
/**Join N-D images into an (N+1)-D image.

*/"
%javamethodmodifiers itk::simple::JoinSeries "/**
Join N-D images into an (N+1)-D image.

This filter is templated over the input image type and the output image type. The pixel type of them must be the same and the input dimension must be less than the output dimension. When the input images are N-dimensinal, they are joined in order and the size of the N+1'th dimension of the output is same as the number of the inputs. The spacing and the origin (where the first input is placed) for the N+1'th dimension is specified in this filter. The output image informations for the first N dimensions are taken from the first input. Note that all the inputs should have the same information.
author Hideaki Hiraki
Contributed in the users listhttp://public.kitware.com/pipermail/insight-users/2004-February/006542.html
*/"
%javamethodmodifiers itk::simple::JoinSeriesImageFilter::setOrigin "/**
virtual void itk::JoinSeriesImageFilter::SetOrigin(double _arg)

Set/Get origin of the new dimension
*/"

%javamethodmodifiers itk::simple::JoinSeriesImageFilter::getOrigin "/**
virtual double itk::JoinSeriesImageFilter::GetOrigin() const

Set/Get origin of the new dimension
*/"

%javamethodmodifiers itk::simple::JoinSeriesImageFilter::setSpacing "/**
virtual void itk::JoinSeriesImageFilter::SetSpacing(double _arg)

Set/Get spacing of the new dimension
*/"

%javamethodmodifiers itk::simple::JoinSeriesImageFilter::getSpacing "/**
virtual double itk::JoinSeriesImageFilter::GetSpacing() const

Set/Get spacing of the new dimension
*/"

// Generated for ClassName from /scratch/blowekamp/build/ITK-gerrit/Utilities/Doxygen/xml/classitk_1_1KittlerIllingworthThresholdImageFilter.xml
%typemap(javaimports) itk::simple::KittlerIllingworthThresholdImageFilter "/** Threshold an image using the KittlerIllingworth Threshold.

This filter creates a binary thresholded image that separates an image into foreground and background components. The filter computes the threshold using the KittlerIllingworthThresholdCalculatorand applies that theshold to the input image using the BinaryThresholdImageFilter.
author Richard Beare. Department of Medicine, Monash University, Melbourne, Australia.
Gaetan Lehmann. Biologie du Developpement et de la Reproduction, INRA de Jouy-en-Josas, France.
This implementation was taken from the Insight Journal paper:http://hdl.handle.net/10380/3279orhttp://www.insight-journal.org/browse/publication/811
see HistogramThresholdImageFitler

*/"
%javamethodmodifiers itk::simple::KittlerIllingworthThresholdImageFilter::execute() "
/**Threshold an image using the KittlerIllingworth Threshold.

*/"
%javamethodmodifiers itk::simple::KittlerIllingworthThreshold "/**
Threshold an image using the KittlerIllingworth Threshold.

This filter creates a binary thresholded image that separates an image into foreground and background components. The filter computes the threshold using the KittlerIllingworthThresholdCalculatorand applies that theshold to the input image using the BinaryThresholdImageFilter.
author Richard Beare. Department of Medicine, Monash University, Melbourne, Australia.
Gaetan Lehmann. Biologie du Developpement et de la Reproduction, INRA de Jouy-en-Josas, France.
This implementation was taken from the Insight Journal paper:http://hdl.handle.net/10380/3279orhttp://www.insight-journal.org/browse/publication/811
see HistogramThresholdImageFitler

*/"
// Generated for ClassName from /scratch/blowekamp/build/ITK-gerrit/Utilities/Doxygen/xml/classitk_1_1LabelContourImageFilter.xml
%typemap(javaimports) itk::simple::LabelContourImageFilter "/** Labels the pixels on the border of the objects in a labeled image.

 LabelContourImageFiltertakes a labeled image as input, where the pixels in the objects are the pixels with a value different of the BackgroundValue. Only the pixels on the contours of the objects are kept. The pixels not on the border are changed to BackgroundValue. The labels of the object are the same in the input and in the output image.
The connectivity can be changed to minimum or maximum connectivity with SetFullyConnected(). Full connectivity produces thicker contours.
http://hdl.handle.net/1926/1352
author Gaetan Lehmann. Biologie du Developpement et de la Reproduction, INRA de Jouy-en-Josas, France.
see  BinaryContourImageFilter
par Wiki Examples:

li All Examples

li Label the contours of connected components

*/"
%javamethodmodifiers itk::simple::LabelContourImageFilter::execute() "
/**Labels the pixels on the border of the objects in a labeled image.

*/"
%javamethodmodifiers itk::simple::LabelContour "/**
Labels the pixels on the border of the objects in a labeled image.

 LabelContourImageFiltertakes a labeled image as input, where the pixels in the objects are the pixels with a value different of the BackgroundValue. Only the pixels on the contours of the objects are kept. The pixels not on the border are changed to BackgroundValue. The labels of the object are the same in the input and in the output image.
The connectivity can be changed to minimum or maximum connectivity with SetFullyConnected(). Full connectivity produces thicker contours.
http://hdl.handle.net/1926/1352
author Gaetan Lehmann. Biologie du Developpement et de la Reproduction, INRA de Jouy-en-Josas, France.
see  BinaryContourImageFilter
par Wiki Examples:

li All Examples

li Label the contours of connected components

*/"
%javamethodmodifiers itk::simple::LabelContourImageFilter::setFullyConnected "/**
virtual void itk::LabelContourImageFilter::SetFullyConnected(bool _arg)

Set/Get whether the connected components are defined strictly by face connectivity or by face+edge+vertex connectivity. Default is FullyConnectedOff.note For objects that are 1 pixel wide, use FullyConnectedOn.

*/"

%javamethodmodifiers itk::simple::LabelContourImageFilter::getFullyConnected "/**
virtual const bool& itk::LabelContourImageFilter::GetFullyConnected()

Set/Get whether the connected components are defined strictly by face connectivity or by face+edge+vertex connectivity. Default is FullyConnectedOff.note For objects that are 1 pixel wide, use FullyConnectedOn.

*/"

%javamethodmodifiers itk::simple::LabelContourImageFilter::setBackgroundValue "/**
virtual void itk::LabelContourImageFilter::SetBackgroundValue(OutputImagePixelType _arg)

Set/Get the background value used to identify the objects and mark the pixels not on the border of the objects.
*/"

%javamethodmodifiers itk::simple::LabelContourImageFilter::getBackgroundValue "/**
virtual OutputImagePixelType itk::LabelContourImageFilter::GetBackgroundValue() const

Set/Get the background value used to identify the objects and mark the pixels not on the border of the objects.
*/"

// Generated for ClassName from /scratch/blowekamp/build/ITK-gerrit/Utilities/Doxygen/xml/classitk_1_1LabelMapContourOverlayImageFilter.xml
%typemap(javaimports) itk::simple::LabelMapContourOverlayImageFilter "/** Apply a colormap to the contours (outlines) of each object in a label map and superimpose it on top of the feature image.

The feature image is typically the image from which the labeling was produced. Use the SetInput function to set the LabelMap, and the SetFeatureImage function to set the feature image.
Apply a colormap to a label map and put it on top of the input image. The set of colors is a good selection of distinct colors. The opacity of the label map can be defined by the user. A background label produce a gray pixel with the same intensity than the input one.
author Gaetan Lehmann. Biologie du Developpement et de la Reproduction, INRA de Jouy-en-Josas, France.
This implementation was taken from the Insight Journal paper:http://hdl.handle.net/1926/584orhttp://www.insight-journal.org/browse/publication/176
see  LabelMapToBinaryImageFilter, LabelMapToLabelImageFilter, LabelMapOverlayImageFilter
par Wiki Examples:

li All Examples

li Color the boundaries of labeled regions in an image

*/"
%javamethodmodifiers itk::simple::LabelMapContourOverlayImageFilter::execute() "
/**Apply a colormap to the contours (outlines) of each object in a label map and superimpose it on top of the feature image.

*/"
%javamethodmodifiers itk::simple::LabelMapContourOverlay "/**
Apply a colormap to the contours (outlines) of each object in a label map and superimpose it on top of the feature image.

The feature image is typically the image from which the labeling was produced. Use the SetInput function to set the LabelMap, and the SetFeatureImage function to set the feature image.
Apply a colormap to a label map and put it on top of the input image. The set of colors is a good selection of distinct colors. The opacity of the label map can be defined by the user. A background label produce a gray pixel with the same intensity than the input one.
author Gaetan Lehmann. Biologie du Developpement et de la Reproduction, INRA de Jouy-en-Josas, France.
This implementation was taken from the Insight Journal paper:http://hdl.handle.net/1926/584orhttp://www.insight-journal.org/browse/publication/176
see  LabelMapToBinaryImageFilter, LabelMapToLabelImageFilter, LabelMapOverlayImageFilter
par Wiki Examples:

li All Examples

li Color the boundaries of labeled regions in an image

*/"
%javamethodmodifiers itk::simple::LabelMapContourOverlayImageFilter::setOpacity "/**
virtual void itk::LabelMapContourOverlayImageFilter::SetOpacity(double _arg)

Set/Get the opacity of the colored label image. The value must be between 0 and 1
*/"

%javamethodmodifiers itk::simple::LabelMapContourOverlayImageFilter::getOpacity "/**
virtual const double& itk::LabelMapContourOverlayImageFilter::GetOpacity()

Set/Get the opacity of the colored label image. The value must be between 0 and 1
*/"

%javamethodmodifiers itk::simple::LabelMapContourOverlayImageFilter::setDilationRadius "/**
virtual void itk::LabelMapContourOverlayImageFilter::SetDilationRadius(SizeType _arg)

Set/Get the object dilation radius - 0 by default.
*/"

%javamethodmodifiers itk::simple::LabelMapContourOverlayImageFilter::getDilationRadius "/**
virtual const SizeType& itk::LabelMapContourOverlayImageFilter::GetDilationRadius()

Set/Get the object dilation radius - 0 by default.
*/"

%javamethodmodifiers itk::simple::LabelMapContourOverlayImageFilter::setContourThickness "/**
virtual void itk::LabelMapContourOverlayImageFilter::SetContourThickness(SizeType _arg)

Set/Get the contour thickness - 1 by default.
*/"

%javamethodmodifiers itk::simple::LabelMapContourOverlayImageFilter::getContourThickness "/**
virtual const SizeType& itk::LabelMapContourOverlayImageFilter::GetContourThickness()

Set/Get the contour thickness - 1 by default.
*/"

%javamethodmodifiers itk::simple::LabelMapContourOverlayImageFilter::setSliceDimension "/**
virtual void itk::LabelMapContourOverlayImageFilter::SetSliceDimension(int _arg)

Set/Get the slice dimension - defaults to image dimension - 1.
*/"

%javamethodmodifiers itk::simple::LabelMapContourOverlayImageFilter::getSliceDimension "/**
virtual const int& itk::LabelMapContourOverlayImageFilter::GetSliceDimension()

Set/Get the slice dimension - defaults to image dimension - 1.
*/"

%javamethodmodifiers itk::simple::LabelMapContourOverlayImageFilter::setType "/**
virtual void itk::LabelMapContourOverlayImageFilter::SetType(int _arg)

Set/Get the overlay type - CONTOUR is used by default.
*/"

%javamethodmodifiers itk::simple::LabelMapContourOverlayImageFilter::getType "/**
virtual const int& itk::LabelMapContourOverlayImageFilter::GetType()

Set/Get the overlay type - CONTOUR is used by default.
*/"

%javamethodmodifiers itk::simple::LabelMapContourOverlayImageFilter::setPriority "/**
virtual void itk::LabelMapContourOverlayImageFilter::SetPriority(int _arg)

Set/Get the object priority - HIGH_LABEL_ON_TOP by default.
*/"

%javamethodmodifiers itk::simple::LabelMapContourOverlayImageFilter::getPriority "/**
virtual const int& itk::LabelMapContourOverlayImageFilter::GetPriority()

Set/Get the object priority - HIGH_LABEL_ON_TOP by default.
*/"

// Generated for ClassName from /scratch/blowekamp/build/ITK-gerrit/Utilities/Doxygen/xml/classitk_1_1LabelMapMaskImageFilter.xml
%typemap(javaimports) itk::simple::LabelMapMaskImageFilter "/** Mask and image with a LabelMap.

 LabelMapMaskImageFiltermask the content of an input image according to the content of the input LabelMap. The masked pixel of the input image are set to the BackgroundValue. LabelMapMaskImageFiltercan keep the input image for one label only, with Negated = false (the default) or it can mask the input image for a single label, when Negated equals true. In Both cases, the label is set with SetLabel().
author Gaetan Lehmann. Biologie du Developpement et de la Reproduction, INRA de Jouy-en-Josas, France.
This implementation was taken from the Insight Journal paper:http://hdl.handle.net/1926/584orhttp://www.insight-journal.org/browse/publication/176
see  LabelMapToBinaryImageFilter, LabelMapToLabelImageFilter

*/"
%javamethodmodifiers itk::simple::LabelMapMaskImageFilter::execute() "
/**Mask and image with a LabelMap.

*/"
%javamethodmodifiers itk::simple::LabelMapMask "/**
Mask and image with a LabelMap.

 LabelMapMaskImageFiltermask the content of an input image according to the content of the input LabelMap. The masked pixel of the input image are set to the BackgroundValue. LabelMapMaskImageFiltercan keep the input image for one label only, with Negated = false (the default) or it can mask the input image for a single label, when Negated equals true. In Both cases, the label is set with SetLabel().
author Gaetan Lehmann. Biologie du Developpement et de la Reproduction, INRA de Jouy-en-Josas, France.
This implementation was taken from the Insight Journal paper:http://hdl.handle.net/1926/584orhttp://www.insight-journal.org/browse/publication/176
see  LabelMapToBinaryImageFilter, LabelMapToLabelImageFilter

*/"
%javamethodmodifiers itk::simple::LabelMapMaskImageFilter::setLabel "/**
virtual void itk::LabelMapMaskImageFilter::SetLabel(InputImagePixelType _arg)

The label to mask or to not mask, depending on the value of the Negated ivar.
*/"

%javamethodmodifiers itk::simple::LabelMapMaskImageFilter::getLabel "/**
virtual InputImagePixelType itk::LabelMapMaskImageFilter::GetLabel() const

The label to mask or to not mask, depending on the value of the Negated ivar.
*/"

%javamethodmodifiers itk::simple::LabelMapMaskImageFilter::setBackgroundValue "/**
virtual void itk::LabelMapMaskImageFilter::SetBackgroundValue(OutputImagePixelType _arg)

Set/Get the value used as background in the output image. Defaults to NumericTraits<PixelType>::Zero.
*/"

%javamethodmodifiers itk::simple::LabelMapMaskImageFilter::getBackgroundValue "/**
virtual OutputImagePixelType itk::LabelMapMaskImageFilter::GetBackgroundValue() const

Set/Get the value used as background in the output image. Defaults to NumericTraits<PixelType>::Zero.
*/"

%javamethodmodifiers itk::simple::LabelMapMaskImageFilter::setNegated "/**
virtual void itk::LabelMapMaskImageFilter::SetNegated(bool _arg)

Set/Get whether the Label should be masked or not.
*/"

%javamethodmodifiers itk::simple::LabelMapMaskImageFilter::getNegated "/**
virtual const bool& itk::LabelMapMaskImageFilter::GetNegated()

Set/Get whether the Label should be masked or not.
*/"

// Generated for ClassName from /scratch/blowekamp/build/ITK-gerrit/Utilities/Doxygen/xml/classitk_1_1LabelMapOverlayImageFilter.xml
%typemap(javaimports) itk::simple::LabelMapOverlayImageFilter "/** Apply a colormap to a label map and superimpose it on an image.

Apply a colormap to a label map and put it on top of the feature image. The feature image is typically the image from which the labeling was produced. Use the SetInput function to set the LabelMap, and the SetFeatureImage function to set the feature image.
The set of colors is a good selection of distinct colors. The opacity of the label map can be defined by the user. A background label produce a gray pixel with the same intensity than the input one.
author Gaetan Lehmann. Biologie du Developpement et de la Reproduction, INRA de Jouy-en-Josas, France.
This implementation was taken from the Insight Journal paper:http://hdl.handle.net/1926/584orhttp://www.insight-journal.org/browse/publication/176
see  LabelMapToBinaryImageFilter, LabelMapToLabelImageFilter

*/"
%javamethodmodifiers itk::simple::LabelMapOverlayImageFilter::execute() "
/**Apply a colormap to a label map and superimpose it on an image.

*/"
%javamethodmodifiers itk::simple::LabelMapOverlay "/**
Apply a colormap to a label map and superimpose it on an image.

Apply a colormap to a label map and put it on top of the feature image. The feature image is typically the image from which the labeling was produced. Use the SetInput function to set the LabelMap, and the SetFeatureImage function to set the feature image.
The set of colors is a good selection of distinct colors. The opacity of the label map can be defined by the user. A background label produce a gray pixel with the same intensity than the input one.
author Gaetan Lehmann. Biologie du Developpement et de la Reproduction, INRA de Jouy-en-Josas, France.
This implementation was taken from the Insight Journal paper:http://hdl.handle.net/1926/584orhttp://www.insight-journal.org/browse/publication/176
see  LabelMapToBinaryImageFilter, LabelMapToLabelImageFilter

*/"
%javamethodmodifiers itk::simple::LabelMapOverlayImageFilter::setOpacity "/**
virtual void itk::LabelMapOverlayImageFilter::SetOpacity(double _arg)

Set/Get the opacity of the colored label image. The value must be between 0 and 1
*/"

%javamethodmodifiers itk::simple::LabelMapOverlayImageFilter::getOpacity "/**
virtual const double& itk::LabelMapOverlayImageFilter::GetOpacity()

Set/Get the opacity of the colored label image. The value must be between 0 and 1
*/"

// Generated for ClassName from /scratch/blowekamp/build/ITK-gerrit/Utilities/Doxygen/xml/classitk_1_1LabelMapToBinaryImageFilter.xml
%typemap(javaimports) itk::simple::LabelMapToBinaryImageFilter "/** Convert a LabelMapto a binary image.

 LabelMapToBinaryImageFilterto a binary image. All the objects in the image are used as foreground. The background values of the original binary image can be restored by passing this image to the filter with the SetBackgroundImage()method.
This implementation was taken from the Insight Journal paper:http://hdl.handle.net/1926/584orhttp://www.insight-journal.org/browse/publication/176
author Gaetan Lehmann. Biologie du Developpement et de la Reproduction, INRA de Jouy-en-Josas, France.
see  LabelMapToLabelImageFilter, LabelMapMaskImageFilter

*/"
%javamethodmodifiers itk::simple::LabelMapToBinaryImageFilter::execute() "
/**Convert a LabelMapto a binary image.

*/"
%javamethodmodifiers itk::simple::LabelMapToBinary "/**
Convert a LabelMapto a binary image.

 LabelMapToBinaryImageFilterto a binary image. All the objects in the image are used as foreground. The background values of the original binary image can be restored by passing this image to the filter with the SetBackgroundImage()method.
This implementation was taken from the Insight Journal paper:http://hdl.handle.net/1926/584orhttp://www.insight-journal.org/browse/publication/176
author Gaetan Lehmann. Biologie du Developpement et de la Reproduction, INRA de Jouy-en-Josas, France.
see  LabelMapToLabelImageFilter, LabelMapMaskImageFilter

*/"
%javamethodmodifiers itk::simple::LabelMapToBinaryImageFilter::setBackgroundValue "/**
virtual void itk::LabelMapToBinaryImageFilter::SetBackgroundValue(OutputImagePixelType _arg)

Set/Get the value used as background in the output image. Defaults to NumericTraits<PixelType>::NonpositiveMin().
*/"

%javamethodmodifiers itk::simple::LabelMapToBinaryImageFilter::getBackgroundValue "/**
virtual OutputImagePixelType itk::LabelMapToBinaryImageFilter::GetBackgroundValue() const

Set/Get the value used as background in the output image. Defaults to NumericTraits<PixelType>::NonpositiveMin().
*/"

%javamethodmodifiers itk::simple::LabelMapToBinaryImageFilter::setForegroundValue "/**
virtual void itk::LabelMapToBinaryImageFilter::SetForegroundValue(OutputImagePixelType _arg)

Set/Get the value used as foreground in the output image. Defaults to NumericTraits<PixelType>::max().
*/"

%javamethodmodifiers itk::simple::LabelMapToBinaryImageFilter::getForegroundValue "/**
virtual OutputImagePixelType itk::LabelMapToBinaryImageFilter::GetForegroundValue() const

Set/Get the value used as foreground in the output image. Defaults to NumericTraits<PixelType>::max().
*/"

// Generated for ClassName from /scratch/blowekamp/build/ITK-gerrit/Utilities/Doxygen/xml/classitk_1_1LabelMapToLabelImageFilter.xml
%typemap(javaimports) itk::simple::LabelMapToLabelImageFilter "/** Converts a LabelMapto a labeled image.

 LabelMapToBinaryImageFilterto a label image.
author Gaetan Lehmann. Biologie du Developpement et de la Reproduction, INRA de Jouy-en-Josas, France.
This implementation was taken from the Insight Journal paper:http://hdl.handle.net/1926/584orhttp://www.insight-journal.org/browse/publication/176
see  LabelMapToBinaryImageFilter, LabelMapMaskImageFilter
par Wiki Examples:

li All Examples

li Convert a LabelMap to a normal image with different values representing each region

*/"
%javamethodmodifiers itk::simple::LabelMapToLabelImageFilter::execute() "
/**Converts a LabelMapto a labeled image.

*/"
%javamethodmodifiers itk::simple::LabelMapToLabel "/**
Converts a LabelMapto a labeled image.

 LabelMapToBinaryImageFilterto a label image.
author Gaetan Lehmann. Biologie du Developpement et de la Reproduction, INRA de Jouy-en-Josas, France.
This implementation was taken from the Insight Journal paper:http://hdl.handle.net/1926/584orhttp://www.insight-journal.org/browse/publication/176
see  LabelMapToBinaryImageFilter, LabelMapMaskImageFilter
par Wiki Examples:

li All Examples

li Convert a LabelMap to a normal image with different values representing each region

*/"
// Generated for ClassName from /scratch/blowekamp/build/ITK-gerrit/Utilities/Doxygen/xml/classitk_1_1LabelMapToRGBImageFilter.xml
%typemap(javaimports) itk::simple::LabelMapToRGBImageFilter "/** Convert a LabelMapto a colored image.

author Gaetan Lehmann. Biologie du Developpement et de la Reproduction, INRA de Jouy-en-Josas, France.
This implementation was taken from the Insight Journal paper:http://hdl.handle.net/1926/584orhttp://www.insight-journal.org/browse/publication/176
see  LabelMapToBinaryImageFilter, LabelMapMaskImageFilter

*/"
%javamethodmodifiers itk::simple::LabelMapToRGBImageFilter::execute() "
/**Convert a LabelMapto a colored image.

*/"
%javamethodmodifiers itk::simple::LabelMapToRGB "/**
Convert a LabelMapto a colored image.

author Gaetan Lehmann. Biologie du Developpement et de la Reproduction, INRA de Jouy-en-Josas, France.
This implementation was taken from the Insight Journal paper:http://hdl.handle.net/1926/584orhttp://www.insight-journal.org/browse/publication/176
see  LabelMapToBinaryImageFilter, LabelMapMaskImageFilter

*/"
// Generated for ClassName from /scratch/blowekamp/build/ITK-gerrit/Utilities/Doxygen/xml/classitk_1_1LabelOverlayImageFilter.xml
%typemap(javaimports) itk::simple::LabelOverlayImageFilter "/** Apply a colormap to a label image and put it on top of the input image.

Apply a colormap to a label image and put it on top of the input image. The set of colors is a good selection of distinct colors. The opacity of the label image can be defined by the user. The user can also choose if the want to use a background and which label value is the background. A background label produce a gray pixel with the same intensity than the input one.
author Gaetan Lehmann. Biologie du Developpement et de la Reproduction, INRA de Jouy-en-Josas, France.
This class was contributed to the Insight Journalhttp://hdl.handle.net/1926/172
see ScalarToRGBPixelFunctor LabelToRGBImageFilter
par Wiki Examples:

li All Examples

li Overlay a LabelMap on an image

*/"
%javamethodmodifiers itk::simple::LabelOverlayImageFilter::execute() "
/**Apply a colormap to a label image and put it on top of the input image.

*/"
%javamethodmodifiers itk::simple::LabelOverlay "/**
Apply a colormap to a label image and put it on top of the input image.

Apply a colormap to a label image and put it on top of the input image. The set of colors is a good selection of distinct colors. The opacity of the label image can be defined by the user. The user can also choose if the want to use a background and which label value is the background. A background label produce a gray pixel with the same intensity than the input one.
author Gaetan Lehmann. Biologie du Developpement et de la Reproduction, INRA de Jouy-en-Josas, France.
This class was contributed to the Insight Journalhttp://hdl.handle.net/1926/172
see ScalarToRGBPixelFunctor LabelToRGBImageFilter
par Wiki Examples:

li All Examples

li Overlay a LabelMap on an image

*/"
%javamethodmodifiers itk::simple::LabelOverlayImageFilter::setOpacity "/**
virtual void itk::LabelOverlayImageFilter::SetOpacity(double _arg)

Set/Get the opacity of the colored label image. The value must be between 0 and 1
*/"

%javamethodmodifiers itk::simple::LabelOverlayImageFilter::getOpacity "/**
virtual const double& itk::LabelOverlayImageFilter::GetOpacity()

Set/Get the opacity of the colored label image. The value must be between 0 and 1
*/"

%javamethodmodifiers itk::simple::LabelOverlayImageFilter::setBackgroundValue "/**
virtual void itk::LabelOverlayImageFilter::SetBackgroundValue(LabelPixelType _arg)

Set/Get the background value
*/"

%javamethodmodifiers itk::simple::LabelOverlayImageFilter::getBackgroundValue "/**
virtual const LabelPixelType& itk::LabelOverlayImageFilter::GetBackgroundValue()

Set/Get the background value
*/"

// Generated for ClassName from /scratch/blowekamp/build/ITK-gerrit/Utilities/Doxygen/xml/classitk_1_1LabelToRGBImageFilter.xml
%typemap(javaimports) itk::simple::LabelToRGBImageFilter "/** Apply a colormap to a label image.

Apply a colormap to a label image. The set of colors is a good selection of distinct colors. The user can choose to use a background value. In that case, a gray pixel with the same intensity than the background label is produced.
This code was contributed in the Insight Journal paper: The watershed transform in ITK - discussion and new developments by Beare R., Lehmann G.http://hdl.handle.net/1926/202http://www.insight-journal.org/browse/publication/92
author Gaetan Lehmann. Biologie du Developpement et de la Reproduction, INRA de Jouy-en-Josas, France.
Richard Beare. Department of Medicine, Monash University, Melbourne, Australia.
see ScalarToRGBPixelFunctor LabelOverlayImageFilter

*/"
%javamethodmodifiers itk::simple::LabelToRGBImageFilter::execute() "
/**Apply a colormap to a label image.

*/"
%javamethodmodifiers itk::simple::LabelToRGB "/**
Apply a colormap to a label image.

Apply a colormap to a label image. The set of colors is a good selection of distinct colors. The user can choose to use a background value. In that case, a gray pixel with the same intensity than the background label is produced.
This code was contributed in the Insight Journal paper: The watershed transform in ITK - discussion and new developments by Beare R., Lehmann G.http://hdl.handle.net/1926/202http://www.insight-journal.org/browse/publication/92
author Gaetan Lehmann. Biologie du Developpement et de la Reproduction, INRA de Jouy-en-Josas, France.
Richard Beare. Department of Medicine, Monash University, Melbourne, Australia.
see ScalarToRGBPixelFunctor LabelOverlayImageFilter

*/"
%javamethodmodifiers itk::simple::LabelToRGBImageFilter::setBackgroundValue "/**
virtual void itk::LabelToRGBImageFilter::SetBackgroundValue(LabelPixelType _arg)

Set/Get the background value
*/"

%javamethodmodifiers itk::simple::LabelToRGBImageFilter::getBackgroundValue "/**
virtual const LabelPixelType& itk::LabelToRGBImageFilter::GetBackgroundValue()

Set/Get the background value
*/"

// Generated for ClassName from /scratch/blowekamp/build/ITK-gerrit/Utilities/Doxygen/xml/classitk_1_1LandweberDeconvolutionImageFilter.xml
%typemap(javaimports) itk::simple::LandweberDeconvolutionImageFilter "/** Deconvolve an image using the Landweber deconvolution algorithm.

This filter implements the Landweber deconvolution algorthm as defined in Bertero M and Boccacci P, Introduction to Inverse
 Problems in Imaging, 1998. The algorithm assumes that the input image has been formed by a linear shift-invariant system with a known kernel.
The Landweber algorithm converges to a solution that minimizes the sum of squared errorsf$||f otimes h - g||f$ wheref$ff$ is the estimate of the unblurred image,f$otimesf$ is the convolution operator,f$hf$ is the blurring kernel, andf$gf$ is the blurred input image. As such, it is best suited for images that have zero-mean Gaussian white noise.
This is the base implementation of the Landweber algorithm. It may produce results with negative values. For a version of this algorithm that enforces a positivity constraint on each intermediate solution, see ProjectedLandweberDeconvolutionImageFilter.
This code was adapted from the Insight Journal contribution:
Deconvolution: infrastructure and reference algorithms by Gaetan Lehmannhttp://hdl.handle.net/10380/3207
author Gaetan Lehmann, Biologie du Developpement et de la Reproduction, INRA de Jouy-en-Josas, France
Cory Quammen, The University of North Carolina at Chapel Hill
see  IterativeDeconvolutionImageFilter
see 
see  RichardsonLucyDeconvolutionImageFilter
see 
see  ProjectedLandweberDeconvolutionImageFilter

*/"
%javamethodmodifiers itk::simple::LandweberDeconvolutionImageFilter::execute() "
/**Deconvolve an image using the Landweber deconvolution algorithm.

*/"
%javamethodmodifiers itk::simple::LandweberDeconvolution "/**
Deconvolve an image using the Landweber deconvolution algorithm.

This filter implements the Landweber deconvolution algorthm as defined in Bertero M and Boccacci P, Introduction to Inverse
 Problems in Imaging, 1998. The algorithm assumes that the input image has been formed by a linear shift-invariant system with a known kernel.
The Landweber algorithm converges to a solution that minimizes the sum of squared errorsf$||f otimes h - g||f$ wheref$ff$ is the estimate of the unblurred image,f$otimesf$ is the convolution operator,f$hf$ is the blurring kernel, andf$gf$ is the blurred input image. As such, it is best suited for images that have zero-mean Gaussian white noise.
This is the base implementation of the Landweber algorithm. It may produce results with negative values. For a version of this algorithm that enforces a positivity constraint on each intermediate solution, see ProjectedLandweberDeconvolutionImageFilter.
This code was adapted from the Insight Journal contribution:
Deconvolution: infrastructure and reference algorithms by Gaetan Lehmannhttp://hdl.handle.net/10380/3207
author Gaetan Lehmann, Biologie du Developpement et de la Reproduction, INRA de Jouy-en-Josas, France
Cory Quammen, The University of North Carolina at Chapel Hill
see  IterativeDeconvolutionImageFilter
see 
see  RichardsonLucyDeconvolutionImageFilter
see 
see  ProjectedLandweberDeconvolutionImageFilter

*/"
%javamethodmodifiers itk::simple::LandweberDeconvolutionImageFilter::setAlpha "/**
virtual void itk::LandweberDeconvolutionImageFilter::SetAlpha(double _arg)

Set/get relaxation factor.
*/"

%javamethodmodifiers itk::simple::LandweberDeconvolutionImageFilter::getAlpha "/**
virtual double itk::LandweberDeconvolutionImageFilter::GetAlpha()

Set/get relaxation factor.
*/"

// Generated for ClassName from /scratch/blowekamp/build/ITK-gerrit/Utilities/Doxygen/xml/classitk_1_1LaplacianImageFilter.xml
%typemap(javaimports) itk::simple::LaplacianImageFilter "/** 
This filter computes the Laplacian of a scalar-valued image. The Laplacian is an isotropic measure of the 2nd spatial derivative of an image. The Laplacian of an image highlights regions of rapid intensity change and is therefore often used for edge detection. Often, the Laplacian is applied to an image that has first been smoothed with a Gaussian filter in order to reduce its sensitivity to noise.
par The Laplacian at each pixel location is computed by convolution with the itk::LaplacianOperator.
par Inputs and Outputs
The input to this filter is a scalar-valued itk::Imageof arbitrary dimension. The output is a scalar-valued itk::Image.
warning The pixel type of the input and output images must be of real type (float or double). ConceptChecking is used here to enforce the input pixel type. You will get a compilation error if the pixel type of the input and output images is not float or double.
see  Image
see 
see  Neighborhood
see 
see  NeighborhoodOperator
see 
see  NeighborhoodIterator
see 
see  LaplacianOperator
par Wiki Examples:

li All Examples

li Compute the Laplacian of an image

*/"
%javamethodmodifiers itk::simple::LaplacianImageFilter::execute() "
/**
*/"
%javamethodmodifiers itk::simple::Laplacian "/**

This filter computes the Laplacian of a scalar-valued image. The Laplacian is an isotropic measure of the 2nd spatial derivative of an image. The Laplacian of an image highlights regions of rapid intensity change and is therefore often used for edge detection. Often, the Laplacian is applied to an image that has first been smoothed with a Gaussian filter in order to reduce its sensitivity to noise.
par The Laplacian at each pixel location is computed by convolution with the itk::LaplacianOperator.
par Inputs and Outputs
The input to this filter is a scalar-valued itk::Imageof arbitrary dimension. The output is a scalar-valued itk::Image.
warning The pixel type of the input and output images must be of real type (float or double). ConceptChecking is used here to enforce the input pixel type. You will get a compilation error if the pixel type of the input and output images is not float or double.
see  Image
see 
see  Neighborhood
see 
see  NeighborhoodOperator
see 
see  NeighborhoodIterator
see 
see  LaplacianOperator
par Wiki Examples:

li All Examples

li Compute the Laplacian of an image

*/"
%javamethodmodifiers itk::simple::LaplacianImageFilter::setUseImageSpacing "/**
virtual void itk::LaplacianImageFilter::SetUseImageSpacing(bool _arg)

Set/Get whether or not the filter will use the spacing of the input image in its calculations
*/"

%javamethodmodifiers itk::simple::LaplacianImageFilter::getUseImageSpacing "/**
virtual bool itk::LaplacianImageFilter::GetUseImageSpacing() const

Set/Get whether or not the filter will use the spacing of the input image in its calculations
*/"

// Generated for ClassName from /scratch/blowekamp/build/ITK-gerrit/Utilities/Doxygen/xml/classitk_1_1LaplacianRecursiveGaussianImageFilter.xml
%typemap(javaimports) itk::simple::LaplacianRecursiveGaussianImageFilter "/** Computes the Laplacian of Gaussian (LoG) of an image.

Computes the Laplacian of Gaussian (LoG) of an image by convolution with the second derivative of a Gaussian. This filter is implemented using the recursive gaussian filters.
par Wiki Examples:

li All Examples

li Compute the Laplacian of Gaussian (LoG) of an image

*/"
%javamethodmodifiers itk::simple::LaplacianRecursiveGaussianImageFilter::execute() "
/**Computes the Laplacian of Gaussian (LoG) of an image.

*/"
%javamethodmodifiers itk::simple::LaplacianRecursiveGaussian "/**
Computes the Laplacian of Gaussian (LoG) of an image.

Computes the Laplacian of Gaussian (LoG) of an image by convolution with the second derivative of a Gaussian. This filter is implemented using the recursive gaussian filters.
par Wiki Examples:

li All Examples

li Compute the Laplacian of Gaussian (LoG) of an image

*/"
%javamethodmodifiers itk::simple::LaplacianRecursiveGaussianImageFilter::setSigma "/**
void itk::LaplacianRecursiveGaussianImageFilter::SetSigma(RealType sigma)

Set Sigma value. Sigma is measured in the units of image spacing.
*/"

%javamethodmodifiers itk::simple::LaplacianRecursiveGaussianImageFilter::setNormalizeAcrossScale "/**
void itk::LaplacianRecursiveGaussianImageFilter::SetNormalizeAcrossScale(bool normalizeInScaleSpace)

Define which normalization factor will be used for the Gaussiansee  RecursiveGaussianImageFilter::SetNormalizeAcrossScale

*/"

%javamethodmodifiers itk::simple::LaplacianRecursiveGaussianImageFilter::getNormalizeAcrossScale "/**
virtual bool itk::LaplacianRecursiveGaussianImageFilter::GetNormalizeAcrossScale() const

Define which normalization factor will be used for the Gaussiansee  RecursiveGaussianImageFilter::SetNormalizeAcrossScale

*/"

// Generated for ClassName from /scratch/blowekamp/build/ITK-gerrit/Utilities/Doxygen/xml/classitk_1_1LaplacianSegmentationLevelSetImageFilter.xml
%typemap(javaimports) itk::simple::LaplacianSegmentationLevelSetImageFilter "/** Segments structures in images based on a second derivative image features.

par IMPORTANT
The SegmentationLevelSetImageFilterclass and the LaplacianSegmentationLevelSetFunctionclass contain additional information necessary to the full understanding of how to use this filter.
par OVERVIEW
This class is a level set method segmentation filter. It constructs a speed function which is zero at image edges as detected by a Laplacian filter. The evolving level set front will therefore tend to lock onto zero crossings in the image. The level set front moves fastest near edges.
par The Laplacian segmentation filter is intended primarily as a tool for refining existing segmentations. The initial isosurface (as given in the seed input image) should ideally be very close to the segmentation boundary of interest. The idea is that a rough segmentation can be refined by allowing the isosurface to deform slightly to achieve a better fit to the edge features of an image. One example of such an application is to refine the output of a hand segmented image.
par Because values in the Laplacian feature image will tend to be low except near edge features, this filter is not effective for segmenting large image regions from small seed surfaces.
par INPUTS
This filter requires two inputs. The first input is a seed image. This seed image must contain an isosurface that you want to use as the seed for your segmentation. It can be a binary, graylevel, or floating point image. The only requirement is that it contain a closed isosurface that you will identify as the seed by setting the IsosurfaceValue parameter of the filter. For a binary image you will want to set your isosurface value halfway between your on and off values (i.e. for 0's and 1's, use an isosurface value of 0.5).
par The second input is the feature image. This is the image from which the speed function will be calculated. For most applications, this is the image that you want to segment. The desired isosurface in your seed image should lie within the region of your feature image that you are trying to segment.
Note that this filter does no preprocessing of the feature image before thresholding. Because second derivative calculations are highly sensitive to noise, isotropic or anisotropic smoothing of the feature image can dramatically improve the results.
par See SegmentationLevelSetImageFilterfor more information on Inputs.
par OUTPUTS
The filter outputs a single, scalar, real-valued image. Positive *values in the output image are inside the segmentated region and negative *values in the image are outside of the inside region. The zero crossings of *the image correspond to the position of the level set front.
par See SparseFieldLevelSetImageFilterand SegmentationLevelSetImageFilterfor more information.
par PARAMETERS
This filter has no parameters other than those described in SegmentationLevelSetImageFilter.
see  SegmentationLevelSetImageFilter
see 
see  LaplacianSegmentationLevelSetFunction,
see 
see  SparseFieldLevelSetImageFilter

*/"
%javamethodmodifiers itk::simple::LaplacianSegmentationLevelSetImageFilter::execute() "
/**Segments structures in images based on a second derivative image features.

*/"
%javamethodmodifiers itk::simple::LaplacianSegmentationLevelSet "/**
Segments structures in images based on a second derivative image features.

par IMPORTANT
The SegmentationLevelSetImageFilterclass and the LaplacianSegmentationLevelSetFunctionclass contain additional information necessary to the full understanding of how to use this filter.
par OVERVIEW
This class is a level set method segmentation filter. It constructs a speed function which is zero at image edges as detected by a Laplacian filter. The evolving level set front will therefore tend to lock onto zero crossings in the image. The level set front moves fastest near edges.
par The Laplacian segmentation filter is intended primarily as a tool for refining existing segmentations. The initial isosurface (as given in the seed input image) should ideally be very close to the segmentation boundary of interest. The idea is that a rough segmentation can be refined by allowing the isosurface to deform slightly to achieve a better fit to the edge features of an image. One example of such an application is to refine the output of a hand segmented image.
par Because values in the Laplacian feature image will tend to be low except near edge features, this filter is not effective for segmenting large image regions from small seed surfaces.
par INPUTS
This filter requires two inputs. The first input is a seed image. This seed image must contain an isosurface that you want to use as the seed for your segmentation. It can be a binary, graylevel, or floating point image. The only requirement is that it contain a closed isosurface that you will identify as the seed by setting the IsosurfaceValue parameter of the filter. For a binary image you will want to set your isosurface value halfway between your on and off values (i.e. for 0's and 1's, use an isosurface value of 0.5).
par The second input is the feature image. This is the image from which the speed function will be calculated. For most applications, this is the image that you want to segment. The desired isosurface in your seed image should lie within the region of your feature image that you are trying to segment.
Note that this filter does no preprocessing of the feature image before thresholding. Because second derivative calculations are highly sensitive to noise, isotropic or anisotropic smoothing of the feature image can dramatically improve the results.
par See SegmentationLevelSetImageFilterfor more information on Inputs.
par OUTPUTS
The filter outputs a single, scalar, real-valued image. Positive *values in the output image are inside the segmentated region and negative *values in the image are outside of the inside region. The zero crossings of *the image correspond to the position of the level set front.
par See SparseFieldLevelSetImageFilterand SegmentationLevelSetImageFilterfor more information.
par PARAMETERS
This filter has no parameters other than those described in SegmentationLevelSetImageFilter.
see  SegmentationLevelSetImageFilter
see 
see  LaplacianSegmentationLevelSetFunction,
see 
see  SparseFieldLevelSetImageFilter

*/"
// Generated for ClassName from /scratch/blowekamp/build/ITK-gerrit/Utilities/Doxygen/xml/classitk_1_1LaplacianSharpeningImageFilter.xml
%typemap(javaimports) itk::simple::LaplacianSharpeningImageFilter "/** This filter sharpens an image using a Laplacian. LaplacianSharpening highlights regions of rapid intensity change and therefore highlights or enhances the edges. The result is an image that appears more in focus.

par The LaplacianSharpening at each pixel location is computed by
convolution with the itk::LaplacianOperator.
par Inputs and Outputs
The input to this filter is a scalar-valued itk::Imageof arbitrary dimension. The output is a scalar-valued itk::Image.
see  Image
see 
see  Neighborhood
see 
see  NeighborhoodOperator
see 
see  NeighborhoodIterator
see 
see  LaplacianOperator
par Wiki Examples:

li All Examples

li Sharpen an image

*/"
%javamethodmodifiers itk::simple::LaplacianSharpeningImageFilter::execute() "
/**This filter sharpens an image using a Laplacian. LaplacianSharpening highlights regions of rapid intensity change and therefore highlights or enhances the edges. The result is an image that appears more in focus.

*/"
%javamethodmodifiers itk::simple::LaplacianSharpening "/**
This filter sharpens an image using a Laplacian. LaplacianSharpening highlights regions of rapid intensity change and therefore highlights or enhances the edges. The result is an image that appears more in focus.

par The LaplacianSharpening at each pixel location is computed by
convolution with the itk::LaplacianOperator.
par Inputs and Outputs
The input to this filter is a scalar-valued itk::Imageof arbitrary dimension. The output is a scalar-valued itk::Image.
see  Image
see 
see  Neighborhood
see 
see  NeighborhoodOperator
see 
see  NeighborhoodIterator
see 
see  LaplacianOperator
par Wiki Examples:

li All Examples

li Sharpen an image

*/"
%javamethodmodifiers itk::simple::LaplacianSharpeningImageFilter::setUseImageSpacing "/**
virtual void itk::LaplacianSharpeningImageFilter::SetUseImageSpacing(bool _arg)

Set/Get whether or not the filter will use the spacing of the input image in its calculations
*/"

%javamethodmodifiers itk::simple::LaplacianSharpeningImageFilter::getUseImageSpacing "/**
virtual bool itk::LaplacianSharpeningImageFilter::GetUseImageSpacing() const

Set/Get whether or not the filter will use the spacing of the input image in its calculations
*/"

// Generated for ClassName from /scratch/blowekamp/build/ITK-gerrit/Utilities/Doxygen/xml/classitk_1_1LiThresholdImageFilter.xml
%typemap(javaimports) itk::simple::LiThresholdImageFilter "/** Threshold an image using the Li Threshold.

This filter creates a binary thresholded image that separates an image into foreground and background components. The filter computes the threshold using the LiThresholdCalculatorand applies that theshold to the input image using the BinaryThresholdImageFilter.
author Richard Beare. Department of Medicine, Monash University, Melbourne, Australia.
Gaetan Lehmann. Biologie du Developpement et de la Reproduction, INRA de Jouy-en-Josas, France.
This implementation was taken from the Insight Journal paper:http://hdl.handle.net/10380/3279orhttp://www.insight-journal.org/browse/publication/811
see HistogramThresholdImageFitler

*/"
%javamethodmodifiers itk::simple::LiThresholdImageFilter::execute() "
/**Threshold an image using the Li Threshold.

*/"
%javamethodmodifiers itk::simple::LiThreshold "/**
Threshold an image using the Li Threshold.

This filter creates a binary thresholded image that separates an image into foreground and background components. The filter computes the threshold using the LiThresholdCalculatorand applies that theshold to the input image using the BinaryThresholdImageFilter.
author Richard Beare. Department of Medicine, Monash University, Melbourne, Australia.
Gaetan Lehmann. Biologie du Developpement et de la Reproduction, INRA de Jouy-en-Josas, France.
This implementation was taken from the Insight Journal paper:http://hdl.handle.net/10380/3279orhttp://www.insight-journal.org/browse/publication/811
see HistogramThresholdImageFitler

*/"
// Generated for ClassName from /scratch/blowekamp/build/ITK-gerrit/Utilities/Doxygen/xml/classitk_1_1LogImageFilter.xml
%typemap(javaimports) itk::simple::LogImageFilter "/** Computes the log() of each pixel.

*/"
%javamethodmodifiers itk::simple::LogImageFilter::execute() "
/**Computes the log() of each pixel.

*/"
%javamethodmodifiers itk::simple::Log "/**
Computes the log() of each pixel.

*/"
// Generated for ClassName from /scratch/blowekamp/build/ITK-gerrit/Utilities/Doxygen/xml/classitk_1_1Log10ImageFilter.xml
%typemap(javaimports) itk::simple::Log10ImageFilter "/** Computes the log10 of each pixel.

The computation is performed using vcl_log10(x).
*/"
%javamethodmodifiers itk::simple::Log10ImageFilter::execute() "
/**Computes the log10 of each pixel.

*/"
%javamethodmodifiers itk::simple::Log10 "/**
Computes the log10 of each pixel.

The computation is performed using vcl_log10(x).
*/"
// Generated for ClassName from /scratch/blowekamp/build/ITK-gerrit/Utilities/Doxygen/xml/classitk_1_1MagnitudeAndPhaseToComplexImageFilter.xml
%typemap(javaimports) itk::simple::MagnitudeAndPhaseToComplexImageFilter "/** Implements pixel-wise conversion of magnitude and phase data into complex voxels.

This filter is parametrized over the types of the two input images and the type of the output image.
The filter expect all images to have the same dimension (e.g. all 2D, or all 3D, or all ND)
*/"
%javamethodmodifiers itk::simple::MagnitudeAndPhaseToComplexImageFilter::execute() "
/**Implements pixel-wise conversion of magnitude and phase data into complex voxels.

*/"
%javamethodmodifiers itk::simple::MagnitudeAndPhaseToComplex "/**
Implements pixel-wise conversion of magnitude and phase data into complex voxels.

This filter is parametrized over the types of the two input images and the type of the output image.
The filter expect all images to have the same dimension (e.g. all 2D, or all 3D, or all ND)
*/"
// Generated for ClassName from /scratch/blowekamp/build/ITK-gerrit/Utilities/Doxygen/xml/classitk_1_1MaskImageFilter.xml
%typemap(javaimports) itk::simple::MaskImageFilter "/** Mask an image with a mask. image with the mask.

This class is templated over the types of the input image type, the mask image type and the type of the output image. Numeric conversions (castings) are done by the C++ defaults.
The pixel type of the input 2 image must have a valid definition of the operator != with zero. This condition is required because internally this filter will perform the operation
ifpixel_from_mask_image!=0pixel_output_image=pixel_input_imageelsepixel_output_image=outside_value
The pixel from the input 1 is cast to the pixel type of the output image.
Note that the input and the mask images must be of the same size.
warning Any pixel value other than 0 will not be masked out.
see  MaskNegatedImageFilter
par Wiki Examples:

li All Examples

li Apply a mask to an image

*/"
%javamethodmodifiers itk::simple::MaskImageFilter::execute() "
/**Mask an image with a mask. image with the mask.

*/"
%javamethodmodifiers itk::simple::Mask "/**
Mask an image with a mask. image with the mask.

This class is templated over the types of the input image type, the mask image type and the type of the output image. Numeric conversions (castings) are done by the C++ defaults.
The pixel type of the input 2 image must have a valid definition of the operator != with zero. This condition is required because internally this filter will perform the operation
ifpixel_from_mask_image!=0pixel_output_image=pixel_input_imageelsepixel_output_image=outside_value
The pixel from the input 1 is cast to the pixel type of the output image.
Note that the input and the mask images must be of the same size.
warning Any pixel value other than 0 will not be masked out.
see  MaskNegatedImageFilter
par Wiki Examples:

li All Examples

li Apply a mask to an image

*/"
%javamethodmodifiers itk::simple::MaskImageFilter::setOutsideValue "/**
void itk::MaskImageFilter::SetOutsideValue(const typename TOutputImage::PixelType &outsideValue)

Method to explicitly set the outside value of the mask. Defaults to 0
*/"

%javamethodmodifiers itk::simple::MaskImageFilter::getOutsideValue "/**
const TOutputImage::PixelType& itk::MaskImageFilter::GetOutsideValue() const

*/"

// Generated for ClassName from /scratch/blowekamp/build/ITK-gerrit/Utilities/Doxygen/xml/classitk_1_1MaskNegatedImageFilter.xml
%typemap(javaimports) itk::simple::MaskNegatedImageFilter "/** Mask an image with the negative of a mask.

This class is templated over the types of the input image type, the mask image type and the type of the output image. Numeric conversions (castings) are done by the C++ defaults.
The pixel type of the input 2 image must have a valid definition of the operator != with zero. This condition is required because internally this filter will perform the operation
ifpixel_from_mask_image!=0pixel_output_image=output_valueelsepixel_output_image=pixel_input_image
The pixel from the input 1 is cast to the pixel type of the output image.
Note that the input and the mask images must be of the same size.
warning Any pixel value other than 0 will not be masked out.
see  MaskImageFilter
par Wiki Examples:

li All Examples

li Apply the inverse of a mask to an image

*/"
%javamethodmodifiers itk::simple::MaskNegatedImageFilter::execute() "
/**Mask an image with the negative of a mask.

*/"
%javamethodmodifiers itk::simple::MaskNegated "/**
Mask an image with the negative of a mask.

This class is templated over the types of the input image type, the mask image type and the type of the output image. Numeric conversions (castings) are done by the C++ defaults.
The pixel type of the input 2 image must have a valid definition of the operator != with zero. This condition is required because internally this filter will perform the operation
ifpixel_from_mask_image!=0pixel_output_image=output_valueelsepixel_output_image=pixel_input_image
The pixel from the input 1 is cast to the pixel type of the output image.
Note that the input and the mask images must be of the same size.
warning Any pixel value other than 0 will not be masked out.
see  MaskImageFilter
par Wiki Examples:

li All Examples

li Apply the inverse of a mask to an image

*/"
// Generated for ClassName from /scratch/blowekamp/build/ITK-gerrit/Utilities/Doxygen/xml/classitk_1_1MaximumImageFilter.xml
%typemap(javaimports) itk::simple::MaximumImageFilter "/** Implements a pixel-wise operator Max(a,b) between two images.

The pixel values of the output image are the maximum between the corresponding pixels of the two input images.
This class is templated over the types of the two input images and the type of the output image. Numeric conversions (castings) are done by the C++ defaults.
par Wiki Examples:

li All Examples

li Pixel wise compare two input images and set the output pixel to their max

*/"
%javamethodmodifiers itk::simple::MaximumImageFilter::execute() "
/**Implements a pixel-wise operator Max(a,b) between two images.

*/"
%javamethodmodifiers itk::simple::Maximum "/**
Implements a pixel-wise operator Max(a,b) between two images.

The pixel values of the output image are the maximum between the corresponding pixels of the two input images.
This class is templated over the types of the two input images and the type of the output image. Numeric conversions (castings) are done by the C++ defaults.
par Wiki Examples:

li All Examples

li Pixel wise compare two input images and set the output pixel to their max

*/"
// Generated for ClassName from /scratch/blowekamp/build/ITK-gerrit/Utilities/Doxygen/xml/classitk_1_1MaximumEntropyThresholdImageFilter.xml
%typemap(javaimports) itk::simple::MaximumEntropyThresholdImageFilter "/** Threshold an image using the MaximumEntropy Threshold.

This filter creates a binary thresholded image that separates an image into foreground and background components. The filter computes the threshold using the MaximumEntropyThresholdCalculatorand applies that theshold to the input image using the BinaryThresholdImageFilter.
author Richard Beare. Department of Medicine, Monash University, Melbourne, Australia.
Gaetan Lehmann. Biologie du Developpement et de la Reproduction, INRA de Jouy-en-Josas, France.
This implementation was taken from the Insight Journal paper:http://hdl.handle.net/10380/3279orhttp://www.insight-journal.org/browse/publication/811
see HistogramThresholdImageFitler

*/"
%javamethodmodifiers itk::simple::MaximumEntropyThresholdImageFilter::execute() "
/**Threshold an image using the MaximumEntropy Threshold.

*/"
%javamethodmodifiers itk::simple::MaximumEntropyThreshold "/**
Threshold an image using the MaximumEntropy Threshold.

This filter creates a binary thresholded image that separates an image into foreground and background components. The filter computes the threshold using the MaximumEntropyThresholdCalculatorand applies that theshold to the input image using the BinaryThresholdImageFilter.
author Richard Beare. Department of Medicine, Monash University, Melbourne, Australia.
Gaetan Lehmann. Biologie du Developpement et de la Reproduction, INRA de Jouy-en-Josas, France.
This implementation was taken from the Insight Journal paper:http://hdl.handle.net/10380/3279orhttp://www.insight-journal.org/browse/publication/811
see HistogramThresholdImageFitler

*/"
// Generated for ClassName from /scratch/blowekamp/build/ITK-gerrit/Utilities/Doxygen/xml/classitk_1_1MaximumProjectionImageFilter.xml
%typemap(javaimports) itk::simple::MaximumProjectionImageFilter "/** Maximum projection.

this class was contributed to the insight journal by Gaetan Lehmann. the original paper can be found athttp://hdl.handle.net/1926/164
author Gaetan Lehmann. Biologie du Developpement et de la reproduction, inra de jouy-en-josas, France.
see  ProjectionImageFilter
see 
see  MedianProjectionImageFilter
see 
see  MeanProjectionImageFilter
see 
see  MinimumProjectionImageFilter
see 
see  StandardDeviationProjectionImageFilter
see 
see  SumProjectionImageFilter
see 
see  BinaryProjectionImageFilter

*/"
%javamethodmodifiers itk::simple::MaximumProjectionImageFilter::execute() "
/**Maximum projection.

*/"
%javamethodmodifiers itk::simple::MaximumProjection "/**
Maximum projection.

this class was contributed to the insight journal by Gaetan Lehmann. the original paper can be found athttp://hdl.handle.net/1926/164
author Gaetan Lehmann. Biologie du Developpement et de la reproduction, inra de jouy-en-josas, France.
see  ProjectionImageFilter
see 
see  MedianProjectionImageFilter
see 
see  MeanProjectionImageFilter
see 
see  MinimumProjectionImageFilter
see 
see  StandardDeviationProjectionImageFilter
see 
see  SumProjectionImageFilter
see 
see  BinaryProjectionImageFilter

*/"
// Generated for ClassName from /scratch/blowekamp/build/ITK-gerrit/Utilities/Doxygen/xml/classitk_1_1MeanImageFilter.xml
%typemap(javaimports) itk::simple::MeanImageFilter "/** Applies an averaging filter to an image.

Computes an image where a given pixel is the mean value of the the pixels in a neighborhood about the corresponding input pixel.
A mean filter is one of the family of linear filters.
see  Image
see 
see  Neighborhood
see 
see  NeighborhoodOperator
see 
see  NeighborhoodIterator
par Wiki Examples:

li All Examples

li Mean filter an image

*/"
%javamethodmodifiers itk::simple::MeanImageFilter::execute() "
/**Applies an averaging filter to an image.

*/"
%javamethodmodifiers itk::simple::Mean "/**
Applies an averaging filter to an image.

Computes an image where a given pixel is the mean value of the the pixels in a neighborhood about the corresponding input pixel.
A mean filter is one of the family of linear filters.
see  Image
see 
see  Neighborhood
see 
see  NeighborhoodOperator
see 
see  NeighborhoodIterator
par Wiki Examples:

li All Examples

li Mean filter an image

*/"
// Generated for ClassName from /scratch/blowekamp/build/ITK-gerrit/Utilities/Doxygen/xml/classitk_1_1MeanProjectionImageFilter.xml
%typemap(javaimports) itk::simple::MeanProjectionImageFilter "/** Mean projection.

This class was contributed to the Insight Journal by Gaetan Lehmann. The original paper can be found athttp://hdl.handle.net/1926/164
author Gaetan Lehmann. Biologie du Developpement et de la Reproduction, INRA de Jouy-en-Josas, France.
see  ProjectionImageFilter
see 
see  MedianProjectionImageFilter
see 
see  MinimumProjectionImageFilter
see 
see  StandardDeviationProjectionImageFilter
see 
see  SumProjectionImageFilter
see 
see  BinaryProjectionImageFilter
see 
see  MaximumProjectionImageFilter

*/"
%javamethodmodifiers itk::simple::MeanProjectionImageFilter::execute() "
/**Mean projection.

*/"
%javamethodmodifiers itk::simple::MeanProjection "/**
Mean projection.

This class was contributed to the Insight Journal by Gaetan Lehmann. The original paper can be found athttp://hdl.handle.net/1926/164
author Gaetan Lehmann. Biologie du Developpement et de la Reproduction, INRA de Jouy-en-Josas, France.
see  ProjectionImageFilter
see 
see  MedianProjectionImageFilter
see 
see  MinimumProjectionImageFilter
see 
see  StandardDeviationProjectionImageFilter
see 
see  SumProjectionImageFilter
see 
see  BinaryProjectionImageFilter
see 
see  MaximumProjectionImageFilter

*/"
// Generated for ClassName from /scratch/blowekamp/build/ITK-gerrit/Utilities/Doxygen/xml/classitk_1_1MedianImageFilter.xml
%typemap(javaimports) itk::simple::MedianImageFilter "/** Applies a median filter to an image.

Computes an image where a given pixel is the median value of the the pixels in a neighborhood about the corresponding input pixel.
A median filter is one of the family of nonlinear filters. It is used to smooth an image without being biased by outliers or shot noise.
This filter requires that the input pixel type provides an operator<() (LessThan Comparable).
see  Image
see 
see  Neighborhood
see 
see  NeighborhoodOperator
see 
see  NeighborhoodIterator
par Wiki Examples:

li All Examples

li Median filter an image

li Median filter an RGB image

*/"
%javamethodmodifiers itk::simple::MedianImageFilter::execute() "
/**Applies a median filter to an image.

*/"
%javamethodmodifiers itk::simple::Median "/**
Applies a median filter to an image.

Computes an image where a given pixel is the median value of the the pixels in a neighborhood about the corresponding input pixel.
A median filter is one of the family of nonlinear filters. It is used to smooth an image without being biased by outliers or shot noise.
This filter requires that the input pixel type provides an operator<() (LessThan Comparable).
see  Image
see 
see  Neighborhood
see 
see  NeighborhoodOperator
see 
see  NeighborhoodIterator
par Wiki Examples:

li All Examples

li Median filter an image

li Median filter an RGB image

*/"
// Generated for ClassName from /scratch/blowekamp/build/ITK-gerrit/Utilities/Doxygen/xml/classitk_1_1MedianProjectionImageFilter.xml
%typemap(javaimports) itk::simple::MedianProjectionImageFilter "/** Median projection.

This class was contributed to the Insight Journal by Gaetan Lehmann. The original paper can be found athttp://hdl.handle.net/1926/164
author Gaetan Lehmann. Biologie du Developpement et de la Reproduction, INRA de Jouy-en-Josas, France.
see  ProjectionImageFilter
see 
see  StandardDeviationProjectionImageFilter
see 
see  SumProjectionImageFilter
see 
see  BinaryProjectionImageFilter
see 
see  MaximumProjectionImageFilter
see 
see  MinimumProjectionImageFilter
see 
see  MeanProjectionImageFilter

*/"
%javamethodmodifiers itk::simple::MedianProjectionImageFilter::execute() "
/**Median projection.

*/"
%javamethodmodifiers itk::simple::MedianProjection "/**
Median projection.

This class was contributed to the Insight Journal by Gaetan Lehmann. The original paper can be found athttp://hdl.handle.net/1926/164
author Gaetan Lehmann. Biologie du Developpement et de la Reproduction, INRA de Jouy-en-Josas, France.
see  ProjectionImageFilter
see 
see  StandardDeviationProjectionImageFilter
see 
see  SumProjectionImageFilter
see 
see  BinaryProjectionImageFilter
see 
see  MaximumProjectionImageFilter
see 
see  MinimumProjectionImageFilter
see 
see  MeanProjectionImageFilter

*/"
// Generated for ClassName from /scratch/blowekamp/build/ITK-gerrit/Utilities/Doxygen/xml/classitk_1_1MinMaxCurvatureFlowImageFilter.xml
%typemap(javaimports) itk::simple::MinMaxCurvatureFlowImageFilter "/** Denoise an image using min/max curvature flow.

 MinMaxCurvatureFlowImageFilterimplements a curvature driven image denoising algorithm. Iso-brightness contours in the grayscale input image are viewed as a level set. The level set is then evolved using a curvature-based speed function:
 f[ I_t = F_{mbox{minmax}} |nabla I| f]  
wheref$ F_{mbox{minmax}} = max(kappa,0) f$ iff$ mbox{Avg}_{mbox{stencil}}(x) f$ is less than or equal tof$ T_{thresold} f$ andf$ min(kappa,0) f$ , otherwise.f$ kappa f$ is the mean curvature of the iso-brightness contour at pointf$ x f$ .
In min/max curvature flow, movement is turned on or off depending on the scale of the noise one wants to remove. Switching depends on the average image value of a region of radiusf$ R f$ around each point. The choice off$ R f$ , the stencil radius, governs the scale of the noise to be removed.
The threshold valuef$ T_{threshold} f$ is the average intensity obtained in the direction perpendicular to the gradient at pointf$ x f$ at the extrema of the local neighborhood.
This filter make use of the multi-threaded finite difference solver hierarchy. Updates are computed using a MinMaxCurvatureFlowFunctionobject. A zero flux Neumann boundary condition is used when computing derivatives near the data boundary.
warning This filter assumes that the input and output types have the same dimensions. This filter also requires that the output image pixels are of a real type. This filter works for any dimensional images, however for dimensions greater than 3D, an expensive brute-force search is used to compute the local threshold.
Reference: Level Set Methods and Fast Marching Methods, J.A. Sethian, Cambridge Press, Chapter 16, Second edition, 1999.
see  MinMaxCurvatureFlowFunction
see 
see  CurvatureFlowImageFilter
see 
see  BinaryMinMaxCurvatureFlowImageFilter

*/"
%javamethodmodifiers itk::simple::MinMaxCurvatureFlowImageFilter::execute() "
/**Denoise an image using min/max curvature flow.

*/"
%javamethodmodifiers itk::simple::MinMaxCurvatureFlow "/**
Denoise an image using min/max curvature flow.

 MinMaxCurvatureFlowImageFilterimplements a curvature driven image denoising algorithm. Iso-brightness contours in the grayscale input image are viewed as a level set. The level set is then evolved using a curvature-based speed function:
 f[ I_t = F_{mbox{minmax}} |nabla I| f]  
wheref$ F_{mbox{minmax}} = max(kappa,0) f$ iff$ mbox{Avg}_{mbox{stencil}}(x) f$ is less than or equal tof$ T_{thresold} f$ andf$ min(kappa,0) f$ , otherwise.f$ kappa f$ is the mean curvature of the iso-brightness contour at pointf$ x f$ .
In min/max curvature flow, movement is turned on or off depending on the scale of the noise one wants to remove. Switching depends on the average image value of a region of radiusf$ R f$ around each point. The choice off$ R f$ , the stencil radius, governs the scale of the noise to be removed.
The threshold valuef$ T_{threshold} f$ is the average intensity obtained in the direction perpendicular to the gradient at pointf$ x f$ at the extrema of the local neighborhood.
This filter make use of the multi-threaded finite difference solver hierarchy. Updates are computed using a MinMaxCurvatureFlowFunctionobject. A zero flux Neumann boundary condition is used when computing derivatives near the data boundary.
warning This filter assumes that the input and output types have the same dimensions. This filter also requires that the output image pixels are of a real type. This filter works for any dimensional images, however for dimensions greater than 3D, an expensive brute-force search is used to compute the local threshold.
Reference: Level Set Methods and Fast Marching Methods, J.A. Sethian, Cambridge Press, Chapter 16, Second edition, 1999.
see  MinMaxCurvatureFlowFunction
see 
see  CurvatureFlowImageFilter
see 
see  BinaryMinMaxCurvatureFlowImageFilter

*/"
%javamethodmodifiers itk::simple::MinMaxCurvatureFlowImageFilter::setStencilRadius "/**
virtual void itk::MinMaxCurvatureFlowImageFilter::SetStencilRadius(RadiusValueType _arg)

Set/Get the stencil radius.
*/"

%javamethodmodifiers itk::simple::MinMaxCurvatureFlowImageFilter::getStencilRadius "/**
virtual RadiusValueType itk::MinMaxCurvatureFlowImageFilter::GetStencilRadius() const

Set/Get the stencil radius.
*/"

// Generated for ClassName from /scratch/blowekamp/build/ITK-gerrit/Utilities/Doxygen/xml/classitk_1_1MinimumImageFilter.xml
%typemap(javaimports) itk::simple::MinimumImageFilter "/** Implements a pixel-wise operator Min(a,b) between two images.

The pixel values of the output image are the minimum between the corresponding pixels of the two input images.
This class is templated over the types of the two input images and the type of the output image. Numeric conversions (castings) are done by the C++ defaults.
par Wiki Examples:

li All Examples

li Pixel wise compare two input images and set the output pixel to their min

*/"
%javamethodmodifiers itk::simple::MinimumImageFilter::execute() "
/**Implements a pixel-wise operator Min(a,b) between two images.

*/"
%javamethodmodifiers itk::simple::Minimum "/**
Implements a pixel-wise operator Min(a,b) between two images.

The pixel values of the output image are the minimum between the corresponding pixels of the two input images.
This class is templated over the types of the two input images and the type of the output image. Numeric conversions (castings) are done by the C++ defaults.
par Wiki Examples:

li All Examples

li Pixel wise compare two input images and set the output pixel to their min

*/"
// Generated for ClassName from /scratch/blowekamp/build/ITK-gerrit/Utilities/Doxygen/xml/classitk_1_1MinimumMaximumImageFilter.xml
%typemap(javaimports) itk::simple::MinimumMaximumImageFilter "/** Computes the minimum and the maximum intensity values of an image.

It is templated over input image type only. This filter just copies the input image through this output to be included within the pipeline. The implementation uses the StatisticsImageFilter.
see  StatisticsImageFilter

*/"
%javamethodmodifiers itk::simple::MinimumMaximumImageFilter::execute() "
/**Computes the minimum and the maximum intensity values of an image.

*/"
%javamethodmodifiers itk::simple::MinimumMaximum "/**
Computes the minimum and the maximum intensity values of an image.

It is templated over input image type only. This filter just copies the input image through this output to be included within the pipeline. The implementation uses the StatisticsImageFilter.
see  StatisticsImageFilter

*/"
// Generated for ClassName from /scratch/blowekamp/build/ITK-gerrit/Utilities/Doxygen/xml/classitk_1_1MinimumProjectionImageFilter.xml
%typemap(javaimports) itk::simple::MinimumProjectionImageFilter "/** Minimum projection.

This class was contributed to the Insight Journal by Gaetan Lehmann. The original paper can be found athttp://hdl.handle.net/1926/164
author Gaetan Lehmann. Biologie du Developpement et de la Reproduction, INRA de Jouy-en-Josas, France.
see  ProjectionImageFilter
see 
see  StandardDeviationProjectionImageFilter
see 
see  SumProjectionImageFilter
see 
see  BinaryProjectionImageFilter
see 
see  MaximumProjectionImageFilter
see 
see  MeanProjectionImageFilter

*/"
%javamethodmodifiers itk::simple::MinimumProjectionImageFilter::execute() "
/**Minimum projection.

*/"
%javamethodmodifiers itk::simple::MinimumProjection "/**
Minimum projection.

This class was contributed to the Insight Journal by Gaetan Lehmann. The original paper can be found athttp://hdl.handle.net/1926/164
author Gaetan Lehmann. Biologie du Developpement et de la Reproduction, INRA de Jouy-en-Josas, France.
see  ProjectionImageFilter
see 
see  StandardDeviationProjectionImageFilter
see 
see  SumProjectionImageFilter
see 
see  BinaryProjectionImageFilter
see 
see  MaximumProjectionImageFilter
see 
see  MeanProjectionImageFilter

*/"
// Generated for ClassName from /scratch/blowekamp/build/ITK-gerrit/Utilities/Doxygen/xml/classitk_1_1MirrorPadImageFilter.xml
%typemap(javaimports) itk::simple::MirrorPadImageFilter "/** Increase the image size by padding with replicants of the input image value.

 MirrorPadImageFilterchanges the image bounds of an image. Any added pixels are filled in with a mirrored replica of the input image. For instance, if the output image needs a pixel that istwo pixels to the left of the LargestPossibleRegionof the input image, the value assigned will be from the pixeltwo pixels inside the left boundary of the LargestPossibleRegion. The image bounds of the output must be specified.
Visual explanation of padding regions.This filter is implemented as a multithreaded filter. It provides a ThreadedGenerateData()method for its implementation.
see  WrapPadImageFilter, ConstantPadImageFilter
par Wiki Examples:

li All Examples

li Pad an image using mirroring over the boundaries

*/"
%javamethodmodifiers itk::simple::MirrorPadImageFilter::execute() "
/**Increase the image size by padding with replicants of the input image value.

*/"
%javamethodmodifiers itk::simple::MirrorPad "/**
Increase the image size by padding with replicants of the input image value.

 MirrorPadImageFilterchanges the image bounds of an image. Any added pixels are filled in with a mirrored replica of the input image. For instance, if the output image needs a pixel that istwo pixels to the left of the LargestPossibleRegionof the input image, the value assigned will be from the pixeltwo pixels inside the left boundary of the LargestPossibleRegion. The image bounds of the output must be specified.
Visual explanation of padding regions.This filter is implemented as a multithreaded filter. It provides a ThreadedGenerateData()method for its implementation.
see  WrapPadImageFilter, ConstantPadImageFilter
par Wiki Examples:

li All Examples

li Pad an image using mirroring over the boundaries

*/"
// Generated for ClassName from /scratch/blowekamp/build/ITK-gerrit/Utilities/Doxygen/xml/classitk_1_1ModulusImageFilter.xml
%typemap(javaimports) itk::simple::ModulusImageFilter "/** Computes the modulus (x % dividend) pixel-wise.

The input pixel type must support the c++ modulus operator (%).
author Gaetan Lehmann. Biologie du Developpement et de la Reproduction, INRA de Jouy-en-Josas, France.

*/"
%javamethodmodifiers itk::simple::ModulusImageFilter::execute() "
/**Computes the modulus (x % dividend) pixel-wise.

*/"
%javamethodmodifiers itk::simple::Modulus "/**
Computes the modulus (x % dividend) pixel-wise.

The input pixel type must support the c++ modulus operator (%).
author Gaetan Lehmann. Biologie du Developpement et de la Reproduction, INRA de Jouy-en-Josas, France.

*/"
%javamethodmodifiers itk::simple::ModulusImageFilter::setDividend "/**
virtual void itk::ModulusImageFilter::SetDividend(InputPixelType _arg)

Set/Get the dividend
*/"

%javamethodmodifiers itk::simple::ModulusImageFilter::getDividend "/**
virtual const InputPixelType& itk::ModulusImageFilter::GetDividend()

Set/Get the dividend
*/"

// Generated for ClassName from /scratch/blowekamp/build/ITK-gerrit/Utilities/Doxygen/xml/classitk_1_1MomentsThresholdImageFilter.xml
%typemap(javaimports) itk::simple::MomentsThresholdImageFilter "/** Threshold an image using the Moments Threshold.

This filter creates a binary thresholded image that separates an image into foreground and background components. The filter computes the threshold using the MomentsThresholdCalculatorand applies that theshold to the input image using the BinaryThresholdImageFilter.
author Richard Beare. Department of Medicine, Monash University, Melbourne, Australia.
Gaetan Lehmann. Biologie du Developpement et de la Reproduction, INRA de Jouy-en-Josas, France.
This implementation was taken from the Insight Journal paper:http://hdl.handle.net/10380/3279orhttp://www.insight-journal.org/browse/publication/811
see HistogramThresholdImageFitler

*/"
%javamethodmodifiers itk::simple::MomentsThresholdImageFilter::execute() "
/**Threshold an image using the Moments Threshold.

*/"
%javamethodmodifiers itk::simple::MomentsThreshold "/**
Threshold an image using the Moments Threshold.

This filter creates a binary thresholded image that separates an image into foreground and background components. The filter computes the threshold using the MomentsThresholdCalculatorand applies that theshold to the input image using the BinaryThresholdImageFilter.
author Richard Beare. Department of Medicine, Monash University, Melbourne, Australia.
Gaetan Lehmann. Biologie du Developpement et de la Reproduction, INRA de Jouy-en-Josas, France.
This implementation was taken from the Insight Journal paper:http://hdl.handle.net/10380/3279orhttp://www.insight-journal.org/browse/publication/811
see HistogramThresholdImageFitler

*/"
// Generated for ClassName from /scratch/blowekamp/build/ITK-gerrit/Utilities/Doxygen/xml/classitk_1_1MorphologicalGradientImageFilter.xml
%typemap(javaimports) itk::simple::MorphologicalGradientImageFilter "/** gray scale dilation of an image

Dilate an image using grayscale morphology. Dilation takes the maximum of all the pixels identified by the structuring element.
The structuring element is assumed to be composed of binary values (zero or one). Only elements of the structuring element having values > 0 are candidates for affecting the center pixel.
see  MorphologyImageFilter, GrayscaleFunctionDilateImageFilter, BinaryDilateImageFilter

*/"
%javamethodmodifiers itk::simple::MorphologicalGradientImageFilter::execute() "
/**gray scale dilation of an image

*/"
%javamethodmodifiers itk::simple::MorphologicalGradient "/**
gray scale dilation of an image

Dilate an image using grayscale morphology. Dilation takes the maximum of all the pixels identified by the structuring element.
The structuring element is assumed to be composed of binary values (zero or one). Only elements of the structuring element having values > 0 are candidates for affecting the center pixel.
see  MorphologyImageFilter, GrayscaleFunctionDilateImageFilter, BinaryDilateImageFilter

*/"
// Generated for ClassName from /scratch/blowekamp/build/ITK-gerrit/Utilities/Doxygen/xml/classitk_1_1MorphologicalWatershedImageFilter.xml
%typemap(javaimports) itk::simple::MorphologicalWatershedImageFilter "/** TODO.

TODO
Watershed pixel are labeled 0. TOutputImage should be an integer type. Labels of output image are in no particular order. You can reorder the labels such that object labels are consecutive and sorted based on object size by passing the output of this filter to a RelabelComponentImageFilter.
The morphological watershed transform algorithm is described in Chapter 9.2 of Pierre Soille's book Morphological Image Analysis:
 Principles and Applications, Second Edition, Springer, 2003.
This code was contributed in the Insight Journal paper: The watershed transform in ITK - discussion and new developments by Beare R., Lehmann G.http://hdl.handle.net/1926/202http://www.insight-journal.org/browse/publication/92
author Gaetan Lehmann. Biologie du Developpement et de la Reproduction, INRA de Jouy-en-Josas, France.
see  WatershedImageFilter, MorphologicalWatershedFromMarkersImageFilter

*/"
%javamethodmodifiers itk::simple::MorphologicalWatershedImageFilter::execute() "
/**TODO.

*/"
%javamethodmodifiers itk::simple::MorphologicalWatershed "/**
TODO.

TODO
Watershed pixel are labeled 0. TOutputImage should be an integer type. Labels of output image are in no particular order. You can reorder the labels such that object labels are consecutive and sorted based on object size by passing the output of this filter to a RelabelComponentImageFilter.
The morphological watershed transform algorithm is described in Chapter 9.2 of Pierre Soille's book Morphological Image Analysis:
 Principles and Applications, Second Edition, Springer, 2003.
This code was contributed in the Insight Journal paper: The watershed transform in ITK - discussion and new developments by Beare R., Lehmann G.http://hdl.handle.net/1926/202http://www.insight-journal.org/browse/publication/92
author Gaetan Lehmann. Biologie du Developpement et de la Reproduction, INRA de Jouy-en-Josas, France.
see  WatershedImageFilter, MorphologicalWatershedFromMarkersImageFilter

*/"
%javamethodmodifiers itk::simple::MorphologicalWatershedImageFilter::setLevel "/**
virtual void itk::MorphologicalWatershedImageFilter::SetLevel(InputImagePixelType _arg)

*/"

%javamethodmodifiers itk::simple::MorphologicalWatershedImageFilter::getLevel "/**
virtual InputImagePixelType itk::MorphologicalWatershedImageFilter::GetLevel() const

*/"

%javamethodmodifiers itk::simple::MorphologicalWatershedImageFilter::setMarkWatershedLine "/**
virtual void itk::MorphologicalWatershedImageFilter::SetMarkWatershedLine(bool _arg)

Set/Get whether the watershed pixel must be marked or not. Default is true. Set it to false do not only avoid writing watershed pixels, it also decrease algorithm complexity.
*/"

%javamethodmodifiers itk::simple::MorphologicalWatershedImageFilter::getMarkWatershedLine "/**
virtual const bool& itk::MorphologicalWatershedImageFilter::GetMarkWatershedLine()

Set/Get whether the watershed pixel must be marked or not. Default is true. Set it to false do not only avoid writing watershed pixels, it also decrease algorithm complexity.
*/"

%javamethodmodifiers itk::simple::MorphologicalWatershedImageFilter::setFullyConnected "/**
virtual void itk::MorphologicalWatershedImageFilter::SetFullyConnected(bool _arg)

Set/Get whether the connected components are defined strictly by face connectivity or by face+edge+vertex connectivity. Default is FullyConnectedOff. For objects that are 1 pixel wide, use FullyConnectedOn.
*/"

%javamethodmodifiers itk::simple::MorphologicalWatershedImageFilter::getFullyConnected "/**
virtual const bool& itk::MorphologicalWatershedImageFilter::GetFullyConnected()

Set/Get whether the connected components are defined strictly by face connectivity or by face+edge+vertex connectivity. Default is FullyConnectedOff. For objects that are 1 pixel wide, use FullyConnectedOn.
*/"

// Generated for ClassName from /scratch/blowekamp/build/ITK-gerrit/Utilities/Doxygen/xml/classitk_1_1MorphologicalWatershedFromMarkersImageFilter.xml
%typemap(javaimports) itk::simple::MorphologicalWatershedFromMarkersImageFilter "/** Morphological watershed transform from markers.

The watershed transform is a tool for image segmentation that is fast and flexible and potentially fairly parameter free. It was originally derived from a geophysical model of rain falling on a terrain and a variety of more formal definitions have been devised to allow development of practical algorithms. If an image is considered as a terrain and divided into catchment basins then the hope is that each catchment basin would contain an object of interest.
The output is a label image. A label image, sometimes referred to as a categorical image, has unique values for each region. For example, if a watershed produces 2 regions, all pixels belonging to one region would have value A, and all belonging to the other might have value B. Unassigned pixels, such as watershed lines, might have the background value (0 by convention).
The simplest way of using the watershed is to preprocess the image we want to segment so that the boundaries of our objects are bright (e.g apply an edge detector) and compute the watershed transform of the edge image. Watershed lines will correspond to the boundaries and our problem will be solved. This is rarely useful in practice because there are always more regional minima than there are objects, either due to noise or natural variations in the object surfaces. Therefore, while many watershed lines do lie on significant boundaries, there are many that don't. Various methods can be used to reduce the number of minima in the image, like thresholding the smallest values, filtering the minima and/or smoothing the image.
This filter use another approach to avoid the problem of over segmentation: it let the user provide a marker image which mark the minima in the input image and give them a label. The minima are imposed in the input image by the markers. The labels of the output image are the label of the marker image.
The morphological watershed transform algorithm is described in Chapter 9.2 of Pierre Soille's book Morphological Image Analysis:
 Principles and Applications, Second Edition, Springer, 2003.
This code was contributed in the Insight Journal paper: The watershed transform in ITK - discussion and new developments by Beare R., Lehmann G.http://hdl.handle.net/1926/202http://www.insight-journal.org/browse/publication/92
author Gaetan Lehmann. Biologie du Developpement et de la Reproduction, INRA de Jouy-en-Josas, France.
Richard Beare. Department of Medicine, Monash University, Melbourne, Australia.
see  WatershedImageFilter, MorphologicalWatershedImageFilter

*/"
%javamethodmodifiers itk::simple::MorphologicalWatershedFromMarkersImageFilter::execute() "
/**Morphological watershed transform from markers.

*/"
%javamethodmodifiers itk::simple::MorphologicalWatershedFromMarkers "/**
Morphological watershed transform from markers.

The watershed transform is a tool for image segmentation that is fast and flexible and potentially fairly parameter free. It was originally derived from a geophysical model of rain falling on a terrain and a variety of more formal definitions have been devised to allow development of practical algorithms. If an image is considered as a terrain and divided into catchment basins then the hope is that each catchment basin would contain an object of interest.
The output is a label image. A label image, sometimes referred to as a categorical image, has unique values for each region. For example, if a watershed produces 2 regions, all pixels belonging to one region would have value A, and all belonging to the other might have value B. Unassigned pixels, such as watershed lines, might have the background value (0 by convention).
The simplest way of using the watershed is to preprocess the image we want to segment so that the boundaries of our objects are bright (e.g apply an edge detector) and compute the watershed transform of the edge image. Watershed lines will correspond to the boundaries and our problem will be solved. This is rarely useful in practice because there are always more regional minima than there are objects, either due to noise or natural variations in the object surfaces. Therefore, while many watershed lines do lie on significant boundaries, there are many that don't. Various methods can be used to reduce the number of minima in the image, like thresholding the smallest values, filtering the minima and/or smoothing the image.
This filter use another approach to avoid the problem of over segmentation: it let the user provide a marker image which mark the minima in the input image and give them a label. The minima are imposed in the input image by the markers. The labels of the output image are the label of the marker image.
The morphological watershed transform algorithm is described in Chapter 9.2 of Pierre Soille's book Morphological Image Analysis:
 Principles and Applications, Second Edition, Springer, 2003.
This code was contributed in the Insight Journal paper: The watershed transform in ITK - discussion and new developments by Beare R., Lehmann G.http://hdl.handle.net/1926/202http://www.insight-journal.org/browse/publication/92
author Gaetan Lehmann. Biologie du Developpement et de la Reproduction, INRA de Jouy-en-Josas, France.
Richard Beare. Department of Medicine, Monash University, Melbourne, Australia.
see  WatershedImageFilter, MorphologicalWatershedImageFilter

*/"
%javamethodmodifiers itk::simple::MorphologicalWatershedFromMarkersImageFilter::setMarkWatershedLine "/**
virtual void itk::MorphologicalWatershedFromMarkersImageFilter::SetMarkWatershedLine(bool _arg)

Set/Get whether the watershed pixel must be marked or not. Default is true. Set it to false do not only avoid writing watershed pixels, it also decrease algorithm complexity.
*/"

%javamethodmodifiers itk::simple::MorphologicalWatershedFromMarkersImageFilter::getMarkWatershedLine "/**
virtual const bool& itk::MorphologicalWatershedFromMarkersImageFilter::GetMarkWatershedLine()

Set/Get whether the watershed pixel must be marked or not. Default is true. Set it to false do not only avoid writing watershed pixels, it also decrease algorithm complexity.
*/"

%javamethodmodifiers itk::simple::MorphologicalWatershedFromMarkersImageFilter::setFullyConnected "/**
virtual void itk::MorphologicalWatershedFromMarkersImageFilter::SetFullyConnected(bool _arg)

Set/Get whether the connected components are defined strictly by face connectivity or by face+edge+vertex connectivity. Default is FullyConnectedOff. For objects that are 1 pixel wide, use FullyConnectedOn.
*/"

%javamethodmodifiers itk::simple::MorphologicalWatershedFromMarkersImageFilter::getFullyConnected "/**
virtual const bool& itk::MorphologicalWatershedFromMarkersImageFilter::GetFullyConnected()

Set/Get whether the connected components are defined strictly by face connectivity or by face+edge+vertex connectivity. Default is FullyConnectedOff. For objects that are 1 pixel wide, use FullyConnectedOn.
*/"

// Generated for ClassName from /scratch/blowekamp/build/ITK-gerrit/Utilities/Doxygen/xml/classitk_1_1MultiplyImageFilter.xml
%typemap(javaimports) itk::simple::MultiplyImageFilter "/** Pixel-wise multiplication of two images.

This class is templated over the types of the two input images and the type of the output image. Numeric conversions (castings) are done by the C++ defaults.
par Wiki Examples:

li All Examples

li Multiply two images together

li Multiply every pixel in an image by a constant

*/"
%javamethodmodifiers itk::simple::MultiplyImageFilter::execute() "
/**Pixel-wise multiplication of two images.

*/"
%javamethodmodifiers itk::simple::Multiply "/**
Pixel-wise multiplication of two images.

This class is templated over the types of the two input images and the type of the output image. Numeric conversions (castings) are done by the C++ defaults.
par Wiki Examples:

li All Examples

li Multiply two images together

li Multiply every pixel in an image by a constant

*/"
// Generated for ClassName from /scratch/blowekamp/build/ITK-gerrit/Utilities/Doxygen/xml/classitk_1_1MultiplyByConstantImageFilter.xml
%typemap(javaimports) itk::simple::MultiplyByConstantImageFilter "/** Multiply all input pixels by a constant.

This filter is templated over the input image type and the output image type.
author Tom Vercauteren, INRIA & Mauna Kea Technologies
Based on filters from the Insight Journal paper:http://hdl.handle.net/1926/510
see  MultiplyImageFilter

*/"
%javamethodmodifiers itk::simple::MultiplyByConstantImageFilter::execute() "
/**Multiply all input pixels by a constant.

*/"
%javamethodmodifiers itk::simple::MultiplyByConstant "/**
Multiply all input pixels by a constant.

This filter is templated over the input image type and the output image type.
author Tom Vercauteren, INRIA & Mauna Kea Technologies
Based on filters from the Insight Journal paper:http://hdl.handle.net/1926/510
see  MultiplyImageFilter

*/"
// Generated for ClassName from /scratch/blowekamp/build/ITK-gerrit/Utilities/Doxygen/xml/classitk_1_1N4BiasFieldCorrectionImageFilter.xml
%typemap(javaimports) itk::simple::N4BiasFieldCorrectionImageFilter "/** Implementation of the N4 bias field correction algorithm.

The nonparametric nonuniform intensity normalization (N3) algorithm, as introduced by Sled et al. in 1998 is a method for correcting nonuniformity associated with MR images. The algorithm assumes a simple parametric model (Gaussian) for the bias field and does not require tissue class segmentation. In addition, there are only a couple of parameters to tune with the default values performing quite well. N3 has been publicly available as a set of perl scripts (http://www.bic.mni.mcgill.ca/ServicesSoftwareAdvancedImageProcessingTools/HomePage)
The N4 algorithm, encapsulated with this class, is a variation of the original N3 algorithm with the additional benefits of an improved B-spline fitting routine which allows for multiple resolutions to be used during the correction process. We also modify the iterative update component of algorithm such that the residual bias field is continually updated
Notes for the user:li Since much of the image manipulation is done in the log space of the intensities, input images with negative and small values (< 1) can produce poor results.
li The original authors recommend performing the bias field correction on a downsampled version of the original image.
li A binary mask or a weighted image can be supplied. If a binary mask is specified, those voxels in the input image which correspond to the voxels in the mask image with a value equal to m_MaskLabel, are used to estimate the bias field. If a confidence image is specified, the input voxels are weighted in the b-spline fitting routine according to the confidence voxel values.
li The filter returns the corrected image. If the bias field is wanted, one can reconstruct it using the class itkBSplineControlPointImageFilter. See the IJ article and the test file for an example.
li The 'Z' parameter in Sled's 1998 paper is the square root of the class variable 'm_WienerFilterNoise'.

The basic algorithm iterates between sharpening the intensity histogram of the corrected input image and spatially smoothing those results with a B-spline scalar field estimate of the bias field.
author Nicholas J. Tustison
Contributed by Nicholas J. Tustison, James C. Gee in the Insight Journal paper:http://hdl.handle.net/10380/3053
par REFERENCE
J.G. Sled, A.P. Zijdenbos and A.C. Evans. A Nonparametric Method for
 Automatic Correction of Intensity Nonuniformity in  Data IEEE Transactions on Medical Imaging, Vol 17, No 1. Feb 1998.
N.J. Tustison, B.B. Avants, P.A. Cook, Y. Zheng, A. Egan, P.A. Yushkevich, and J.C. Gee. N4ITK:  Improved N3 Bias Correction IEEE Transactions on Medical Imaging, 29(6):1310-1320, June 2010.
*/"
%javamethodmodifiers itk::simple::N4BiasFieldCorrectionImageFilter::execute() "
/**Implementation of the N4 bias field correction algorithm.

*/"
%javamethodmodifiers itk::simple::N4BiasFieldCorrection "/**
Implementation of the N4 bias field correction algorithm.

The nonparametric nonuniform intensity normalization (N3) algorithm, as introduced by Sled et al. in 1998 is a method for correcting nonuniformity associated with MR images. The algorithm assumes a simple parametric model (Gaussian) for the bias field and does not require tissue class segmentation. In addition, there are only a couple of parameters to tune with the default values performing quite well. N3 has been publicly available as a set of perl scripts (http://www.bic.mni.mcgill.ca/ServicesSoftwareAdvancedImageProcessingTools/HomePage)
The N4 algorithm, encapsulated with this class, is a variation of the original N3 algorithm with the additional benefits of an improved B-spline fitting routine which allows for multiple resolutions to be used during the correction process. We also modify the iterative update component of algorithm such that the residual bias field is continually updated
Notes for the user:li Since much of the image manipulation is done in the log space of the intensities, input images with negative and small values (< 1) can produce poor results.
li The original authors recommend performing the bias field correction on a downsampled version of the original image.
li A binary mask or a weighted image can be supplied. If a binary mask is specified, those voxels in the input image which correspond to the voxels in the mask image with a value equal to m_MaskLabel, are used to estimate the bias field. If a confidence image is specified, the input voxels are weighted in the b-spline fitting routine according to the confidence voxel values.
li The filter returns the corrected image. If the bias field is wanted, one can reconstruct it using the class itkBSplineControlPointImageFilter. See the IJ article and the test file for an example.
li The 'Z' parameter in Sled's 1998 paper is the square root of the class variable 'm_WienerFilterNoise'.

The basic algorithm iterates between sharpening the intensity histogram of the corrected input image and spatially smoothing those results with a B-spline scalar field estimate of the bias field.
author Nicholas J. Tustison
Contributed by Nicholas J. Tustison, James C. Gee in the Insight Journal paper:http://hdl.handle.net/10380/3053
par REFERENCE
J.G. Sled, A.P. Zijdenbos and A.C. Evans. A Nonparametric Method for
 Automatic Correction of Intensity Nonuniformity in  Data IEEE Transactions on Medical Imaging, Vol 17, No 1. Feb 1998.
N.J. Tustison, B.B. Avants, P.A. Cook, Y. Zheng, A. Egan, P.A. Yushkevich, and J.C. Gee. N4ITK:  Improved N3 Bias Correction IEEE Transactions on Medical Imaging, 29(6):1310-1320, June 2010.
*/"
%javamethodmodifiers itk::simple::N4BiasFieldCorrectionImageFilter::setConvergenceThreshold "/**
virtual void itk::N4BiasFieldCorrectionImageFilter::SetConvergenceThreshold(RealType _arg)

Set the convergence threshold. Convergence is determined by the coefficient of variation of the difference image between the current bias field estimate and the previous estimate. If this value is less than the specified threshold, the algorithm proceeds to the next fitting level or terminates if it is at the last level.
*/"

%javamethodmodifiers itk::simple::N4BiasFieldCorrectionImageFilter::getConvergenceThreshold "/**
virtual RealType itk::N4BiasFieldCorrectionImageFilter::GetConvergenceThreshold() const

Get the convergence threshold. Convergence is determined by the coefficient of variation of the difference image between the current bias field estimate and the previous estimate. If this value is less than the specified threshold, the algorithm proceeds to the next fitting level or terminates if it is at the last level.
*/"

%javamethodmodifiers itk::simple::N4BiasFieldCorrectionImageFilter::setMaximumNumberOfIterations "/**
virtual void itk::N4BiasFieldCorrectionImageFilter::SetMaximumNumberOfIterations(VariableSizeArrayType _arg)

Set the maximum number of iterations specified at each fitting level. Default = 50.
*/"

%javamethodmodifiers itk::simple::N4BiasFieldCorrectionImageFilter::getMaximumNumberOfIterations "/**
virtual VariableSizeArrayType itk::N4BiasFieldCorrectionImageFilter::GetMaximumNumberOfIterations() const

Get the maximum number of iterations specified at each fitting level. Default = 50.
*/"

%javamethodmodifiers itk::simple::N4BiasFieldCorrectionImageFilter::setBiasFieldFullWidthAtHalfMaximum "/**
virtual void itk::N4BiasFieldCorrectionImageFilter::SetBiasFieldFullWidthAtHalfMaximum(RealType _arg)

Set the full width at half maximum parameter characterizing the width of the Gaussian deconvolution. Default = 0.15.
*/"

%javamethodmodifiers itk::simple::N4BiasFieldCorrectionImageFilter::getBiasFieldFullWidthAtHalfMaximum "/**
virtual RealType itk::N4BiasFieldCorrectionImageFilter::GetBiasFieldFullWidthAtHalfMaximum() const

Get the full width at half maximum parameter characterizing the width of the Gaussian deconvolution. Default = 0.15.
*/"

%javamethodmodifiers itk::simple::N4BiasFieldCorrectionImageFilter::setWienerFilterNoise "/**
virtual void itk::N4BiasFieldCorrectionImageFilter::SetWienerFilterNoise(RealType _arg)

Set the noise estimate defining the Wiener filter. Default = 0.01.
*/"

%javamethodmodifiers itk::simple::N4BiasFieldCorrectionImageFilter::getWienerFilterNoise "/**
virtual RealType itk::N4BiasFieldCorrectionImageFilter::GetWienerFilterNoise() const

Get the noise estimate defining the Wiener filter. Default = 0.01.
*/"

%javamethodmodifiers itk::simple::N4BiasFieldCorrectionImageFilter::setNumberOfHistogramBins "/**
virtual void itk::N4BiasFieldCorrectionImageFilter::SetNumberOfHistogramBins(unsigned int _arg)

Set number of bins defining the log input intensity histogram. Default = 200.
*/"

%javamethodmodifiers itk::simple::N4BiasFieldCorrectionImageFilter::getNumberOfHistogramBins "/**
virtual unsigned int itk::N4BiasFieldCorrectionImageFilter::GetNumberOfHistogramBins() const

Get number of bins defining the log input intensity histogram. Default = 200.
*/"

%javamethodmodifiers itk::simple::N4BiasFieldCorrectionImageFilter::setNumberOfControlPoints "/**
virtual void itk::N4BiasFieldCorrectionImageFilter::SetNumberOfControlPoints(ArrayType _arg)

Set the control point grid size defining the B-spline estimate of the scalar bias field. In each dimension, the B-spline mesh size is equal to the number of control points in that dimension minus the spline order. Default = 4 control points in each dimension for a mesh size of 1 in each dimension.
*/"

%javamethodmodifiers itk::simple::N4BiasFieldCorrectionImageFilter::getNumberOfControlPoints "/**
virtual ArrayType itk::N4BiasFieldCorrectionImageFilter::GetNumberOfControlPoints() const

Get the control point grid size defining the B-spline estimate of the scalar bias field. In each dimension, the B-spline mesh size is equal to the number of control points in that dimension minus the spline order. Default = 4 control points in each dimension for a mesh size of 1 in each dimension.
*/"

%javamethodmodifiers itk::simple::N4BiasFieldCorrectionImageFilter::setSplineOrder "/**
virtual void itk::N4BiasFieldCorrectionImageFilter::SetSplineOrder(unsigned int _arg)

Set the spline order defining the bias field estimate. Default = 3.
*/"

%javamethodmodifiers itk::simple::N4BiasFieldCorrectionImageFilter::getSplineOrder "/**
virtual unsigned int itk::N4BiasFieldCorrectionImageFilter::GetSplineOrder() const

Get the spline order defining the bias field estimate. Default = 3.
*/"

// Generated for ClassName from /scratch/blowekamp/build/ITK-gerrit/Utilities/Doxygen/xml/classitk_1_1NaryAddImageFilter.xml
%typemap(javaimports) itk::simple::NaryAddImageFilter "/** Pixel-wise addition of N images.

This class is templated over the types of the input images and the type of the output image. Numeric conversions (castings) are done by the C++ defaults.
The pixel type of the input images must have a valid definition of the operator+ with each other. This condition is required because internally this filter will perform the operation
pixel_from_image_N+pixel_from_image_(N+1)
Additionally the type resulting from the sum, will be cast to the pixel type of the output image.
The total operation over one pixel will be
output_pixel=static_cast<OutputPixelType>(input_pixel_N+input_pixel_(N+1))
For example, this filter could be used directly for adding images whose pixels are vectors of the same dimension, and to store the resulting vector in an output image of vector pixels.
warning No numeric overflow checking is performed in this filter.

*/"
%javamethodmodifiers itk::simple::NaryAddImageFilter::execute() "
/**Pixel-wise addition of N images.

*/"
%javamethodmodifiers itk::simple::NaryAdd "/**
Pixel-wise addition of N images.

This class is templated over the types of the input images and the type of the output image. Numeric conversions (castings) are done by the C++ defaults.
The pixel type of the input images must have a valid definition of the operator+ with each other. This condition is required because internally this filter will perform the operation
pixel_from_image_N+pixel_from_image_(N+1)
Additionally the type resulting from the sum, will be cast to the pixel type of the output image.
The total operation over one pixel will be
output_pixel=static_cast<OutputPixelType>(input_pixel_N+input_pixel_(N+1))
For example, this filter could be used directly for adding images whose pixels are vectors of the same dimension, and to store the resulting vector in an output image of vector pixels.
warning No numeric overflow checking is performed in this filter.

*/"
// Generated for ClassName from /scratch/blowekamp/build/ITK-gerrit/Utilities/Doxygen/xml/classitk_1_1NaryMaximumImageFilter.xml
%typemap(javaimports) itk::simple::NaryMaximumImageFilter "/** Computes the pixel-wise maximum of several images.

This class is templated over the types of the input images and the type of the output image. Numeric conversions (castings) are done by the C++ defaults.
The pixel type of the output images must have a valid definition of the operator<. This condition is required because internally this filter will perform an operation similar to:
constOutputPixelTypequery_value=static_cast<OutputPixelType>(pixel_from_input_n);if(current_maximum<query_value){current_maximum=query_value;}(where current_maximum is also of type OutputPixelType)
for each of the n input images.
For example, this filter could be used directly to find a maximum projection of a series of images, often used in preliminary analysis of time-series data.
author Zachary Pincus
This filter was contributed by Zachary Pincus from the Department of Biochemistry and Program in Biomedical Informatics at Stanford University School of Medicine
*/"
%javamethodmodifiers itk::simple::NaryMaximumImageFilter::execute() "
/**Computes the pixel-wise maximum of several images.

*/"
%javamethodmodifiers itk::simple::NaryMaximum "/**
Computes the pixel-wise maximum of several images.

This class is templated over the types of the input images and the type of the output image. Numeric conversions (castings) are done by the C++ defaults.
The pixel type of the output images must have a valid definition of the operator<. This condition is required because internally this filter will perform an operation similar to:
constOutputPixelTypequery_value=static_cast<OutputPixelType>(pixel_from_input_n);if(current_maximum<query_value){current_maximum=query_value;}(where current_maximum is also of type OutputPixelType)
for each of the n input images.
For example, this filter could be used directly to find a maximum projection of a series of images, often used in preliminary analysis of time-series data.
author Zachary Pincus
This filter was contributed by Zachary Pincus from the Department of Biochemistry and Program in Biomedical Informatics at Stanford University School of Medicine
*/"
// Generated for ClassName from /scratch/blowekamp/build/ITK-gerrit/Utilities/Doxygen/xml/classitk_1_1NeighborhoodConnectedImageFilter.xml
%typemap(javaimports) itk::simple::NeighborhoodConnectedImageFilter "/** Label pixels that are connected to a seed and lie within a neighborhood.

 NeighborhoodConnectedImageFilterlabels pixels with ReplaceValue that are connected to an initial Seed AND whose neighbors all lie within a Lower and Upper threshold range.
*/"
%javamethodmodifiers itk::simple::NeighborhoodConnectedImageFilter::execute() "
/**Label pixels that are connected to a seed and lie within a neighborhood.

*/"
%javamethodmodifiers itk::simple::NeighborhoodConnected "/**
Label pixels that are connected to a seed and lie within a neighborhood.

 NeighborhoodConnectedImageFilterlabels pixels with ReplaceValue that are connected to an initial Seed AND whose neighbors all lie within a Lower and Upper threshold range.
*/"
%javamethodmodifiers itk::simple::NeighborhoodConnectedImageFilter::setLower "/**
virtual void itk::NeighborhoodConnectedImageFilter::SetLower(InputImagePixelType _arg)

Set/Get the lower threshold. The default is 0.
*/"

%javamethodmodifiers itk::simple::NeighborhoodConnectedImageFilter::getLower "/**
virtual InputImagePixelType itk::NeighborhoodConnectedImageFilter::GetLower() const

Set/Get the lower threshold. The default is 0.
*/"

%javamethodmodifiers itk::simple::NeighborhoodConnectedImageFilter::setUpper "/**
virtual void itk::NeighborhoodConnectedImageFilter::SetUpper(InputImagePixelType _arg)

Set/Get the upper threshold. The default is the largest possible value for the InputPixelType.
*/"

%javamethodmodifiers itk::simple::NeighborhoodConnectedImageFilter::getUpper "/**
virtual InputImagePixelType itk::NeighborhoodConnectedImageFilter::GetUpper() const

Set/Get the upper threshold. The default is the largest possible value for the InputPixelType.
*/"

%javamethodmodifiers itk::simple::NeighborhoodConnectedImageFilter::setRadius "/**
virtual void itk::NeighborhoodConnectedImageFilter::SetRadius(InputImageSizeType _arg)

Set the radius of the neighborhood used for a mask.
*/"

%javamethodmodifiers itk::simple::NeighborhoodConnectedImageFilter::getRadius "/**
virtual const InputImageSizeType& itk::NeighborhoodConnectedImageFilter::GetRadius()

Get the radius of the neighborhood used to compute the median
*/"

%javamethodmodifiers itk::simple::NeighborhoodConnectedImageFilter::setReplaceValue "/**
virtual void itk::NeighborhoodConnectedImageFilter::SetReplaceValue(OutputImagePixelType _arg)

Set/Get value to replace thresholded pixels. Pixels that lie * within Lower and Upper (inclusive) will be replaced with this value. The default is 1.
*/"

%javamethodmodifiers itk::simple::NeighborhoodConnectedImageFilter::getReplaceValue "/**
virtual OutputImagePixelType itk::NeighborhoodConnectedImageFilter::GetReplaceValue() const

Set/Get value to replace thresholded pixels. Pixels that lie * within Lower and Upper (inclusive) will be replaced with this value. The default is 1.
*/"

// Generated for ClassName from /scratch/blowekamp/build/ITK-gerrit/Utilities/Doxygen/xml/classitk_1_1NoiseImageFilter.xml
%typemap(javaimports) itk::simple::NoiseImageFilter "/** Calculate the local noise in an image.

Computes an image where a given pixel is the standard deviation of the pixels in a neighborhood about the corresponding input pixel. This serves as an estimate of the local noise (or texture) in an image. Currently, this noise estimate assume a piecewise constant image. This filter should be extended to fitting a (hyper) plane to the neighborhood and calculating the standard deviation of the residuals to this (hyper) plane.
see  Image
see 
see  Neighborhood
see 
see  NeighborhoodOperator
see 
see  NeighborhoodIterator
par Wiki Examples:

li All Examples

li Compute the local noise in an image

*/"
%javamethodmodifiers itk::simple::NoiseImageFilter::execute() "
/**Calculate the local noise in an image.

*/"
%javamethodmodifiers itk::simple::Noise "/**
Calculate the local noise in an image.

Computes an image where a given pixel is the standard deviation of the pixels in a neighborhood about the corresponding input pixel. This serves as an estimate of the local noise (or texture) in an image. Currently, this noise estimate assume a piecewise constant image. This filter should be extended to fitting a (hyper) plane to the neighborhood and calculating the standard deviation of the residuals to this (hyper) plane.
see  Image
see 
see  Neighborhood
see 
see  NeighborhoodOperator
see 
see  NeighborhoodIterator
par Wiki Examples:

li All Examples

li Compute the local noise in an image

*/"
// Generated for ClassName from /scratch/blowekamp/build/ITK-gerrit/Utilities/Doxygen/xml/classitk_1_1NormalizeImageFilter.xml
%typemap(javaimports) itk::simple::NormalizeImageFilter "/** Normalize an image by setting its mean to zero and variance to one.

 NormalizeImageFiltershifts and scales an image so that the pixels in the image have a zero mean and unit variance. This filter uses StatisticsImageFilterto compute the mean and variance of the input and then applies ShiftScaleImageFilterto shift and scale the pixels.
NB: since this filter normalizes the data to lie within -1 to 1, integral types will produce an image that DOES NOT HAVE a unit variance.
see  NormalizeToConstantImageFilter
par Wiki Examples:

li All Examples

li Normalize an image

*/"
%javamethodmodifiers itk::simple::NormalizeImageFilter::execute() "
/**Normalize an image by setting its mean to zero and variance to one.

*/"
%javamethodmodifiers itk::simple::Normalize "/**
Normalize an image by setting its mean to zero and variance to one.

 NormalizeImageFiltershifts and scales an image so that the pixels in the image have a zero mean and unit variance. This filter uses StatisticsImageFilterto compute the mean and variance of the input and then applies ShiftScaleImageFilterto shift and scale the pixels.
NB: since this filter normalizes the data to lie within -1 to 1, integral types will produce an image that DOES NOT HAVE a unit variance.
see  NormalizeToConstantImageFilter
par Wiki Examples:

li All Examples

li Normalize an image

*/"
// Generated for ClassName from /scratch/blowekamp/build/ITK-gerrit/Utilities/Doxygen/xml/classitk_1_1NormalizeToConstantImageFilter.xml
%typemap(javaimports) itk::simple::NormalizeToConstantImageFilter "/** Scales image pixel intensities to make the sum of all pixels equal a user-defined constant.

The default value of the constant is 1. It can be changed with SetConstant().
This transform is especially useful for normalizing a convolution kernel.
This code was contributed in the Insight Journal paper: FFT based
 convolution by Lehmann G.http://hdl.handle.net/10380/3154
author Gaetan Lehmann. Biologie du Developpement et de la Reproduction, INRA de Jouy-en-Josas, France.
see  NormalizeImageFilter
see 
see  StatisticsImageFilter
see 
see  DivideImageFilter
par Wiki Examples:

li All Examples

li Scale all pixels so that their sum is a specified constant

*/"
%javamethodmodifiers itk::simple::NormalizeToConstantImageFilter::execute() "
/**Scales image pixel intensities to make the sum of all pixels equal a user-defined constant.

*/"
%javamethodmodifiers itk::simple::NormalizeToConstant "/**
Scales image pixel intensities to make the sum of all pixels equal a user-defined constant.

The default value of the constant is 1. It can be changed with SetConstant().
This transform is especially useful for normalizing a convolution kernel.
This code was contributed in the Insight Journal paper: FFT based
 convolution by Lehmann G.http://hdl.handle.net/10380/3154
author Gaetan Lehmann. Biologie du Developpement et de la Reproduction, INRA de Jouy-en-Josas, France.
see  NormalizeImageFilter
see 
see  StatisticsImageFilter
see 
see  DivideImageFilter
par Wiki Examples:

li All Examples

li Scale all pixels so that their sum is a specified constant

*/"
%javamethodmodifiers itk::simple::NormalizeToConstantImageFilter::setConstant "/**
virtual void itk::NormalizeToConstantImageFilter::SetConstant(RealType _arg)

Set/get the normalization constant.
*/"

%javamethodmodifiers itk::simple::NormalizeToConstantImageFilter::getConstant "/**
virtual RealType itk::NormalizeToConstantImageFilter::GetConstant() const

Set/get the normalization constant.
*/"

// Generated for ClassName from /scratch/blowekamp/build/ITK-gerrit/Utilities/Doxygen/xml/classitk_1_1NotImageFilter.xml
%typemap(javaimports) itk::simple::NotImageFilter "/** Implements the NOT logical operator pixel-wise on an image.

This class is templated over the types of an input image and the type of the output image. Numeric conversions (castings) are done by the C++ defaults.
Since the logical NOT operation is only defined in C++ for integer types, the images passed to this filter must comply with the requirement of using integer pixel type.
The total operation over one pixel will be
output_pixel=static_cast<OutputPixelType>(!input_pixel)
Where ! is the unary NOT operator in C++.
*/"
%javamethodmodifiers itk::simple::NotImageFilter::execute() "
/**Implements the NOT logical operator pixel-wise on an image.

*/"
%javamethodmodifiers itk::simple::Not "/**
Implements the NOT logical operator pixel-wise on an image.

This class is templated over the types of an input image and the type of the output image. Numeric conversions (castings) are done by the C++ defaults.
Since the logical NOT operation is only defined in C++ for integer types, the images passed to this filter must comply with the requirement of using integer pixel type.
The total operation over one pixel will be
output_pixel=static_cast<OutputPixelType>(!input_pixel)
Where ! is the unary NOT operator in C++.
*/"
// Generated for ClassName from /scratch/blowekamp/build/ITK-gerrit/Utilities/Doxygen/xml/classitk_1_1OpeningByReconstructionImageFilter.xml
%typemap(javaimports) itk::simple::OpeningByReconstructionImageFilter "/** Opening by reconstruction of an image.

This filter preserves regions, in the foreground, that can completely contain the structuring element. At the same time, this filter eliminates all other regions of foreground pixels. Contrary to the mophological opening, the opening by reconstruction preserves the shape of the components that are not removed by erosion. The opening by reconstruction of an image f is defined as:
OpeningByReconstruction(f) = DilationByRecontruction(f, Erosion(f)).
Opening by reconstruction not only removes structures destroyed by the erosion, but also levels down the contrast of the brightest regions. If PreserveIntensities is on, a subsequent reconstruction by dilation using a marker image that is the original image for all unaffected pixels.
Opening by reconstruction is described in Chapter 6.3.9 of Pierre Soille's book Morphological Image Analysis: Principles and
 Applications, Second Edition, Springer, 2003.
author Gaetan Lehmann. Biologie du Developpement et de la Reproduction, INRA de Jouy-en-Josas, France.
see  GrayscaleMorphologicalOpeningImageFilter

*/"
%javamethodmodifiers itk::simple::OpeningByReconstructionImageFilter::execute() "
/**Opening by reconstruction of an image.

*/"
%javamethodmodifiers itk::simple::OpeningByReconstruction "/**
Opening by reconstruction of an image.

This filter preserves regions, in the foreground, that can completely contain the structuring element. At the same time, this filter eliminates all other regions of foreground pixels. Contrary to the mophological opening, the opening by reconstruction preserves the shape of the components that are not removed by erosion. The opening by reconstruction of an image f is defined as:
OpeningByReconstruction(f) = DilationByRecontruction(f, Erosion(f)).
Opening by reconstruction not only removes structures destroyed by the erosion, but also levels down the contrast of the brightest regions. If PreserveIntensities is on, a subsequent reconstruction by dilation using a marker image that is the original image for all unaffected pixels.
Opening by reconstruction is described in Chapter 6.3.9 of Pierre Soille's book Morphological Image Analysis: Principles and
 Applications, Second Edition, Springer, 2003.
author Gaetan Lehmann. Biologie du Developpement et de la Reproduction, INRA de Jouy-en-Josas, France.
see  GrayscaleMorphologicalOpeningImageFilter

*/"
%javamethodmodifiers itk::simple::OpeningByReconstructionImageFilter::setFullyConnected "/**
virtual void itk::OpeningByReconstructionImageFilter::SetFullyConnected(bool _arg)

Set/Get whether the connected components are defined strictly by face connectivity or by face+edge+vertex connectivity. Default is FullyConnectedOff. For objects that are 1 pixel wide, use FullyConnectedOn.
*/"

%javamethodmodifiers itk::simple::OpeningByReconstructionImageFilter::getFullyConnected "/**
virtual const bool& itk::OpeningByReconstructionImageFilter::GetFullyConnected()

Set/Get whether the connected components are defined strictly by face connectivity or by face+edge+vertex connectivity. Default is FullyConnectedOff. For objects that are 1 pixel wide, use FullyConnectedOn.
*/"

%javamethodmodifiers itk::simple::OpeningByReconstructionImageFilter::setPreserveIntensities "/**
virtual void itk::OpeningByReconstructionImageFilter::SetPreserveIntensities(bool _arg)

Set/Get whether the original intensities of the image retained for those pixels unaffected by the opening by reconstrcution. If Off, the output pixel contrast will be reduced.
*/"

%javamethodmodifiers itk::simple::OpeningByReconstructionImageFilter::getPreserveIntensities "/**
virtual const bool& itk::OpeningByReconstructionImageFilter::GetPreserveIntensities()

Set/Get whether the original intensities of the image retained for those pixels unaffected by the opening by reconstrcution. If Off, the output pixel contrast will be reduced.
*/"

// Generated for ClassName from /scratch/blowekamp/build/ITK-gerrit/Utilities/Doxygen/xml/classitk_1_1OrImageFilter.xml
%typemap(javaimports) itk::simple::OrImageFilter "/** Implements the OR logical operator pixel-wise between two images.

This class is templated over the types of the two input images and the type of the output image. Numeric conversions (castings) are done by the C++ defaults.
Since the logical OR operation is only defined in C++ for integer types, the images passed to this filter must comply with the requirement of using integer pixel type.
The total operation over one pixel will be
output_pixel=static_cast<OutputPixelType>(input1_pixel|input2_pixel)
Where | is the boolean OR operator in C++.
par Wiki Examples:

li All Examples

li Binary OR two images

*/"
%javamethodmodifiers itk::simple::OrImageFilter::execute() "
/**Implements the OR logical operator pixel-wise between two images.

*/"
%javamethodmodifiers itk::simple::Or "/**
Implements the OR logical operator pixel-wise between two images.

This class is templated over the types of the two input images and the type of the output image. Numeric conversions (castings) are done by the C++ defaults.
Since the logical OR operation is only defined in C++ for integer types, the images passed to this filter must comply with the requirement of using integer pixel type.
The total operation over one pixel will be
output_pixel=static_cast<OutputPixelType>(input1_pixel|input2_pixel)
Where | is the boolean OR operator in C++.
par Wiki Examples:

li All Examples

li Binary OR two images

*/"
// Generated for ClassName from /scratch/blowekamp/build/ITK-gerrit/Utilities/Doxygen/xml/classitk_1_1OtsuThresholdImageFilter.xml
%typemap(javaimports) itk::simple::OtsuThresholdImageFilter "/** Threshold an image using the Otsu Threshold.

This filter creates a binary thresholded image that separates an image into foreground and background components. The filter computes the threshold using the OtsuThresholdCalculatorand applies that theshold to the input image using the BinaryThresholdImageFilter.
author Richard Beare
Gaetan Lehmann. Biologie du Developpement et de la Reproduction, INRA de Jouy-en-Josas, France.
This implementation was taken from the Insight Journal paper:http://hdl.handle.net/10380/3279orhttp://www.insight-journal.org/browse/publication/811
par Wiki Examples:

li All Examples

li Separate foreground and background using Otsu's method
see HistogramThresholdImageFitler

*/"
%javamethodmodifiers itk::simple::OtsuThresholdImageFilter::execute() "
/**Threshold an image using the Otsu Threshold.

*/"
%javamethodmodifiers itk::simple::OtsuThreshold "/**
Threshold an image using the Otsu Threshold.

This filter creates a binary thresholded image that separates an image into foreground and background components. The filter computes the threshold using the OtsuThresholdCalculatorand applies that theshold to the input image using the BinaryThresholdImageFilter.
author Richard Beare
Gaetan Lehmann. Biologie du Developpement et de la Reproduction, INRA de Jouy-en-Josas, France.
This implementation was taken from the Insight Journal paper:http://hdl.handle.net/10380/3279orhttp://www.insight-journal.org/browse/publication/811
par Wiki Examples:

li All Examples

li Separate foreground and background using Otsu's method
see HistogramThresholdImageFitler

*/"
// Generated for ClassName from /scratch/blowekamp/build/ITK-gerrit/Utilities/Doxygen/xml/classitk_1_1PasteImageFilter.xml
%typemap(javaimports) itk::simple::PasteImageFilter "/** Paste an image into another image.

 PasteImageFilterallows you to take a section of one image and paste into another image. The SetDestinationIndex()method prescribes where in the first input to start pasting data from the second input. The SetSourceRegion method prescribes the section of the second image to paste into the first. If the output requested region does not have include the SourceRegion after it has been repositioned to DestinationIndex, then the output will just be a copy of the input.
The two inputs and output image will have the same pixel type.
par Wiki Examples:

li All Examples

li Paste a part of one image into another image

*/"
%javamethodmodifiers itk::simple::PasteImageFilter::execute() "
/**Paste an image into another image.

*/"
%javamethodmodifiers itk::simple::Paste "/**
Paste an image into another image.

 PasteImageFilterallows you to take a section of one image and paste into another image. The SetDestinationIndex()method prescribes where in the first input to start pasting data from the second input. The SetSourceRegion method prescribes the section of the second image to paste into the first. If the output requested region does not have include the SourceRegion after it has been repositioned to DestinationIndex, then the output will just be a copy of the input.
The two inputs and output image will have the same pixel type.
par Wiki Examples:

li All Examples

li Paste a part of one image into another image

*/"
%javamethodmodifiers itk::simple::PasteImageFilter::setDestinationIndex "/**
virtual void itk::PasteImageFilter::SetDestinationIndex(InputImageIndexType _arg)

Set/Get the destination index (where in the first input the second input will be pasted.
*/"

%javamethodmodifiers itk::simple::PasteImageFilter::getDestinationIndex "/**
virtual InputImageIndexType itk::PasteImageFilter::GetDestinationIndex() const

Set/Get the destination index (where in the first input the second input will be pasted.
*/"

// Generated for ClassName from /scratch/blowekamp/build/ITK-gerrit/Utilities/Doxygen/xml/classitk_1_1PermuteAxesImageFilter.xml
%typemap(javaimports) itk::simple::PermuteAxesImageFilter "/** Permutes the image axes according to a user specified order.

PermuateAxesImageFilter permutes the image axes according to a user specified order. The permutation order is set via method SetOrder( order ) where the input is an array of ImageDimension number of unsigned int. The elements of the array must be a rearrangment of the numbers from 0 to ImageDimension - 1.
The i-th axis of the output image corresponds with the order[i]-th axis of the input image.
The output meta image information (LargestPossibleRegion, spacing, origin) is computed by permuting the corresponding input meta information.
par Wiki Examples:

li All Examples

li Switch the axes of an image

*/"
%javamethodmodifiers itk::simple::PermuteAxesImageFilter::execute() "
/**Permutes the image axes according to a user specified order.

*/"
%javamethodmodifiers itk::simple::PermuteAxes "/**
Permutes the image axes according to a user specified order.

PermuateAxesImageFilter permutes the image axes according to a user specified order. The permutation order is set via method SetOrder( order ) where the input is an array of ImageDimension number of unsigned int. The elements of the array must be a rearrangment of the numbers from 0 to ImageDimension - 1.
The i-th axis of the output image corresponds with the order[i]-th axis of the input image.
The output meta image information (LargestPossibleRegion, spacing, origin) is computed by permuting the corresponding input meta information.
par Wiki Examples:

li All Examples

li Switch the axes of an image

*/"
%javamethodmodifiers itk::simple::PermuteAxesImageFilter::setOrder "/**
void itk::PermuteAxesImageFilter::SetOrder(const PermuteOrderArrayType &order)

Set the permutation order. The elements of order must be a rearrangement of the numbers from 0 to ImageDimension - 1.
*/"

%javamethodmodifiers itk::simple::PermuteAxesImageFilter::getOrder "/**
virtual const PermuteOrderArrayType& itk::PermuteAxesImageFilter::GetOrder()

Get the permutation order.
*/"

// Generated for ClassName from /scratch/blowekamp/build/ITK-gerrit/Utilities/Doxygen/xml/classitk_1_1PowImageFilter.xml
%typemap(javaimports) itk::simple::PowImageFilter "/** Computes the powers of 2 images.

This class is templated over the types of the two input images and the type of the output image. Numeric conversions (castings) are done by the C++ defaults.
The output of the pow function will be cast to the pixel type of the output image.
The total operation over one pixel will beoutput_pixel=static_cast<TOutput>(vcl_pow(static_cast<RealType>(A),static_cast<RealType>(B)));
The pow function can be applied to two images with the following: SetInput1(image1); SetInput2(image2);
Additionally, this filter can be used to raise every pixel of an image to a power of a constant by using SetInput1(image1); SetConstant2(constant);
*/"
%javamethodmodifiers itk::simple::PowImageFilter::execute() "
/**Computes the powers of 2 images.

*/"
%javamethodmodifiers itk::simple::Pow "/**
Computes the powers of 2 images.

This class is templated over the types of the two input images and the type of the output image. Numeric conversions (castings) are done by the C++ defaults.
The output of the pow function will be cast to the pixel type of the output image.
The total operation over one pixel will beoutput_pixel=static_cast<TOutput>(vcl_pow(static_cast<RealType>(A),static_cast<RealType>(B)));
The pow function can be applied to two images with the following: SetInput1(image1); SetInput2(image2);
Additionally, this filter can be used to raise every pixel of an image to a power of a constant by using SetInput1(image1); SetConstant2(constant);
*/"
// Generated for ClassName from /scratch/blowekamp/build/ITK-gerrit/Utilities/Doxygen/xml/classitk_1_1ProjectedLandweberDeconvolutionImageFilter.xml
%typemap(javaimports) itk::simple::ProjectedLandweberDeconvolutionImageFilter "/** Deconvolve an image using the projected Landweber deconvolution algorithm.

This filter performs the same calculation per iteration as the LandweberDeconvolutionImageFilter. However, at each iteration, negative pixels in the intermediate result are projected (set) to zero. This is useful if the solution is assumed to always be non-negative, which is the case when dealing with images formed by counting photons, for example.
This code was adapted from the Insight Journal contribution:
Deconvolution: infrastructure and reference algorithms by Gaetan Lehmannhttp://hdl.handle.net/10380/3207
author Gaetan Lehmann, Biologie du Developpement et de la Reproduction, INRA de Jouy-en-Josas, France
Cory Quammen, The University of North Carolina at Chapel Hill
see  IterativeDeconvolutionImageFilter
see 
see  RichardsonLucyDeconvolutionImageFilter
see 
see  LandweberDeconvolutionImageFilter

*/"
%javamethodmodifiers itk::simple::ProjectedLandweberDeconvolutionImageFilter::execute() "
/**Deconvolve an image using the projected Landweber deconvolution algorithm.

*/"
%javamethodmodifiers itk::simple::ProjectedLandweberDeconvolution "/**
Deconvolve an image using the projected Landweber deconvolution algorithm.

This filter performs the same calculation per iteration as the LandweberDeconvolutionImageFilter. However, at each iteration, negative pixels in the intermediate result are projected (set) to zero. This is useful if the solution is assumed to always be non-negative, which is the case when dealing with images formed by counting photons, for example.
This code was adapted from the Insight Journal contribution:
Deconvolution: infrastructure and reference algorithms by Gaetan Lehmannhttp://hdl.handle.net/10380/3207
author Gaetan Lehmann, Biologie du Developpement et de la Reproduction, INRA de Jouy-en-Josas, France
Cory Quammen, The University of North Carolina at Chapel Hill
see  IterativeDeconvolutionImageFilter
see 
see  RichardsonLucyDeconvolutionImageFilter
see 
see  LandweberDeconvolutionImageFilter

*/"
// Generated for ClassName from /scratch/blowekamp/build/ITK-gerrit/Utilities/Doxygen/xml/classitk_1_1RecursiveGaussianImageFilter.xml
%typemap(javaimports) itk::simple::RecursiveGaussianImageFilter "/** Base class for computing IIR convolution with an approximation of a Gaussian kernel.

 f[ frac{ 1 }{ sigma sqrt{ 2 pi } } exp{ left( - frac{x^2}{ 2 sigma^2 } right) } f]  
 RecursiveGaussianImageFilteris the base class for recursive filters that approximate convolution with the Gaussian kernel. This class implements the recursive filtering method proposed by R.Deriche in IEEE-PAMI Vol.12, No.1, January 1990, pp 78-87, Fast Algorithms for Low-Level Vision
Details of the implementation are described in the technical report: R. Deriche, Recursively Implementing The Gaussian and Its Derivatives, INRIA, 1993,ftp://ftp.inria.fr/INRIA/tech-reports/RR/RR-1893.ps.gz
Further improvements of the algorithm are described in: G. Farneback & C.-F. Westin, On Implementation of Recursive Gaussian
 Filters, so far unpublished.
As compared to itk::DiscreteGaussianImageFilter, this filter tends to be faster for large kernels, and it can take the derivative of the blurred image in one step. Also, note that we have itk::RecursiveGaussianImageFilter::SetSigma(), but itk::DiscreteGaussianImageFilter::SetVariance().
see  DiscreteGaussianImageFilter
par Wiki Examples:

li All Examples

li Find higher derivatives of an image

*/"
%javamethodmodifiers itk::simple::RecursiveGaussianImageFilter::execute() "
/**Base class for computing IIR convolution with an approximation of a Gaussian kernel.

*/"
%javamethodmodifiers itk::simple::RecursiveGaussian "/**
Base class for computing IIR convolution with an approximation of a Gaussian kernel.

 f[ frac{ 1 }{ sigma sqrt{ 2 pi } } exp{ left( - frac{x^2}{ 2 sigma^2 } right) } f]  
 RecursiveGaussianImageFilteris the base class for recursive filters that approximate convolution with the Gaussian kernel. This class implements the recursive filtering method proposed by R.Deriche in IEEE-PAMI Vol.12, No.1, January 1990, pp 78-87, Fast Algorithms for Low-Level Vision
Details of the implementation are described in the technical report: R. Deriche, Recursively Implementing The Gaussian and Its Derivatives, INRIA, 1993,ftp://ftp.inria.fr/INRIA/tech-reports/RR/RR-1893.ps.gz
Further improvements of the algorithm are described in: G. Farneback & C.-F. Westin, On Implementation of Recursive Gaussian
 Filters, so far unpublished.
As compared to itk::DiscreteGaussianImageFilter, this filter tends to be faster for large kernels, and it can take the derivative of the blurred image in one step. Also, note that we have itk::RecursiveGaussianImageFilter::SetSigma(), but itk::DiscreteGaussianImageFilter::SetVariance().
see  DiscreteGaussianImageFilter
par Wiki Examples:

li All Examples

li Find higher derivatives of an image

*/"
%javamethodmodifiers itk::simple::RecursiveGaussianImageFilter::setSigma "/**
virtual void itk::RecursiveGaussianImageFilter::SetSigma(ScalarRealType _arg)

Set/Get the Sigma, measured in world coordinates, of the Gaussian kernel. The default is 1.0.
*/"

%javamethodmodifiers itk::simple::RecursiveGaussianImageFilter::getSigma "/**
virtual ScalarRealType itk::RecursiveGaussianImageFilter::GetSigma() const

Set/Get the Sigma, measured in world coordinates, of the Gaussian kernel. The default is 1.0.
*/"

%javamethodmodifiers itk::simple::RecursiveGaussianImageFilter::setNormalizeAcrossScale "/**
virtual void itk::RecursiveGaussianImageFilter::SetNormalizeAcrossScale(bool _arg)

Set/Get the flag for normalizing the gaussian over scale-space.This flag enables the analysis of the differential shape of
 features independent of their size ( both pixels and physical
 size ). Following the notation of Tony Lindeberg:

 Let form#194 be the scale-space
 representation of image form#195
 where form#196 is
 the Gaussian function and form#197 denotes convolution. This
 is a change from above with form#198.

 Then the normalized derivative operator for normalized
 coordinates across scale is:
 f[ partial_xi = sqrt{t} partial_x f]  The resulting scaling factor is f[ sigma^N f]  where N is the order of the derivative.
When this flag is ON the filter will be normalized in such a way that the values of derivatives are not biased by the size of the object. That is to say the maximum value a feature reaches across scale is independent of the scale of the object.
For analyzing an image across scale-space you want to enable this flag. It is disabled by default.
note Not all scale space axioms are satisfied by this filter, some are only approximated. Particularly, at fine scales ( say less than 1 pixel ) other methods such as a discrete Gaussian kernel should be considered.

*/"

%javamethodmodifiers itk::simple::RecursiveGaussianImageFilter::getNormalizeAcrossScale "/**
virtual bool itk::RecursiveGaussianImageFilter::GetNormalizeAcrossScale() const

*/"

%javamethodmodifiers itk::simple::RecursiveGaussianImageFilter::setOrder "/**
virtual void itk::RecursiveGaussianImageFilter::SetOrder(OrderEnumType _arg)

Set/Get the Order of the Gaussian to convolve with.
li ZeroOrder is equivalent to convolving with a Gaussian. This is the default.
li FirstOrder is equivalent to convolving with the first derivative of a Gaussian.
li SecondOrder is equivalent to convolving with the second derivative of a Gaussian.

*/"

%javamethodmodifiers itk::simple::RecursiveGaussianImageFilter::getOrder "/**
virtual OrderEnumType itk::RecursiveGaussianImageFilter::GetOrder() const

Set/Get the Order of the Gaussian to convolve with.
li ZeroOrder is equivalent to convolving with a Gaussian. This is the default.
li FirstOrder is equivalent to convolving with the first derivative of a Gaussian.
li SecondOrder is equivalent to convolving with the second derivative of a Gaussian.

*/"

// Generated for ClassName from /scratch/blowekamp/build/ITK-gerrit/Utilities/Doxygen/xml/classitk_1_1RegionOfInterestImageFilter.xml
%typemap(javaimports) itk::simple::RegionOfInterestImageFilter "/** Extract a region of interest from the input image.

This filter produces an output image of the same dimension as the input image. The user specifies the region of the input image that will be contained in the output image. The origin coordinates of the output images will be computed in such a way that if mapped to physical space, the output image will overlay the input image with perfect registration. In other words, a registration process between the output image and the input image will return an identity transform.
If you are interested in changing the dimension of the image, you may want to consider the ExtractImageFilter. For example for extracting a 2D image from a slice of a 3D image.
The region to extract is set using the method SetRegionOfInterest.
see  ExtractImageFilter
par Wiki Examples:

li All Examples

li Extract a portion of an image (region of interest)

*/"
%javamethodmodifiers itk::simple::RegionOfInterestImageFilter::execute() "
/**Extract a region of interest from the input image.

*/"
%javamethodmodifiers itk::simple::RegionOfInterest "/**
Extract a region of interest from the input image.

This filter produces an output image of the same dimension as the input image. The user specifies the region of the input image that will be contained in the output image. The origin coordinates of the output images will be computed in such a way that if mapped to physical space, the output image will overlay the input image with perfect registration. In other words, a registration process between the output image and the input image will return an identity transform.
If you are interested in changing the dimension of the image, you may want to consider the ExtractImageFilter. For example for extracting a 2D image from a slice of a 3D image.
The region to extract is set using the method SetRegionOfInterest.
see  ExtractImageFilter
par Wiki Examples:

li All Examples

li Extract a portion of an image (region of interest)

*/"
// Generated for ClassName from /scratch/blowekamp/build/ITK-gerrit/Utilities/Doxygen/xml/classitk_1_1RegionalMaximaImageFilter.xml
%typemap(javaimports) itk::simple::RegionalMaximaImageFilter "/** Produce a binary image where foreground is the regional maxima of the input image.

Regional maxima are flat zones surrounded by pixels of lower value.
If the input image is constant, the entire image can be considered as a maxima or not. The desired behavior can be selected with the SetFlatIsMaxima()method.
author Gaetan Lehmann
This class was contributed to the Insight Journal by author Gaetan Lehmann. Biologie du Developpement et de la Reproduction, INRA de Jouy-en-Josas, France. The paper can be found athttp://hdl.handle.net/1926/153
see  ValuedRegionalMaximaImageFilter
see 
see  HConvexImageFilter
see 
see  RegionalMinimaImageFilter
par Wiki Examples:

li All Examples

li RegionalMaximaImageFilter

*/"
%javamethodmodifiers itk::simple::RegionalMaximaImageFilter::execute() "
/**Produce a binary image where foreground is the regional maxima of the input image.

*/"
%javamethodmodifiers itk::simple::RegionalMaxima "/**
Produce a binary image where foreground is the regional maxima of the input image.

Regional maxima are flat zones surrounded by pixels of lower value.
If the input image is constant, the entire image can be considered as a maxima or not. The desired behavior can be selected with the SetFlatIsMaxima()method.
author Gaetan Lehmann
This class was contributed to the Insight Journal by author Gaetan Lehmann. Biologie du Developpement et de la Reproduction, INRA de Jouy-en-Josas, France. The paper can be found athttp://hdl.handle.net/1926/153
see  ValuedRegionalMaximaImageFilter
see 
see  HConvexImageFilter
see 
see  RegionalMinimaImageFilter
par Wiki Examples:

li All Examples

li RegionalMaximaImageFilter

*/"
%javamethodmodifiers itk::simple::RegionalMaximaImageFilter::setBackgroundValue "/**
virtual void itk::RegionalMaximaImageFilter::SetBackgroundValue(OutputImagePixelType _arg)

Set/Get the value used as background in the output image. Defaults to NumericTraits<PixelType>::NonpositiveMin().
*/"

%javamethodmodifiers itk::simple::RegionalMaximaImageFilter::getBackgroundValue "/**
virtual OutputImagePixelType itk::RegionalMaximaImageFilter::GetBackgroundValue() const

Set/Get the value used as background in the output image. Defaults to NumericTraits<PixelType>::NonpositiveMin().
*/"

%javamethodmodifiers itk::simple::RegionalMaximaImageFilter::setForegroundValue "/**
virtual void itk::RegionalMaximaImageFilter::SetForegroundValue(OutputImagePixelType _arg)

Set/Get the value in the output image to consider as foreground. Defaults to maximum value of PixelType.
*/"

%javamethodmodifiers itk::simple::RegionalMaximaImageFilter::getForegroundValue "/**
virtual OutputImagePixelType itk::RegionalMaximaImageFilter::GetForegroundValue() const

Set/Get the value in the output image to consider as foreground. Defaults to maximum value of PixelType.
*/"

%javamethodmodifiers itk::simple::RegionalMaximaImageFilter::setFullyConnected "/**
virtual void itk::RegionalMaximaImageFilter::SetFullyConnected(bool _arg)

Set/Get whether the connected components are defined strictly by face connectivity or by face+edge+vertex connectivity. Default is FullyConnectedOff. For objects that are 1 pixel wide, use FullyConnectedOn.
*/"

%javamethodmodifiers itk::simple::RegionalMaximaImageFilter::getFullyConnected "/**
virtual bool itk::RegionalMaximaImageFilter::GetFullyConnected() const

Set/Get whether the connected components are defined strictly by face connectivity or by face+edge+vertex connectivity. Default is FullyConnectedOff. For objects that are 1 pixel wide, use FullyConnectedOn.
*/"

%javamethodmodifiers itk::simple::RegionalMaximaImageFilter::setFlatIsMaxima "/**
virtual void itk::RegionalMaximaImageFilter::SetFlatIsMaxima(bool _arg)

Set/Get wether a flat image must be considered as a maxima or not. Defaults to true.
*/"

%javamethodmodifiers itk::simple::RegionalMaximaImageFilter::getFlatIsMaxima "/**
virtual bool itk::RegionalMaximaImageFilter::GetFlatIsMaxima() const

Set/Get wether a flat image must be considered as a maxima or not. Defaults to true.
*/"

// Generated for ClassName from /scratch/blowekamp/build/ITK-gerrit/Utilities/Doxygen/xml/classitk_1_1RegionalMinimaImageFilter.xml
%typemap(javaimports) itk::simple::RegionalMinimaImageFilter "/** Produce a binary image where foreground is the regional minima of the input image.

Regional minima are flat zones surrounded by pixels of greater value.
If the input image is constant, the entire image can be considered as a minima or not. The SetFlatIsMinima()method let the user choose which behavior to use.
This class was contribtued to the Insight Journal byauthor Gaetan Lehmann. Biologie du Developpement et de la Reproduction, INRA de Jouy-en-Josas, France.http://hdl.handle.net/1926/153
 RegionalMaximaImageFilterMathematicalMorphologyImageFilters
see  ValuedRegionalMinimaImageFilter
see 
see  HConcaveImageFilter
par Wiki Examples:

li All Examples

li RegionalMinimaImageFilter

*/"
%javamethodmodifiers itk::simple::RegionalMinimaImageFilter::execute() "
/**Produce a binary image where foreground is the regional minima of the input image.

*/"
%javamethodmodifiers itk::simple::RegionalMinima "/**
Produce a binary image where foreground is the regional minima of the input image.

Regional minima are flat zones surrounded by pixels of greater value.
If the input image is constant, the entire image can be considered as a minima or not. The SetFlatIsMinima()method let the user choose which behavior to use.
This class was contribtued to the Insight Journal byauthor Gaetan Lehmann. Biologie du Developpement et de la Reproduction, INRA de Jouy-en-Josas, France.http://hdl.handle.net/1926/153
 RegionalMaximaImageFilterMathematicalMorphologyImageFilters
see  ValuedRegionalMinimaImageFilter
see 
see  HConcaveImageFilter
par Wiki Examples:

li All Examples

li RegionalMinimaImageFilter

*/"
%javamethodmodifiers itk::simple::RegionalMinimaImageFilter::setBackgroundValue "/**
virtual void itk::RegionalMinimaImageFilter::SetBackgroundValue(OutputImagePixelType _arg)

Set/Get the value used as background in the output image. Defaults to NumericTraits<PixelType>::NonpositiveMin().
*/"

%javamethodmodifiers itk::simple::RegionalMinimaImageFilter::getBackgroundValue "/**
virtual OutputImagePixelType itk::RegionalMinimaImageFilter::GetBackgroundValue() const

Set/Get the value used as background in the output image. Defaults to NumericTraits<PixelType>::NonpositiveMin().
*/"

%javamethodmodifiers itk::simple::RegionalMinimaImageFilter::setForegroundValue "/**
virtual void itk::RegionalMinimaImageFilter::SetForegroundValue(OutputImagePixelType _arg)

Set/Get the value in the output image to consider as foreground. Defaults to maximum value of PixelType.
*/"

%javamethodmodifiers itk::simple::RegionalMinimaImageFilter::getForegroundValue "/**
virtual OutputImagePixelType itk::RegionalMinimaImageFilter::GetForegroundValue() const

Set/Get the value in the output image to consider as foreground. Defaults to maximum value of PixelType.
*/"

%javamethodmodifiers itk::simple::RegionalMinimaImageFilter::setFullyConnected "/**
virtual void itk::RegionalMinimaImageFilter::SetFullyConnected(bool _arg)

Set/Get whether the connected components are defined strictly by face connectivity or by face+edge+vertex connectivity. Default is FullyConnectedOff. For objects that are 1 pixel wide, use FullyConnectedOn.
*/"

%javamethodmodifiers itk::simple::RegionalMinimaImageFilter::getFullyConnected "/**
virtual const bool& itk::RegionalMinimaImageFilter::GetFullyConnected()

Set/Get whether the connected components are defined strictly by face connectivity or by face+edge+vertex connectivity. Default is FullyConnectedOff. For objects that are 1 pixel wide, use FullyConnectedOn.
*/"

%javamethodmodifiers itk::simple::RegionalMinimaImageFilter::setFlatIsMinima "/**
virtual void itk::RegionalMinimaImageFilter::SetFlatIsMinima(bool _arg)

Set/Get wether a flat image must be considered as a minima or not. Defaults to true.
*/"

%javamethodmodifiers itk::simple::RegionalMinimaImageFilter::getFlatIsMinima "/**
virtual bool itk::RegionalMinimaImageFilter::GetFlatIsMinima() const

Set/Get wether a flat image must be considered as a minima or not. Defaults to true.
*/"

// Generated for ClassName from /scratch/blowekamp/build/ITK-gerrit/Utilities/Doxygen/xml/classitk_1_1RelabelComponentImageFilter.xml
%typemap(javaimports) itk::simple::RelabelComponentImageFilter "/** Relabel the components in an image such that consecutive labels are used.

 RelabelComponentImageFilterremaps the labels associated with the objects in an image (as from the output of ConnectedComponentImageFilter) such that the label numbers are consecutive with no gaps between the label numbers used. By default, the relabeling will also sort the labels based on the size of the object: the largest object will have label #1, the second largest will have label #2, etc.
Label #0 is assumed to be background is left unaltered by the relabeling.
 RelabelComponentImageFilteris typically used on the output of the ConnectedComponentImageFilterfor those applications that want to extract the largest object or the k largest objects. Any particular object can be extracted from the relabeled output using a BinaryThresholdImageFilter. A group of objects can be extracted from the relabled output using a ThresholdImageFilter.
Once all the objects are relabeled, the application can query the number of objects and the size of each object. Objectsizes are returned in a vector. The size of the background is not calculated. So the size of object #1 is GetSizeOfObjectsInPixels()[0], the size of object #2 is GetSizeOfObjectsInPixels()[1], etc.
If user sets a minimum object size, all objects with fewer pixelss than the minimum will be discarded, so that the number of objects reported will be only those remaining. The GetOriginalNumberOfObjects method can be called to find out how many objects were present before the small ones were discarded.
 RelabelComponentImageFiltercan be run as an in place filter, where it will overwrite its output. The default is run out of place (or generate a separate output). In place operation can be controlled via methods in the superclass, InPlaceImageFilter::InPlaceOn()and InPlaceImageFilter::InPlaceOff().
see  ConnectedComponentImageFilter, BinaryThresholdImageFilter, ThresholdImageFilter
par Wiki Examples:

li All Examples

li Assign contiguous labels to connected regions of an image

*/"
%javamethodmodifiers itk::simple::RelabelComponentImageFilter::execute() "
/**Relabel the components in an image such that consecutive labels are used.

*/"
%javamethodmodifiers itk::simple::RelabelComponent "/**
Relabel the components in an image such that consecutive labels are used.

 RelabelComponentImageFilterremaps the labels associated with the objects in an image (as from the output of ConnectedComponentImageFilter) such that the label numbers are consecutive with no gaps between the label numbers used. By default, the relabeling will also sort the labels based on the size of the object: the largest object will have label #1, the second largest will have label #2, etc.
Label #0 is assumed to be background is left unaltered by the relabeling.
 RelabelComponentImageFilteris typically used on the output of the ConnectedComponentImageFilterfor those applications that want to extract the largest object or the k largest objects. Any particular object can be extracted from the relabeled output using a BinaryThresholdImageFilter. A group of objects can be extracted from the relabled output using a ThresholdImageFilter.
Once all the objects are relabeled, the application can query the number of objects and the size of each object. Objectsizes are returned in a vector. The size of the background is not calculated. So the size of object #1 is GetSizeOfObjectsInPixels()[0], the size of object #2 is GetSizeOfObjectsInPixels()[1], etc.
If user sets a minimum object size, all objects with fewer pixelss than the minimum will be discarded, so that the number of objects reported will be only those remaining. The GetOriginalNumberOfObjects method can be called to find out how many objects were present before the small ones were discarded.
 RelabelComponentImageFiltercan be run as an in place filter, where it will overwrite its output. The default is run out of place (or generate a separate output). In place operation can be controlled via methods in the superclass, InPlaceImageFilter::InPlaceOn()and InPlaceImageFilter::InPlaceOff().
see  ConnectedComponentImageFilter, BinaryThresholdImageFilter, ThresholdImageFilter
par Wiki Examples:

li All Examples

li Assign contiguous labels to connected regions of an image

*/"
%javamethodmodifiers itk::simple::RelabelComponentImageFilter::setMinimumObjectSize "/**
virtual void itk::RelabelComponentImageFilter::SetMinimumObjectSize(ObjectSizeType _arg)

Set the minimum size in pixels for an object. All objects smaller than this size will be discarded and will not appear in the output label map. NumberOfObjects will count only the objects whose pixel counts are greater than or equal to the minimum size. Call GetOriginalNumberOfObjects to find out how many objects were present in the original label map.
*/"

%javamethodmodifiers itk::simple::RelabelComponentImageFilter::getMinimumObjectSize "/**
virtual ObjectSizeType itk::RelabelComponentImageFilter::GetMinimumObjectSize() const

Get the caller-defined minimum size of an object in pixels. If the caller has not set the minimum, 0 will be returned, which is to be interpreted as meaning that no minimum exists, and all objects in the original label map will be passed through to the output.
*/"

// Generated for ClassName from /scratch/blowekamp/build/ITK-gerrit/Utilities/Doxygen/xml/classitk_1_1RenyiEntropyThresholdImageFilter.xml
%typemap(javaimports) itk::simple::RenyiEntropyThresholdImageFilter "/** Threshold an image using the RenyiEntropy Threshold.

This filter creates a binary thresholded image that separates an image into foreground and background components. The filter computes the threshold using the RenyiEntropyThresholdCalculatorand applies that theshold to the input image using the BinaryThresholdImageFilter.
author Richard Beare. Department of Medicine, Monash University, Melbourne, Australia.
Gaetan Lehmann. Biologie du Developpement et de la Reproduction, INRA de Jouy-en-Josas, France.
This implementation was taken from the Insight Journal paper:http://hdl.handle.net/10380/3279orhttp://www.insight-journal.org/browse/publication/811
see HistogramThresholdImageFitler

*/"
%javamethodmodifiers itk::simple::RenyiEntropyThresholdImageFilter::execute() "
/**Threshold an image using the RenyiEntropy Threshold.

*/"
%javamethodmodifiers itk::simple::RenyiEntropyThreshold "/**
Threshold an image using the RenyiEntropy Threshold.

This filter creates a binary thresholded image that separates an image into foreground and background components. The filter computes the threshold using the RenyiEntropyThresholdCalculatorand applies that theshold to the input image using the BinaryThresholdImageFilter.
author Richard Beare. Department of Medicine, Monash University, Melbourne, Australia.
Gaetan Lehmann. Biologie du Developpement et de la Reproduction, INRA de Jouy-en-Josas, France.
This implementation was taken from the Insight Journal paper:http://hdl.handle.net/10380/3279orhttp://www.insight-journal.org/browse/publication/811
see HistogramThresholdImageFitler

*/"
// Generated for ClassName from /scratch/blowekamp/build/ITK-gerrit/Utilities/Doxygen/xml/classitk_1_1ResampleImageFilter.xml
%typemap(javaimports) itk::simple::ResampleImageFilter "/** Resample an image via a coordinate transform.

 ResampleImageFilterresamples an existing image through some coordinate transform, interpolating via some image function. The class is templated over the types of the input and output images.
Note that the choice of interpolator function can be important. This function is set via SetInterpolator(). The default is LinearInterpolateImageFunction<InputImageType, TInterpolatorPrecisionType>, which is reasonable for ordinary medical images. However, some synthetic images have pixels drawn from a finite prescribed set. An example would be a mask indicating the segmentation of a brain into a small number of tissue types. For such an image, one does not want to interpolate between different pixel values, and so NearestNeighborInterpolateImageFunction< InputImageType, TCoordRep > would be a better choice.
If an sample is taken from outside the image domain, the default behavior is to use a default pixel value. If different behavior is desired, an extrapolator function can be set with SetExtrapolator().
Output information (spacing, size and direction) for the output image should be set. This information has the normal defaults of unit spacing, zero origin and identity direction. Optionally, the output information can be obtained from a reference image. If the reference image is provided and UseReferenceImage is On, then the spacing, origin and direction of the reference image will be used.
Since this filter produces an image which is a different size than its input, it needs to override several of the methods defined in ProcessObjectin order to properly manage the pipeline execution model. In particular, this filter overrides ProcessObject::GenerateInputRequestedRegion()and ProcessObject::GenerateOutputInformation().
This filter is implemented as a multithreaded filter. It provides a ThreadedGenerateData()method for its implementation.warning For multithreading, the TransformPoint method of the user-designated coordinate transform must be threadsafe.
par Wiki Examples:

li All Examples

li Translate an image

li Upsampling an image

li Resample (stretch or compress) an image

*/"
%javamethodmodifiers itk::simple::ResampleImageFilter::execute() "
/**Resample an image via a coordinate transform.

*/"
%javamethodmodifiers itk::simple::Resample "/**
Resample an image via a coordinate transform.

 ResampleImageFilterresamples an existing image through some coordinate transform, interpolating via some image function. The class is templated over the types of the input and output images.
Note that the choice of interpolator function can be important. This function is set via SetInterpolator(). The default is LinearInterpolateImageFunction<InputImageType, TInterpolatorPrecisionType>, which is reasonable for ordinary medical images. However, some synthetic images have pixels drawn from a finite prescribed set. An example would be a mask indicating the segmentation of a brain into a small number of tissue types. For such an image, one does not want to interpolate between different pixel values, and so NearestNeighborInterpolateImageFunction< InputImageType, TCoordRep > would be a better choice.
If an sample is taken from outside the image domain, the default behavior is to use a default pixel value. If different behavior is desired, an extrapolator function can be set with SetExtrapolator().
Output information (spacing, size and direction) for the output image should be set. This information has the normal defaults of unit spacing, zero origin and identity direction. Optionally, the output information can be obtained from a reference image. If the reference image is provided and UseReferenceImage is On, then the spacing, origin and direction of the reference image will be used.
Since this filter produces an image which is a different size than its input, it needs to override several of the methods defined in ProcessObjectin order to properly manage the pipeline execution model. In particular, this filter overrides ProcessObject::GenerateInputRequestedRegion()and ProcessObject::GenerateOutputInformation().
This filter is implemented as a multithreaded filter. It provides a ThreadedGenerateData()method for its implementation.warning For multithreading, the TransformPoint method of the user-designated coordinate transform must be threadsafe.
par Wiki Examples:

li All Examples

li Translate an image

li Upsampling an image

li Resample (stretch or compress) an image

*/"
%javamethodmodifiers itk::simple::ResampleImageFilter::setSize "/**
virtual void itk::ResampleImageFilter::SetSize(SizeType _arg)

Set the size of the output image.
*/"

%javamethodmodifiers itk::simple::ResampleImageFilter::getSize "/**
virtual const SizeType& itk::ResampleImageFilter::GetSize()

Get the size of the output image.
*/"

%javamethodmodifiers itk::simple::ResampleImageFilter::setOutputOrigin "/**
virtual void itk::ResampleImageFilter::SetOutputOrigin(const double *values)

Set the output image origin.
*/"

%javamethodmodifiers itk::simple::ResampleImageFilter::getOutputOrigin "/**
virtual const OriginPointType& itk::ResampleImageFilter::GetOutputOrigin()

Get the output image origin.
*/"

%javamethodmodifiers itk::simple::ResampleImageFilter::setOutputSpacing "/**
virtual void itk::ResampleImageFilter::SetOutputSpacing(const double *values)

Set the output image spacing.
*/"

%javamethodmodifiers itk::simple::ResampleImageFilter::getOutputSpacing "/**
virtual const SpacingType& itk::ResampleImageFilter::GetOutputSpacing()

Get the output image spacing.
*/"

%javamethodmodifiers itk::simple::ResampleImageFilter::setOutputDirection "/**
virtual void itk::ResampleImageFilter::SetOutputDirection(DirectionType _arg)

Set the output direciton cosine matrix.
*/"

%javamethodmodifiers itk::simple::ResampleImageFilter::getOutputDirection "/**
virtual const DirectionType& itk::ResampleImageFilter::GetOutputDirection()

Set the output direciton cosine matrix.
*/"

%javamethodmodifiers itk::simple::ResampleImageFilter::setDefaultPixelValue "/**
virtual void itk::ResampleImageFilter::SetDefaultPixelValue(PixelType _arg)

Set the pixel value when a transformed pixel is outside of the image. The default default pixel value is 0.
*/"

%javamethodmodifiers itk::simple::ResampleImageFilter::getDefaultPixelValue "/**
virtual const PixelType& itk::ResampleImageFilter::GetDefaultPixelValue()

Get the pixel value when a transformed pixel is outside of the image
*/"

// Generated for ClassName from /scratch/blowekamp/build/ITK-gerrit/Utilities/Doxygen/xml/classitk_1_1RescaleIntensityImageFilter.xml
%typemap(javaimports) itk::simple::RescaleIntensityImageFilter "/** Applies a linear transformation to the intensity levels of the input Image.

 RescaleIntensityImageFilterapplies pixel-wise a linear transformation to the intensity values of input image pixels. The linear transformation is defined by the user in terms of the minimum and maximum values that the output image should have.
The following equation gives the mapping of the intensity values
par  f[ outputPixel = ( inputPixel - inputMin) cdot frac{(outputMax - outputMin )}{(inputMax - inputMin)} + outputMin f]  
All computations are performed in the precison of the input pixel's RealType. Before assigning the computed value to the output pixel.
NOTE: In this filter the minimum and maximum values of the input image are computed internally using the MinimumMaximumImageCalculator. Users are not supposed to set those values in this filter. If you need a filter where you can set the minimum and maximum values of the input, please use the IntensityWindowingImageFilter. If you want a filter that can use a user-defined linear transformation for the intensity, then please use the ShiftScaleImageFilter.
see  IntensityWindowingImageFilter
par Wiki Examples:

li All Examples

li Rescale the intensity values of an image to a specified range

*/"
%javamethodmodifiers itk::simple::RescaleIntensityImageFilter::execute() "
/**Applies a linear transformation to the intensity levels of the input Image.

*/"
%javamethodmodifiers itk::simple::RescaleIntensity "/**
Applies a linear transformation to the intensity levels of the input Image.

 RescaleIntensityImageFilterapplies pixel-wise a linear transformation to the intensity values of input image pixels. The linear transformation is defined by the user in terms of the minimum and maximum values that the output image should have.
The following equation gives the mapping of the intensity values
par  f[ outputPixel = ( inputPixel - inputMin) cdot frac{(outputMax - outputMin )}{(inputMax - inputMin)} + outputMin f]  
All computations are performed in the precison of the input pixel's RealType. Before assigning the computed value to the output pixel.
NOTE: In this filter the minimum and maximum values of the input image are computed internally using the MinimumMaximumImageCalculator. Users are not supposed to set those values in this filter. If you need a filter where you can set the minimum and maximum values of the input, please use the IntensityWindowingImageFilter. If you want a filter that can use a user-defined linear transformation for the intensity, then please use the ShiftScaleImageFilter.
see  IntensityWindowingImageFilter
par Wiki Examples:

li All Examples

li Rescale the intensity values of an image to a specified range

*/"
%javamethodmodifiers itk::simple::RescaleIntensityImageFilter::setOutputMinimum "/**
virtual void itk::RescaleIntensityImageFilter::SetOutputMinimum(OutputPixelType _arg)

*/"

%javamethodmodifiers itk::simple::RescaleIntensityImageFilter::getOutputMinimum "/**
virtual const OutputPixelType& itk::RescaleIntensityImageFilter::GetOutputMinimum()

*/"

%javamethodmodifiers itk::simple::RescaleIntensityImageFilter::setOutputMaximum "/**
virtual void itk::RescaleIntensityImageFilter::SetOutputMaximum(OutputPixelType _arg)

*/"

%javamethodmodifiers itk::simple::RescaleIntensityImageFilter::getOutputMaximum "/**
virtual const OutputPixelType& itk::RescaleIntensityImageFilter::GetOutputMaximum()

*/"

// Generated for ClassName from /scratch/blowekamp/build/ITK-gerrit/Utilities/Doxygen/xml/classitk_1_1RichardsonLucyDeconvolutionImageFilter.xml
%typemap(javaimports) itk::simple::RichardsonLucyDeconvolutionImageFilter "/** Deconvolve an image using the Richardson-Lucy deconvolution algorithm.

This filter implements the Richardson-Lucy deconvolution algorithm as defined in Bertero M and Boccacci P, Introduction to Inverse
 Problems in Imaging, 1998. The algorithm assumes that the input image has been formed by a linear shift-invariant system with a known kernel.
The Richardson-Lucy algorithm assumes that noise in the image follows a Poisson distribution and that the distribution for each pixel is independent of the other pixels.
This code was adapted from the Insight Journal contribution:
Deconvolution: infrastructure and reference algorithms by Gaetan Lehmannhttp://hdl.handle.net/10380/3207
author Gaetan Lehmann, Biologie du Developpement et de la Reproduction, INRA de Jouy-en-Josas, France
Cory Quammen, The University of North Carolina at Chapel Hill
see  IterativeDeconvolutionImageFilter
see 
see  LandweberDeconvolutionImageFilter
see 
see  ProjectedLandweberDeconvolutionImageFilter

*/"
%javamethodmodifiers itk::simple::RichardsonLucyDeconvolutionImageFilter::execute() "
/**Deconvolve an image using the Richardson-Lucy deconvolution algorithm.

*/"
%javamethodmodifiers itk::simple::RichardsonLucyDeconvolution "/**
Deconvolve an image using the Richardson-Lucy deconvolution algorithm.

This filter implements the Richardson-Lucy deconvolution algorithm as defined in Bertero M and Boccacci P, Introduction to Inverse
 Problems in Imaging, 1998. The algorithm assumes that the input image has been formed by a linear shift-invariant system with a known kernel.
The Richardson-Lucy algorithm assumes that noise in the image follows a Poisson distribution and that the distribution for each pixel is independent of the other pixels.
This code was adapted from the Insight Journal contribution:
Deconvolution: infrastructure and reference algorithms by Gaetan Lehmannhttp://hdl.handle.net/10380/3207
author Gaetan Lehmann, Biologie du Developpement et de la Reproduction, INRA de Jouy-en-Josas, France
Cory Quammen, The University of North Carolina at Chapel Hill
see  IterativeDeconvolutionImageFilter
see 
see  LandweberDeconvolutionImageFilter
see 
see  ProjectedLandweberDeconvolutionImageFilter

*/"
// Generated for ClassName from /scratch/blowekamp/build/ITK-gerrit/Utilities/Doxygen/xml/classitk_1_1STAPLEImageFilter.xml
%typemap(javaimports) itk::simple::STAPLEImageFilter "/** The STAPLE filter implements the Simultaneous Truth and Performance Level Estimation algorithm for generating ground truth volumes from a set of binary expert segmentations.

The STAPLE algorithm treats segmentation as a pixelwise classification, which leads to an averaging scheme that accounts for systematic biases in the behavior of experts in order to generate a fuzzy ground truth volume and simultaneous accuracy assessment of each expert. The ground truth volumes produced by this filter are floating point volumes of values between zero and one that indicate probability of each pixel being in the object targeted by the segmentation.
The STAPLE algorithm is described in
S. Warfield, K. Zou, W. Wells, Validation of image segmentation and expert
 quality with an expectation-maximization algorithm in MICCAI 2002: Fifth International Conference on Medical ImageComputing and Computer-Assisted Intervention, Springer-Verlag, Heidelberg, Germany, 2002, pp. 298-306
par INPUTS
Input volumes to the STAPLE filter must be binary segmentations of an image, that is, there must be a single foreground value that represents positively classified pixels (pixels that are considered to belong inside the segmentation). Any number of background pixel values may be present in the input images. You can, for example, input volumes with many different labels as long as the structure you are interested in creating ground truth for is consistently labeled among all input volumes. Pixel type of the input volumes does not matter. Specify the label value for positively classified pixels using SetForegroundValue. All other labels will be considered to be negatively classified pixels (background).
Input volumes must all contain the same size RequestedRegions.
par OUTPUTS
The STAPLE filter produces a single output volume with a range of floating point values from zero to one. IT IS VERY IMPORTANT TO INSTANTIATE THIS FILTER WITH A FLOATING POINT OUTPUT TYPE (floats or doubles). You may threshold the output above some probability threshold if you wish to produce a binary ground truth.
par PARAMETERS
The STAPLE algorithm requires a number of inputs. You may specify any number of input volumes using the SetInput(i, p_i) method, where i ranges from zero to N-1, N is the total number of input segmentations, and p_i is the SmartPointerto the i-th segmentation.
The SetConfidenceWeight parameter is a modifier for the prior probability that any pixel would be classified as inside the target object. This implementation of the STAPLE algorithm automatically calculates prior positive classification probability as the average fraction of the image volume filled by the target object in each input segmentation. The ConfidenceWeight parameter allows for scaling the of this default prior probability: if g_t is the prior probability that a pixel would be classified inside the target object, then g_t is set to g_t * ConfidenceWeight before iterating on the solution. In general ConfidenceWeight should be left to the default of 1.0.
You must provide a foreground value using SetForegroundValue that the STAPLE algorithm will use to identify positively classified pixels in the the input images. All other values in the image will be treated as background values. For example, if your input segmentations consist of 1's everywhere inside the segmented region, then use SetForegroundValue(1).
The STAPLE algorithm is an iterative E-M algorithm and will converge on a solution after some number of iterations that cannot be known a priori. After updating the filter, the total elapsed iterations taken to converge on the solution can be queried through GetElapsedIterations(). You may also specify a MaximumNumberOfIterations, after which the algorithm will stop iterating regardless of whether or not it has converged. This implementation of the STAPLE algorithm will find the solution to within seven digits of precision unless it is stopped early.
Once updated, the Sensitivity (true positive fraction, q) and Specificity (true negative fraction, q) for each expert input volume can be queried using GetSensitivity(i) and GetSpecificity(i), where i is the i-th input volume.
par REQUIRED PARAMETERS
The only required parameters for this filter are the ForegroundValue and the input volumes. All other parameters may be safely left to their default values. Please see the paper cited above for more information on the STAPLE algorithm and its parameters. A proper understanding of the algorithm is important for interpreting the results that it produces.
par EVENTS
This filter invokes IterationEvent() at each iteration of the E-M algorithm. Setting the AbortGenerateData() flag will cause the algorithm to halt after the current iteration and produce results just as if it had converged. The algorithm makes no attempt to report its progress since the number of iterations needed cannot be known in advance.

*/"
%javamethodmodifiers itk::simple::STAPLEImageFilter::execute() "
/**The STAPLE filter implements the Simultaneous Truth and Performance Level Estimation algorithm for generating ground truth volumes from a set of binary expert segmentations.

*/"
%javamethodmodifiers itk::simple::STAPLE "/**
The STAPLE filter implements the Simultaneous Truth and Performance Level Estimation algorithm for generating ground truth volumes from a set of binary expert segmentations.

The STAPLE algorithm treats segmentation as a pixelwise classification, which leads to an averaging scheme that accounts for systematic biases in the behavior of experts in order to generate a fuzzy ground truth volume and simultaneous accuracy assessment of each expert. The ground truth volumes produced by this filter are floating point volumes of values between zero and one that indicate probability of each pixel being in the object targeted by the segmentation.
The STAPLE algorithm is described in
S. Warfield, K. Zou, W. Wells, Validation of image segmentation and expert
 quality with an expectation-maximization algorithm in MICCAI 2002: Fifth International Conference on Medical ImageComputing and Computer-Assisted Intervention, Springer-Verlag, Heidelberg, Germany, 2002, pp. 298-306
par INPUTS
Input volumes to the STAPLE filter must be binary segmentations of an image, that is, there must be a single foreground value that represents positively classified pixels (pixels that are considered to belong inside the segmentation). Any number of background pixel values may be present in the input images. You can, for example, input volumes with many different labels as long as the structure you are interested in creating ground truth for is consistently labeled among all input volumes. Pixel type of the input volumes does not matter. Specify the label value for positively classified pixels using SetForegroundValue. All other labels will be considered to be negatively classified pixels (background).
Input volumes must all contain the same size RequestedRegions.
par OUTPUTS
The STAPLE filter produces a single output volume with a range of floating point values from zero to one. IT IS VERY IMPORTANT TO INSTANTIATE THIS FILTER WITH A FLOATING POINT OUTPUT TYPE (floats or doubles). You may threshold the output above some probability threshold if you wish to produce a binary ground truth.
par PARAMETERS
The STAPLE algorithm requires a number of inputs. You may specify any number of input volumes using the SetInput(i, p_i) method, where i ranges from zero to N-1, N is the total number of input segmentations, and p_i is the SmartPointerto the i-th segmentation.
The SetConfidenceWeight parameter is a modifier for the prior probability that any pixel would be classified as inside the target object. This implementation of the STAPLE algorithm automatically calculates prior positive classification probability as the average fraction of the image volume filled by the target object in each input segmentation. The ConfidenceWeight parameter allows for scaling the of this default prior probability: if g_t is the prior probability that a pixel would be classified inside the target object, then g_t is set to g_t * ConfidenceWeight before iterating on the solution. In general ConfidenceWeight should be left to the default of 1.0.
You must provide a foreground value using SetForegroundValue that the STAPLE algorithm will use to identify positively classified pixels in the the input images. All other values in the image will be treated as background values. For example, if your input segmentations consist of 1's everywhere inside the segmented region, then use SetForegroundValue(1).
The STAPLE algorithm is an iterative E-M algorithm and will converge on a solution after some number of iterations that cannot be known a priori. After updating the filter, the total elapsed iterations taken to converge on the solution can be queried through GetElapsedIterations(). You may also specify a MaximumNumberOfIterations, after which the algorithm will stop iterating regardless of whether or not it has converged. This implementation of the STAPLE algorithm will find the solution to within seven digits of precision unless it is stopped early.
Once updated, the Sensitivity (true positive fraction, q) and Specificity (true negative fraction, q) for each expert input volume can be queried using GetSensitivity(i) and GetSpecificity(i), where i is the i-th input volume.
par REQUIRED PARAMETERS
The only required parameters for this filter are the ForegroundValue and the input volumes. All other parameters may be safely left to their default values. Please see the paper cited above for more information on the STAPLE algorithm and its parameters. A proper understanding of the algorithm is important for interpreting the results that it produces.
par EVENTS
This filter invokes IterationEvent() at each iteration of the E-M algorithm. Setting the AbortGenerateData() flag will cause the algorithm to halt after the current iteration and produce results just as if it had converged. The algorithm makes no attempt to report its progress since the number of iterations needed cannot be known in advance.

*/"
%javamethodmodifiers itk::simple::STAPLEImageFilter::setConfidenceWeight "/**
virtual void itk::STAPLEImageFilter::SetConfidenceWeight(double _arg)

Scales the estimated prior probability that a pixel will be inside the targeted object of segmentation. The default prior probability g_t is calculated automatically as the average fraction of positively classified pixels to the total size of the volume (across all input volumes). ConfidenceWeight will scale this default value as g_t = g_t * ConfidenceWeight. In general, ConfidenceWeight should be left to the default of 1.0.
*/"

%javamethodmodifiers itk::simple::STAPLEImageFilter::getConfidenceWeight "/**
virtual double itk::STAPLEImageFilter::GetConfidenceWeight() const

Scales the estimated prior probability that a pixel will be inside the targeted object of segmentation. The default prior probability g_t is calculated automatically as the average fraction of positively classified pixels to the total size of the volume (across all input volumes). ConfidenceWeight will scale this default value as g_t = g_t * ConfidenceWeight. In general, ConfidenceWeight should be left to the default of 1.0.
*/"

%javamethodmodifiers itk::simple::STAPLEImageFilter::setForegroundValue "/**
virtual void itk::STAPLEImageFilter::SetForegroundValue(InputPixelType _arg)

Set get the binary ON value of the input image.
*/"

%javamethodmodifiers itk::simple::STAPLEImageFilter::getForegroundValue "/**
virtual InputPixelType itk::STAPLEImageFilter::GetForegroundValue() const

Set get the binary ON value of the input image.
*/"

%javamethodmodifiers itk::simple::STAPLEImageFilter::setMaximumIterations "/**
virtual void itk::STAPLEImageFilter::SetMaximumIterations(unsigned int _arg)

Set/Get the maximum number of iterations after which the STAPLE algorithm will be considered to have converged. In general this SHOULD NOT be set and the algorithm should be allowed to converge on its own.
*/"

%javamethodmodifiers itk::simple::STAPLEImageFilter::getMaximumIterations "/**
virtual unsigned int itk::STAPLEImageFilter::GetMaximumIterations() const

Set/Get the maximum number of iterations after which the STAPLE algorithm will be considered to have converged. In general this SHOULD NOT be set and the algorithm should be allowed to converge on its own.
*/"

// Generated for ClassName from /scratch/blowekamp/build/ITK-gerrit/Utilities/Doxygen/xml/classitk_1_1ScalarConnectedComponentImageFilter.xml
%typemap(javaimports) itk::simple::ScalarConnectedComponentImageFilter "/** A connected components filter that labels the objects in an arbitrary image. Two pixels are similar if they are within threshold of each other. Uses ConnectedComponentFunctorImageFilter.

par Wiki Examples:

li All Examples

li Label connected components in a grayscale image

*/"
%javamethodmodifiers itk::simple::ScalarConnectedComponentImageFilter::execute() "
/**A connected components filter that labels the objects in an arbitrary image. Two pixels are similar if they are within threshold of each other. Uses ConnectedComponentFunctorImageFilter.

*/"
%javamethodmodifiers itk::simple::ScalarConnectedComponent "/**
A connected components filter that labels the objects in an arbitrary image. Two pixels are similar if they are within threshold of each other. Uses ConnectedComponentFunctorImageFilter.

par Wiki Examples:

li All Examples

li Label connected components in a grayscale image

*/"
%javamethodmodifiers itk::simple::ScalarConnectedComponentImageFilter::setDistanceThreshold "/**
virtual void itk::ScalarConnectedComponentImageFilter::SetDistanceThreshold(const InputPixelType &thresh)

*/"

%javamethodmodifiers itk::simple::ScalarConnectedComponentImageFilter::getDistanceThreshold "/**
virtual InputPixelType itk::ScalarConnectedComponentImageFilter::GetDistanceThreshold()

*/"

// Generated for ClassName from /scratch/blowekamp/build/ITK-gerrit/Utilities/Doxygen/xml/classitk_1_1ScalarImageKmeansImageFilter.xml
%typemap(javaimports) itk::simple::ScalarImageKmeansImageFilter "/** Classifies the intensity values of a scalar image using the K-Means algorithm.

Given an input image with scalar values, it uses the K-Means statistical classifier in order to define labels for every pixel in the image. The filter is templated over the type of the input image. The output image is predefined as having the same dimension of the input image and pixel type unsigned char, under the assumption that the classifier will generate less than 256 classes.
You may want to look also at the RelabelImageFilter that may be used as a postprocessing stage, in particular if you are interested in ordering the labels by their relative size in number of pixels.
see  Image
see 
see  ImageKmeansModelEstimator
see 
see KdTreeBasedKmeansEstimator, WeightedCentroidKdTreeGenerator, KdTree
see 
see RelabelImageFilter
par Wiki Examples:

li All Examples

li Cluster the pixels in a greyscale image

*/"
%javamethodmodifiers itk::simple::ScalarImageKmeansImageFilter::execute() "
/**Classifies the intensity values of a scalar image using the K-Means algorithm.

*/"
%javamethodmodifiers itk::simple::ScalarImageKmeans "/**
Classifies the intensity values of a scalar image using the K-Means algorithm.

Given an input image with scalar values, it uses the K-Means statistical classifier in order to define labels for every pixel in the image. The filter is templated over the type of the input image. The output image is predefined as having the same dimension of the input image and pixel type unsigned char, under the assumption that the classifier will generate less than 256 classes.
You may want to look also at the RelabelImageFilter that may be used as a postprocessing stage, in particular if you are interested in ordering the labels by their relative size in number of pixels.
see  Image
see 
see  ImageKmeansModelEstimator
see 
see KdTreeBasedKmeansEstimator, WeightedCentroidKdTreeGenerator, KdTree
see 
see RelabelImageFilter
par Wiki Examples:

li All Examples

li Cluster the pixels in a greyscale image

*/"
%javamethodmodifiers itk::simple::ScalarImageKmeansImageFilter::setUseNonContiguousLabels "/**
virtual void itk::ScalarImageKmeansImageFilter::SetUseNonContiguousLabels(bool _arg)

Set/Get the UseNonContiguousLabels flag. When this is set to false the labels are numbered contiguously, like in {0,1,3..N}. When the flag is set to true, the labels are selected in order to span the dynamic range of the output image. This last option is useful when the output image is intended only for display. The default value is false.
*/"

%javamethodmodifiers itk::simple::ScalarImageKmeansImageFilter::getUseNonContiguousLabels "/**
virtual const bool& itk::ScalarImageKmeansImageFilter::GetUseNonContiguousLabels()

Set/Get the UseNonContiguousLabels flag. When this is set to false the labels are numbered contiguously, like in {0,1,3..N}. When the flag is set to true, the labels are selected in order to span the dynamic range of the output image. This last option is useful when the output image is intended only for display. The default value is false.
*/"

// Generated for ClassName from /scratch/blowekamp/build/ITK-gerrit/Utilities/Doxygen/xml/classitk_1_1ScalarToRGBColormapImageFilter.xml
%typemap(javaimports) itk::simple::ScalarToRGBColormapImageFilter "/** Implements pixel-wise intensity->rgb mapping operation on one image.

This class is parameterized over the type of the input image and the type of the output image.
The input image's scalar pixel values are mapped into a color map. The color map is specified by passing the SetColormap function one of the predefined maps. The following selects the Hot colormap:RGBFilterType::PointercolormapImageFilter= RGBFilterType::New();colormapImageFilter->SetColormap(RGBFilterType::Hot);
You can also specify a custom color map. This is done by creating a CustomColormapFunction, and then creating lists of values for the red, green, and blue channel. An example of setting the red channel of a colormap with only 2 colors is given below. The blue and green channels should be specified in the same manner.
//Createthecustomcolormaptypedef itk::Function::CustomColormapFunction<RealImageType::PixelType,RGBImageType::PixelType> ColormapType; ColormapType::Pointercolormap= ColormapType::New();//SetuptheredchannelofthecolormapColormapType::ChannelTyperedChannel;redChannel.push_back(0);redChannel.push_back(255);colormap->SetRedChannel(channel);
The range of values present in the input image is the range that is mapped to the entire range of colors.
This code was contributed in the Insight Journal paper: Meeting Andy Warhol Somewhere Over the Rainbow: RGB Colormapping and ITK by Tustison N., Zhang H., Lehmann G., Yushkevich P., Gee J.http://hdl.handle.net/1926/1452http://www.insight-journal.org/browse/publication/285
see BinaryFunctionImageFilter TernaryFunctionImageFilter
par Wiki Examples:

li All Examples

li Apply a color map to an image

*/"
%javamethodmodifiers itk::simple::ScalarToRGBColormapImageFilter::execute() "
/**Implements pixel-wise intensity->rgb mapping operation on one image.

*/"
%javamethodmodifiers itk::simple::ScalarToRGBColormap "/**
Implements pixel-wise intensity->rgb mapping operation on one image.

This class is parameterized over the type of the input image and the type of the output image.
The input image's scalar pixel values are mapped into a color map. The color map is specified by passing the SetColormap function one of the predefined maps. The following selects the Hot colormap:RGBFilterType::PointercolormapImageFilter= RGBFilterType::New();colormapImageFilter->SetColormap(RGBFilterType::Hot);
You can also specify a custom color map. This is done by creating a CustomColormapFunction, and then creating lists of values for the red, green, and blue channel. An example of setting the red channel of a colormap with only 2 colors is given below. The blue and green channels should be specified in the same manner.
//Createthecustomcolormaptypedef itk::Function::CustomColormapFunction<RealImageType::PixelType,RGBImageType::PixelType> ColormapType; ColormapType::Pointercolormap= ColormapType::New();//SetuptheredchannelofthecolormapColormapType::ChannelTyperedChannel;redChannel.push_back(0);redChannel.push_back(255);colormap->SetRedChannel(channel);
The range of values present in the input image is the range that is mapped to the entire range of colors.
This code was contributed in the Insight Journal paper: Meeting Andy Warhol Somewhere Over the Rainbow: RGB Colormapping and ITK by Tustison N., Zhang H., Lehmann G., Yushkevich P., Gee J.http://hdl.handle.net/1926/1452http://www.insight-journal.org/browse/publication/285
see BinaryFunctionImageFilter TernaryFunctionImageFilter
par Wiki Examples:

li All Examples

li Apply a color map to an image

*/"
%javamethodmodifiers itk::simple::ScalarToRGBColormapImageFilter::setColormap "/**
void itk::ScalarToRGBColormapImageFilter::SetColormap(ColormapEnumType)

*/"

%javamethodmodifiers itk::simple::ScalarToRGBColormapImageFilter::getColormap "/**
virtual ColormapType* itk::ScalarToRGBColormapImageFilter::GetColormap()

Set/Get the colormap object.
*/"

// Generated for ClassName from /scratch/blowekamp/build/ITK-gerrit/Utilities/Doxygen/xml/classitk_1_1ShanbhagThresholdImageFilter.xml
%typemap(javaimports) itk::simple::ShanbhagThresholdImageFilter "/** Threshold an image using the Shanbhag Threshold.

This filter creates a binary thresholded image that separates an image into foreground and background components. The filter computes the threshold using the ShanbhagThresholdCalculatorand applies that theshold to the input image using the BinaryThresholdImageFilter.
author Richard Beare. Department of Medicine, Monash University, Melbourne, Australia.
Gaetan Lehmann. Biologie du Developpement et de la Reproduction, INRA de Jouy-en-Josas, France.
This implementation was taken from the Insight Journal paper:http://hdl.handle.net/10380/3279orhttp://www.insight-journal.org/browse/publication/811
see HistogramThresholdImageFitler

*/"
%javamethodmodifiers itk::simple::ShanbhagThresholdImageFilter::execute() "
/**Threshold an image using the Shanbhag Threshold.

*/"
%javamethodmodifiers itk::simple::ShanbhagThreshold "/**
Threshold an image using the Shanbhag Threshold.

This filter creates a binary thresholded image that separates an image into foreground and background components. The filter computes the threshold using the ShanbhagThresholdCalculatorand applies that theshold to the input image using the BinaryThresholdImageFilter.
author Richard Beare. Department of Medicine, Monash University, Melbourne, Australia.
Gaetan Lehmann. Biologie du Developpement et de la Reproduction, INRA de Jouy-en-Josas, France.
This implementation was taken from the Insight Journal paper:http://hdl.handle.net/10380/3279orhttp://www.insight-journal.org/browse/publication/811
see HistogramThresholdImageFitler

*/"
// Generated for ClassName from /scratch/blowekamp/build/ITK-gerrit/Utilities/Doxygen/xml/classitk_1_1ShapeDetectionLevelSetImageFilter.xml
%typemap(javaimports) itk::simple::ShapeDetectionLevelSetImageFilter "/** Segments structures in images based on a user supplied edge potential map.

par IMPORTANT
The SegmentationLevelSetImageFilterclass and the ShapeDetectionLevelSetFunctionclass contain additional information necessary to gain full understanding of how to use this filter.
par OVERVIEW
This class is a level set method segmentation filter. An initial contour is propagated outwards (or inwards) until it ''sticks'' to the shape boundaries. This is done by using a level set speed function based on a user supplied edge potential map. This approach for segmentation follows that of Malladi et al (1995).
par INPUTS
This filter requires two inputs. The first input is a initial level set. The initial level set is a real image which contains the initial contour/surface as the zero level set. For example, a signed distance function from the initial contour/surface is typically used. Note that for this algorithm the initial contour has to be wholly within (or wholly outside) the structure to be segmented.
par The second input is the feature image. For this filter, this is the edge potential map. General characteristics of an edge potential map is that it has values close to zero in regions near the edges and values close to one inside the shape itself. Typically, the edge potential map is compute from the image gradient, for example:
 f[ g(I) = 1 / ( 1 + | (nabla * G)(I)| ) f]   f[ g(I) = exp^{-|(nabla * G)(I)|} f]  
wheref$ I f$ is image intensity andf$ (nabla * G) f$ is the derivative of Gaussian operator.
par See SegmentationLevelSetImageFilterand SparseFieldLevelSetImageFilterfor more information on Inputs.
par PARAMETERS
The PropagationScaling parameter can be used to switch from propagation outwards (POSITIVE scaling parameter) versus propagating inwards (NEGATIVE scaling parameter).
The smoothness of the resulting contour/surface can be adjusted using a combination of PropagationScaling and CurvatureScaling parameters. The larger the CurvatureScaling parameter, the smoother the resulting contour. The CurvatureScaling parameter should be non-negative for proper operation of this algorithm. To follow the implementation in Malladi et al paper, set the PropagtionScaling tof$pm 1.0f$ and CurvatureScaling tof$ epsilon f$ .
Note that there is no advection term for this filter. Setting the advection scaling will have no effect.
par OUTPUTS
The filter outputs a single, scalar, real-valued image. Negative values in the output image represent the inside of the segmentated region and positive values in the image represent the outside of the segmented region. The zero crossings of the image correspond to the position of the propagating front.
par See SparseFieldLevelSetImageFilterand SegmentationLevelSetImageFilterfor more information.
par REFERENCES
par Shape Modeling with Front Propagation: A Level Set Approach, R. Malladi, J. A. Sethian and B. C. Vermuri. IEEE Trans. on Pattern Analysis and Machine Intelligence, Vol 17, No. 2, pp 158-174, February 1995
see  SegmentationLevelSetImageFilter
see 
see  ShapeDetectionLevelSetFunction
see 
see  SparseFieldLevelSetImageFilter

*/"
%javamethodmodifiers itk::simple::ShapeDetectionLevelSetImageFilter::execute() "
/**Segments structures in images based on a user supplied edge potential map.

*/"
%javamethodmodifiers itk::simple::ShapeDetectionLevelSet "/**
Segments structures in images based on a user supplied edge potential map.

par IMPORTANT
The SegmentationLevelSetImageFilterclass and the ShapeDetectionLevelSetFunctionclass contain additional information necessary to gain full understanding of how to use this filter.
par OVERVIEW
This class is a level set method segmentation filter. An initial contour is propagated outwards (or inwards) until it ''sticks'' to the shape boundaries. This is done by using a level set speed function based on a user supplied edge potential map. This approach for segmentation follows that of Malladi et al (1995).
par INPUTS
This filter requires two inputs. The first input is a initial level set. The initial level set is a real image which contains the initial contour/surface as the zero level set. For example, a signed distance function from the initial contour/surface is typically used. Note that for this algorithm the initial contour has to be wholly within (or wholly outside) the structure to be segmented.
par The second input is the feature image. For this filter, this is the edge potential map. General characteristics of an edge potential map is that it has values close to zero in regions near the edges and values close to one inside the shape itself. Typically, the edge potential map is compute from the image gradient, for example:
 f[ g(I) = 1 / ( 1 + | (nabla * G)(I)| ) f]   f[ g(I) = exp^{-|(nabla * G)(I)|} f]  
wheref$ I f$ is image intensity andf$ (nabla * G) f$ is the derivative of Gaussian operator.
par See SegmentationLevelSetImageFilterand SparseFieldLevelSetImageFilterfor more information on Inputs.
par PARAMETERS
The PropagationScaling parameter can be used to switch from propagation outwards (POSITIVE scaling parameter) versus propagating inwards (NEGATIVE scaling parameter).
The smoothness of the resulting contour/surface can be adjusted using a combination of PropagationScaling and CurvatureScaling parameters. The larger the CurvatureScaling parameter, the smoother the resulting contour. The CurvatureScaling parameter should be non-negative for proper operation of this algorithm. To follow the implementation in Malladi et al paper, set the PropagtionScaling tof$pm 1.0f$ and CurvatureScaling tof$ epsilon f$ .
Note that there is no advection term for this filter. Setting the advection scaling will have no effect.
par OUTPUTS
The filter outputs a single, scalar, real-valued image. Negative values in the output image represent the inside of the segmentated region and positive values in the image represent the outside of the segmented region. The zero crossings of the image correspond to the position of the propagating front.
par See SparseFieldLevelSetImageFilterand SegmentationLevelSetImageFilterfor more information.
par REFERENCES
par Shape Modeling with Front Propagation: A Level Set Approach, R. Malladi, J. A. Sethian and B. C. Vermuri. IEEE Trans. on Pattern Analysis and Machine Intelligence, Vol 17, No. 2, pp 158-174, February 1995
see  SegmentationLevelSetImageFilter
see 
see  ShapeDetectionLevelSetFunction
see 
see  SparseFieldLevelSetImageFilter

*/"
// Generated for ClassName from /scratch/blowekamp/build/ITK-gerrit/Utilities/Doxygen/xml/classitk_1_1ShiftScaleImageFilter.xml
%typemap(javaimports) itk::simple::ShiftScaleImageFilter "/** Shift and scale the pixels in an image.

 ShiftScaleImageFiltershifts the input pixel by Shift (default 0.0) and then scales the pixel by Scale (default 1.0). All computattions are performed in the precison of the input pixel's RealType. Before assigning the computed value to the output pixel, the value is clamped at the NonpositiveMin and max of the pixel type.
*/"
%javamethodmodifiers itk::simple::ShiftScaleImageFilter::execute() "
/**Shift and scale the pixels in an image.

*/"
%javamethodmodifiers itk::simple::ShiftScale "/**
Shift and scale the pixels in an image.

 ShiftScaleImageFiltershifts the input pixel by Shift (default 0.0) and then scales the pixel by Scale (default 1.0). All computattions are performed in the precison of the input pixel's RealType. Before assigning the computed value to the output pixel, the value is clamped at the NonpositiveMin and max of the pixel type.
*/"
%javamethodmodifiers itk::simple::ShiftScaleImageFilter::setShift "/**
virtual void itk::ShiftScaleImageFilter::SetShift(RealType _arg)

Set/Get the amount to Shift each Pixel. The shift is followed by a Scale.
*/"

%javamethodmodifiers itk::simple::ShiftScaleImageFilter::getShift "/**
virtual RealType itk::ShiftScaleImageFilter::GetShift() const

Set/Get the amount to Shift each Pixel. The shift is followed by a Scale.
*/"

%javamethodmodifiers itk::simple::ShiftScaleImageFilter::setScale "/**
virtual void itk::ShiftScaleImageFilter::SetScale(RealType _arg)

Set/Get the amount to Scale each Pixel. The Scale is applied after the Shift.
*/"

%javamethodmodifiers itk::simple::ShiftScaleImageFilter::getScale "/**
virtual RealType itk::ShiftScaleImageFilter::GetScale() const

Set/Get the amount to Scale each Pixel. The Scale is applied after the Shift.
*/"

// Generated for ClassName from /scratch/blowekamp/build/ITK-gerrit/Utilities/Doxygen/xml/classitk_1_1ShrinkImageFilter.xml
%typemap(javaimports) itk::simple::ShrinkImageFilter "/** Reduce the size of an image by an integer factor in each dimension.

 ShrinkImageFilterreduces the size of an image by an integer factor in each dimension. The algorithm implemented is a simple subsample. The output image size in each dimension is given by:
outputSize[j] = max( vcl_floor(inputSize[j]/shrinkFactor[j]), 1 );
NOTE: The physical centers of the input and output will be the same. Because of this, the Origin of the output may not be the same as the Origin of the input. Since this filter produces an image which is a different resolution, origin and with different pixel spacing than its input image, it needs to override several of the methods defined in ProcessObjectin order to properly manage the pipeline execution model. In particular, this filter overrides ProcessObject::GenerateInputRequestedRegion()and ProcessObject::GenerateOutputInformation().
This filter is implemented as a multithreaded filter. It provides a ThreadedGenerateData()method for its implementation.
par Wiki Examples:

li All Examples

li Shrink an image

*/"
%javamethodmodifiers itk::simple::ShrinkImageFilter::execute() "
/**Reduce the size of an image by an integer factor in each dimension.

*/"
%javamethodmodifiers itk::simple::Shrink "/**
Reduce the size of an image by an integer factor in each dimension.

 ShrinkImageFilterreduces the size of an image by an integer factor in each dimension. The algorithm implemented is a simple subsample. The output image size in each dimension is given by:
outputSize[j] = max( vcl_floor(inputSize[j]/shrinkFactor[j]), 1 );
NOTE: The physical centers of the input and output will be the same. Because of this, the Origin of the output may not be the same as the Origin of the input. Since this filter produces an image which is a different resolution, origin and with different pixel spacing than its input image, it needs to override several of the methods defined in ProcessObjectin order to properly manage the pipeline execution model. In particular, this filter overrides ProcessObject::GenerateInputRequestedRegion()and ProcessObject::GenerateOutputInformation().
This filter is implemented as a multithreaded filter. It provides a ThreadedGenerateData()method for its implementation.
par Wiki Examples:

li All Examples

li Shrink an image

*/"
%javamethodmodifiers itk::simple::ShrinkImageFilter::setShrinkFactors "/**
void itk::ShrinkImageFilter::SetShrinkFactors(unsigned int factor)

Set the shrink factors. Values are clamped to a minimum value of 1. Default is 1 for all dimensions.
*/"

%javamethodmodifiers itk::simple::ShrinkImageFilter::getShrinkFactors "/**
virtual const ShrinkFactorsType& itk::ShrinkImageFilter::GetShrinkFactors()

Get the shrink factors.
*/"

// Generated for ClassName from /scratch/blowekamp/build/ITK-gerrit/Utilities/Doxygen/xml/classitk_1_1SigmoidImageFilter.xml
%typemap(javaimports) itk::simple::SigmoidImageFilter "/** Computes the sigmoid function pixel-wise.

A linear transformation is applied first on the argument of the sigmoid fuction. The resulting total transfrom is given by
 f[ f(x) = (Max-Min) cdot frac{1}{left(1+e^{- frac{ x - beta }{alpha}}right)} + Min f]  
Every output pixel is equal to f(x). Where x is the intensity of the homologous input pixel, and alpha and beta are user-provided constants.
par Wiki Examples:

li All Examples

li Pass image pixels through a sigmoid function

*/"
%javamethodmodifiers itk::simple::SigmoidImageFilter::execute() "
/**Computes the sigmoid function pixel-wise.

*/"
%javamethodmodifiers itk::simple::Sigmoid "/**
Computes the sigmoid function pixel-wise.

A linear transformation is applied first on the argument of the sigmoid fuction. The resulting total transfrom is given by
 f[ f(x) = (Max-Min) cdot frac{1}{left(1+e^{- frac{ x - beta }{alpha}}right)} + Min f]  
Every output pixel is equal to f(x). Where x is the intensity of the homologous input pixel, and alpha and beta are user-provided constants.
par Wiki Examples:

li All Examples

li Pass image pixels through a sigmoid function

*/"
%javamethodmodifiers itk::simple::SigmoidImageFilter::setAlpha "/**
void itk::SigmoidImageFilter::SetAlpha(double alpha)

*/"

%javamethodmodifiers itk::simple::SigmoidImageFilter::setBeta "/**
void itk::SigmoidImageFilter::SetBeta(double beta)

*/"

%javamethodmodifiers itk::simple::SigmoidImageFilter::setOutputMaximum "/**
void itk::SigmoidImageFilter::SetOutputMaximum(OutputPixelType max)

*/"

%javamethodmodifiers itk::simple::SigmoidImageFilter::setOutputMinimum "/**
void itk::SigmoidImageFilter::SetOutputMinimum(OutputPixelType min)

*/"

// Generated for ClassName from /scratch/blowekamp/build/ITK-gerrit/Utilities/Doxygen/xml/classitk_1_1SignedDanielssonDistanceMapImageFilter.xml
%typemap(javaimports) itk::simple::SignedDanielssonDistanceMapImageFilter "/** 
This class is parametrized over the type of the input image and the type of the output image.
This filter computes the distance map of the input image as an approximation with pixel accuracy to the Euclidean distance.
For purposes of evaluating the signed distance map, the input is assumed to be binary composed of pixels with value 0 and non-zero.
The inside is considered as having negative distances. Outside is treated as having positive distances. To change the convention, use the InsideIsPositive(bool) function.
As a convention, the distance is evaluated from the boundary of the ON pixels.
The filter returns
li A signed distance map with the approximation to the euclidean distance.
li A voronoi partition. (See itkDanielssonDistanceMapImageFilter)
li A vector map containing the component of the vector relating the current pixel with the closest point of the closest object to this pixel. Given that the components of the distance are computed in pixels, the vector is represented by an itk::Offset. That is, physical coordinates are not used. (See itkDanielssonDistanceMapImageFilter)

This filter internally uses the DanielssonDistanceMap filter. This filter is N-dimensional.
see itkDanielssonDistanceMapImageFilter

*/"
%javamethodmodifiers itk::simple::SignedDanielssonDistanceMapImageFilter::execute() "
/**
*/"
%javamethodmodifiers itk::simple::SignedDanielssonDistanceMap "/**

This class is parametrized over the type of the input image and the type of the output image.
This filter computes the distance map of the input image as an approximation with pixel accuracy to the Euclidean distance.
For purposes of evaluating the signed distance map, the input is assumed to be binary composed of pixels with value 0 and non-zero.
The inside is considered as having negative distances. Outside is treated as having positive distances. To change the convention, use the InsideIsPositive(bool) function.
As a convention, the distance is evaluated from the boundary of the ON pixels.
The filter returns
li A signed distance map with the approximation to the euclidean distance.
li A voronoi partition. (See itkDanielssonDistanceMapImageFilter)
li A vector map containing the component of the vector relating the current pixel with the closest point of the closest object to this pixel. Given that the components of the distance are computed in pixels, the vector is represented by an itk::Offset. That is, physical coordinates are not used. (See itkDanielssonDistanceMapImageFilter)

This filter internally uses the DanielssonDistanceMap filter. This filter is N-dimensional.
see itkDanielssonDistanceMapImageFilter

*/"
%javamethodmodifiers itk::simple::SignedDanielssonDistanceMapImageFilter::setInsideIsPositive "/**
virtual void itk::SignedDanielssonDistanceMapImageFilter::SetInsideIsPositive(bool _arg)

Set if the inside represents positive values in the signed distance map. By convention ON pixels are treated as inside pixels.
*/"

%javamethodmodifiers itk::simple::SignedDanielssonDistanceMapImageFilter::getInsideIsPositive "/**
virtual const bool& itk::SignedDanielssonDistanceMapImageFilter::GetInsideIsPositive()

Get if the inside represents positive values in the signed distance map. See GetInsideIsPositive()
*/"

%javamethodmodifiers itk::simple::SignedDanielssonDistanceMapImageFilter::setSquaredDistance "/**
virtual void itk::SignedDanielssonDistanceMapImageFilter::SetSquaredDistance(bool _arg)

Set if the distance should be squared.
*/"

%javamethodmodifiers itk::simple::SignedDanielssonDistanceMapImageFilter::getSquaredDistance "/**
virtual const bool& itk::SignedDanielssonDistanceMapImageFilter::GetSquaredDistance()

Get the distance squared.
*/"

%javamethodmodifiers itk::simple::SignedDanielssonDistanceMapImageFilter::setUseImageSpacing "/**
virtual void itk::SignedDanielssonDistanceMapImageFilter::SetUseImageSpacing(bool _arg)

Set if image spacing should be used in computing distances.
*/"

%javamethodmodifiers itk::simple::SignedDanielssonDistanceMapImageFilter::getUseImageSpacing "/**
virtual const bool& itk::SignedDanielssonDistanceMapImageFilter::GetUseImageSpacing()

Get whether spacing is used.
*/"

// Generated for ClassName from /scratch/blowekamp/build/ITK-gerrit/Utilities/Doxygen/xml/classitk_1_1SignedMaurerDistanceMapImageFilter.xml
%typemap(javaimports) itk::simple::SignedMaurerDistanceMapImageFilter "/** This filter calculates the Euclidean distance transform of a binary image in linear time for arbitrary dimensions.

par Inputs and Outputs
This is an image-to-image filter. The dimensionality is arbitrary. The only dimensionality constraint is that the input and output images be of the same dimensions and size. To maintain integer arithmetic within the filter, the default output is the signed squared distance. This implies that the input image should be of type unsigned int or int whereas the output image is of type int. Obviously, if the user wishes to utilize the image spacing or to have a filter with the Euclidean distance (as opposed to the squared distance), output image types of float or double should be used.
The inside is considered as having negative distances. Outside is treated as having positive distances. To change the convention, use the InsideIsPositive(bool) function.
par Parameters
Set/GetBackgroundValue specifies the background of the value of the input binary image. Normally this is zero and, as such, zero is the default value. Other than that, the usage is completely analogous to the itk::DanielssonDistanceImageFilter class except it does not return the Voronoi map.
Reference: C. R. Maurer, Jr., R. Qi, and V. Raghavan, A Linear Time Algorithm for Computing Exact Euclidean Distance Transforms of Binary Images in Arbitrary Dimensions, IEEE - Transactions on Pattern Analysis and Machine Intelligence, 25(2): 265-270, 2003.
*/"
%javamethodmodifiers itk::simple::SignedMaurerDistanceMapImageFilter::execute() "
/**This filter calculates the Euclidean distance transform of a binary image in linear time for arbitrary dimensions.

*/"
%javamethodmodifiers itk::simple::SignedMaurerDistanceMap "/**
This filter calculates the Euclidean distance transform of a binary image in linear time for arbitrary dimensions.

par Inputs and Outputs
This is an image-to-image filter. The dimensionality is arbitrary. The only dimensionality constraint is that the input and output images be of the same dimensions and size. To maintain integer arithmetic within the filter, the default output is the signed squared distance. This implies that the input image should be of type unsigned int or int whereas the output image is of type int. Obviously, if the user wishes to utilize the image spacing or to have a filter with the Euclidean distance (as opposed to the squared distance), output image types of float or double should be used.
The inside is considered as having negative distances. Outside is treated as having positive distances. To change the convention, use the InsideIsPositive(bool) function.
par Parameters
Set/GetBackgroundValue specifies the background of the value of the input binary image. Normally this is zero and, as such, zero is the default value. Other than that, the usage is completely analogous to the itk::DanielssonDistanceImageFilter class except it does not return the Voronoi map.
Reference: C. R. Maurer, Jr., R. Qi, and V. Raghavan, A Linear Time Algorithm for Computing Exact Euclidean Distance Transforms of Binary Images in Arbitrary Dimensions, IEEE - Transactions on Pattern Analysis and Machine Intelligence, 25(2): 265-270, 2003.
*/"
%javamethodmodifiers itk::simple::SignedMaurerDistanceMapImageFilter::setInsideIsPositive "/**
virtual void itk::SignedMaurerDistanceMapImageFilter::SetInsideIsPositive(bool _arg)

Set if the inside represents positive values in the signed distance map. By convention ON pixels are treated as inside pixels.
*/"

%javamethodmodifiers itk::simple::SignedMaurerDistanceMapImageFilter::getInsideIsPositive "/**
virtual const bool& itk::SignedMaurerDistanceMapImageFilter::GetInsideIsPositive()

Get if the inside represents positive values in the signed distance map.see  GetInsideIsPositive()

*/"

%javamethodmodifiers itk::simple::SignedMaurerDistanceMapImageFilter::setSquaredDistance "/**
virtual void itk::SignedMaurerDistanceMapImageFilter::SetSquaredDistance(bool _arg)

Set if the distance should be squared.
*/"

%javamethodmodifiers itk::simple::SignedMaurerDistanceMapImageFilter::getSquaredDistance "/**
virtual const bool& itk::SignedMaurerDistanceMapImageFilter::GetSquaredDistance()

Get the distance squared.
*/"

%javamethodmodifiers itk::simple::SignedMaurerDistanceMapImageFilter::setUseImageSpacing "/**
virtual void itk::SignedMaurerDistanceMapImageFilter::SetUseImageSpacing(bool _arg)

Set if image spacing should be used in computing distances.
*/"

%javamethodmodifiers itk::simple::SignedMaurerDistanceMapImageFilter::getUseImageSpacing "/**
virtual const bool& itk::SignedMaurerDistanceMapImageFilter::GetUseImageSpacing()

Get whether spacing is used.
*/"

// Generated for ClassName from /scratch/blowekamp/build/ITK-gerrit/Utilities/Doxygen/xml/classitk_1_1SimilarityIndexImageFilter.xml
%typemap(javaimports) itk::simple::SimilarityIndexImageFilter "/** Measures the similarity between the set of non-zero pixels of two images.

 SimilarityIndexImageFiltermeasures the similarity between the set non-zero pixels of two images using the following formula: f[ S = frac{2 | A cap B |}{|A| + |B|} f]  wheref$Af$ andf$Bf$ are respectively the set of non-zero pixels in the first and second input images. Operatorf$|cdot|f$ represents the size of a set andf$capf$ represents the intersection of two sets.
The measure is derived from a reliability measure known as the kappa statistic.f$Sf$ is sensitive to both differences in size and in location and have been in the literature for comparing two segmentation masks. For more information see: Morphometric Analysis of White Matter Lesions in MR Images: Method and
 Validation, A. P. Zijdenbos, B. M. Dawant, R. A. Margolin and A. C. Palmer, IEEE Trans. on Medical Imaging, 13(4) pp 716-724,1994
This filter requires the largest possible region of the first image and the same corresponding region in the second image. It behaves as filter with two input and one output. Thus it can be inserted in a pipeline with other filters. The filter passes the first input through unmodified.
This filter is templated over the two input image type. It assume both image have the same number of dimensions.
*/"
%javamethodmodifiers itk::simple::SimilarityIndexImageFilter::execute() "
/**Measures the similarity between the set of non-zero pixels of two images.

*/"
%javamethodmodifiers itk::simple::SimilarityIndex "/**
Measures the similarity between the set of non-zero pixels of two images.

 SimilarityIndexImageFiltermeasures the similarity between the set non-zero pixels of two images using the following formula: f[ S = frac{2 | A cap B |}{|A| + |B|} f]  wheref$Af$ andf$Bf$ are respectively the set of non-zero pixels in the first and second input images. Operatorf$|cdot|f$ represents the size of a set andf$capf$ represents the intersection of two sets.
The measure is derived from a reliability measure known as the kappa statistic.f$Sf$ is sensitive to both differences in size and in location and have been in the literature for comparing two segmentation masks. For more information see: Morphometric Analysis of White Matter Lesions in MR Images: Method and
 Validation, A. P. Zijdenbos, B. M. Dawant, R. A. Margolin and A. C. Palmer, IEEE Trans. on Medical Imaging, 13(4) pp 716-724,1994
This filter requires the largest possible region of the first image and the same corresponding region in the second image. It behaves as filter with two input and one output. Thus it can be inserted in a pipeline with other filters. The filter passes the first input through unmodified.
This filter is templated over the two input image type. It assume both image have the same number of dimensions.
*/"
// Generated for ClassName from /scratch/blowekamp/build/ITK-gerrit/Utilities/Doxygen/xml/classitk_1_1SimpleContourExtractorImageFilter.xml
%typemap(javaimports) itk::simple::SimpleContourExtractorImageFilter "/** Computes an image of contours which will be the contour of the first image.

A pixel of the source image is considered to belong to the contour if its pixel value is equal to the input foreground value and it has in its neighborhood at least one pixel which its pixel value is equal to the input background value. The output image will have pixels which will be set to the output foreground value if they belong to the contour, otherwise they will be set to the ouput background value.
The neighborhood radius is set thanks to the radius params.
see  Image
see 
see  Neighborhood
see 
see  NeighborhoodOperator
see 
see  NeighborhoodIterator

*/"
%javamethodmodifiers itk::simple::SimpleContourExtractorImageFilter::execute() "
/**Computes an image of contours which will be the contour of the first image.

*/"
%javamethodmodifiers itk::simple::SimpleContourExtractor "/**
Computes an image of contours which will be the contour of the first image.

A pixel of the source image is considered to belong to the contour if its pixel value is equal to the input foreground value and it has in its neighborhood at least one pixel which its pixel value is equal to the input background value. The output image will have pixels which will be set to the output foreground value if they belong to the contour, otherwise they will be set to the ouput background value.
The neighborhood radius is set thanks to the radius params.
see  Image
see 
see  Neighborhood
see 
see  NeighborhoodOperator
see 
see  NeighborhoodIterator

*/"
%javamethodmodifiers itk::simple::SimpleContourExtractorImageFilter::setInputForegroundValue "/**
virtual void itk::SimpleContourExtractorImageFilter::SetInputForegroundValue(InputPixelType _arg)

Set the foreground value used in order to identify a foreground pixel in the input image.
*/"

%javamethodmodifiers itk::simple::SimpleContourExtractorImageFilter::getInputForegroundValue "/**
virtual const InputPixelType& itk::SimpleContourExtractorImageFilter::GetInputForegroundValue()

Get the foreground value used in order to identify a foreground pixel in the input image.
*/"

%javamethodmodifiers itk::simple::SimpleContourExtractorImageFilter::setInputBackgroundValue "/**
virtual void itk::SimpleContourExtractorImageFilter::SetInputBackgroundValue(InputPixelType _arg)

Set the background value used in order to identify a background pixel in the input image.
*/"

%javamethodmodifiers itk::simple::SimpleContourExtractorImageFilter::getInputBackgroundValue "/**
virtual const InputPixelType& itk::SimpleContourExtractorImageFilter::GetInputBackgroundValue()

Get the background value used in order to identify a background pixel in the input image.
*/"

%javamethodmodifiers itk::simple::SimpleContourExtractorImageFilter::setOutputForegroundValue "/**
virtual void itk::SimpleContourExtractorImageFilter::SetOutputForegroundValue(OutputPixelType _arg)

Set the foreground value used in order to identify a foreground pixel in the output image.
*/"

%javamethodmodifiers itk::simple::SimpleContourExtractorImageFilter::getOutputForegroundValue "/**
virtual const OutputPixelType& itk::SimpleContourExtractorImageFilter::GetOutputForegroundValue()

Get the foreground value used in order to identify a foreground pixel in the output image.
*/"

%javamethodmodifiers itk::simple::SimpleContourExtractorImageFilter::setOutputBackgroundValue "/**
virtual void itk::SimpleContourExtractorImageFilter::SetOutputBackgroundValue(OutputPixelType _arg)

Set the background value used in order to identify a background pixel in the output image.
*/"

%javamethodmodifiers itk::simple::SimpleContourExtractorImageFilter::getOutputBackgroundValue "/**
virtual const OutputPixelType& itk::SimpleContourExtractorImageFilter::GetOutputBackgroundValue()

Get the background value used in order to identify a background pixel in the output image.
*/"

// Generated for ClassName from /scratch/blowekamp/build/ITK-gerrit/Utilities/Doxygen/xml/classitk_1_1SinImageFilter.xml
%typemap(javaimports) itk::simple::SinImageFilter "/** Computes the sine of each pixel.

The computations are performed using vcl_sin(x).
par Wiki Examples:

li All Examples

li Compute the sine of each pixel.

*/"
%javamethodmodifiers itk::simple::SinImageFilter::execute() "
/**Computes the sine of each pixel.

*/"
%javamethodmodifiers itk::simple::Sin "/**
Computes the sine of each pixel.

The computations are performed using vcl_sin(x).
par Wiki Examples:

li All Examples

li Compute the sine of each pixel.

*/"
// Generated for ClassName from /scratch/blowekamp/build/ITK-gerrit/Utilities/Doxygen/xml/classitk_1_1SmoothingRecursiveGaussianImageFilter.xml
%typemap(javaimports) itk::simple::SmoothingRecursiveGaussianImageFilter "/** Computes the smoothing of an image by convolution with the Gaussian kernels implemented as IIR filters.

This filter is implemented using the recursive gaussian filters. For multi-component images, the filter works on each component independently.
For this filter to be able to run in-place the input and output image types need to be the same and/or the same type as the RealImageType.
par Wiki Examples:

li All Examples

li Gaussian smoothing that works with image adaptors

*/"
%javamethodmodifiers itk::simple::SmoothingRecursiveGaussianImageFilter::execute() "
/**Computes the smoothing of an image by convolution with the Gaussian kernels implemented as IIR filters.

*/"
%javamethodmodifiers itk::simple::SmoothingRecursiveGaussian "/**
Computes the smoothing of an image by convolution with the Gaussian kernels implemented as IIR filters.

This filter is implemented using the recursive gaussian filters. For multi-component images, the filter works on each component independently.
For this filter to be able to run in-place the input and output image types need to be the same and/or the same type as the RealImageType.
par Wiki Examples:

li All Examples

li Gaussian smoothing that works with image adaptors

*/"
%javamethodmodifiers itk::simple::SmoothingRecursiveGaussianImageFilter::setSigma "/**
void itk::SmoothingRecursiveGaussianImageFilter::SetSigma(ScalarRealType sigma)

Set Sigma value. Sigma is measured in the units of image spacing. You may use the method SetSigma to set the same value across each axis or use the method SetSigmaArray if you need different values along each axis.
*/"

%javamethodmodifiers itk::simple::SmoothingRecursiveGaussianImageFilter::getSigma "/**
ScalarRealType itk::SmoothingRecursiveGaussianImageFilter::GetSigma() const

*/"

%javamethodmodifiers itk::simple::SmoothingRecursiveGaussianImageFilter::setNormalizeAcrossScale "/**
void itk::SmoothingRecursiveGaussianImageFilter::SetNormalizeAcrossScale(bool normalizeInScaleSpace)

This method does not effect the output of this filter.
see  RecursiveGaussianImageFilter::SetNormalizeAcrossScale

*/"

%javamethodmodifiers itk::simple::SmoothingRecursiveGaussianImageFilter::getNormalizeAcrossScale "/**
virtual bool itk::SmoothingRecursiveGaussianImageFilter::GetNormalizeAcrossScale() const

This method does not effect the output of this filter.
see  RecursiveGaussianImageFilter::SetNormalizeAcrossScale

*/"

// Generated for ClassName from /scratch/blowekamp/build/ITK-gerrit/Utilities/Doxygen/xml/classitk_1_1SobelEdgeDetectionImageFilter.xml
%typemap(javaimports) itk::simple::SobelEdgeDetectionImageFilter "/** A 2D or 3D edge detection using the Sobel operator.

This filter uses the Sobel operator to calculate the image gradient and then finds the magnitude of this gradient vector. The Sobel gradient magnitude (square-root sum of squares) is an indication of edge strength.
see  ImageToImageFilter
see 
see  SobelOperator
see 
see  Neighborhood
see 
see  NeighborhoodOperator
see 
see  NeighborhoodIterator
par Wiki Examples:

li All Examples

li SobelEdgeDetectionImageFilter

*/"
%javamethodmodifiers itk::simple::SobelEdgeDetectionImageFilter::execute() "
/**A 2D or 3D edge detection using the Sobel operator.

*/"
%javamethodmodifiers itk::simple::SobelEdgeDetection "/**
A 2D or 3D edge detection using the Sobel operator.

This filter uses the Sobel operator to calculate the image gradient and then finds the magnitude of this gradient vector. The Sobel gradient magnitude (square-root sum of squares) is an indication of edge strength.
see  ImageToImageFilter
see 
see  SobelOperator
see 
see  Neighborhood
see 
see  NeighborhoodOperator
see 
see  NeighborhoodIterator
par Wiki Examples:

li All Examples

li SobelEdgeDetectionImageFilter

*/"
// Generated for ClassName from /scratch/blowekamp/build/ITK-gerrit/Utilities/Doxygen/xml/classitk_1_1SqrtImageFilter.xml
%typemap(javaimports) itk::simple::SqrtImageFilter "/** Computes the square root of each pixel.

The computations are performed using vcl_sqrt(x).
*/"
%javamethodmodifiers itk::simple::SqrtImageFilter::execute() "
/**Computes the square root of each pixel.

*/"
%javamethodmodifiers itk::simple::Sqrt "/**
Computes the square root of each pixel.

The computations are performed using vcl_sqrt(x).
*/"
// Generated for ClassName from /scratch/blowekamp/build/ITK-gerrit/Utilities/Doxygen/xml/classitk_1_1SquareImageFilter.xml
%typemap(javaimports) itk::simple::SquareImageFilter "/** Computes the square of the intensity values pixel-wise.

par Wiki Examples:

li All Examples

li Square every pixel in an image

*/"
%javamethodmodifiers itk::simple::SquareImageFilter::execute() "
/**Computes the square of the intensity values pixel-wise.

*/"
%javamethodmodifiers itk::simple::Square "/**
Computes the square of the intensity values pixel-wise.

par Wiki Examples:

li All Examples

li Square every pixel in an image

*/"
// Generated for ClassName from /scratch/blowekamp/build/ITK-gerrit/Utilities/Doxygen/xml/classitk_1_1SquaredDifferenceImageFilter.xml
%typemap(javaimports) itk::simple::SquaredDifferenceImageFilter "/** Implements pixel-wise the computation of squared difference.

This filter is parametrized over the types of the two input images and the type of the output image.
Numeric conversions (castings) are done by the C++ defaults.
The filter will walk over all the pixels in the two input images, and for each one of them it will do the following:

li cast the input 1 pixel value to double 
li cast the input 2 pixel value to double 
li compute the difference of the two pixel values
li compute the square of the difference
li cast the double value resulting from sqr() to the pixel type of the output image
li store the casted value into the output image.

The filter expect all images to have the same dimension (e.g. all 2D, or all 3D, or all ND)
par Wiki Examples:

li All Examples

li Compute the squared difference of corresponding pixels in two images

*/"
%javamethodmodifiers itk::simple::SquaredDifferenceImageFilter::execute() "
/**Implements pixel-wise the computation of squared difference.

*/"
%javamethodmodifiers itk::simple::SquaredDifference "/**
Implements pixel-wise the computation of squared difference.

This filter is parametrized over the types of the two input images and the type of the output image.
Numeric conversions (castings) are done by the C++ defaults.
The filter will walk over all the pixels in the two input images, and for each one of them it will do the following:

li cast the input 1 pixel value to double 
li cast the input 2 pixel value to double 
li compute the difference of the two pixel values
li compute the square of the difference
li cast the double value resulting from sqr() to the pixel type of the output image
li store the casted value into the output image.

The filter expect all images to have the same dimension (e.g. all 2D, or all 3D, or all ND)
par Wiki Examples:

li All Examples

li Compute the squared difference of corresponding pixels in two images

*/"
// Generated for ClassName from /scratch/blowekamp/build/ITK-gerrit/Utilities/Doxygen/xml/classitk_1_1StandardDeviationProjectionImageFilter.xml
%typemap(javaimports) itk::simple::StandardDeviationProjectionImageFilter "/** Mean projection.

This class was contributed to the Insight Journal by Gaetan Lehmann. The original paper can be found athttp://hdl.handle.net/1926/164
author Gaetan Lehmann. Biologie du Developpement et de la Reproduction, INRA de Jouy-en-Josas, France.
see  ProjectionImageFilter
see 
see  MedianProjectionImageFilter
see 
see  MeanProjectionImageFilter
see 
see  SumProjectionImageFilter
see 
see  MeanProjectionImageFilter
see 
see  MaximumProjectionImageFilter
see 
see  MinimumProjectionImageFilter
see 
see  BinaryProjectionImageFilter

*/"
%javamethodmodifiers itk::simple::StandardDeviationProjectionImageFilter::execute() "
/**Mean projection.

*/"
%javamethodmodifiers itk::simple::StandardDeviationProjection "/**
Mean projection.

This class was contributed to the Insight Journal by Gaetan Lehmann. The original paper can be found athttp://hdl.handle.net/1926/164
author Gaetan Lehmann. Biologie du Developpement et de la Reproduction, INRA de Jouy-en-Josas, France.
see  ProjectionImageFilter
see 
see  MedianProjectionImageFilter
see 
see  MeanProjectionImageFilter
see 
see  SumProjectionImageFilter
see 
see  MeanProjectionImageFilter
see 
see  MaximumProjectionImageFilter
see 
see  MinimumProjectionImageFilter
see 
see  BinaryProjectionImageFilter

*/"
// Generated for ClassName from /scratch/blowekamp/build/ITK-gerrit/Utilities/Doxygen/xml/classitk_1_1SubtractImageFilter.xml
%typemap(javaimports) itk::simple::SubtractImageFilter "/** Pixel-wise subtraction of two images.

Subtract each pixel from image2 from its corresponding pixel in image1:
Output=Input1-Input2.
This is done using
 SetInput1(image1); SetInput2(image2);
This class is templated over the types of the two input images and the type of the output image. Numeric conversions (castings) are done by the C++ defaults.
Additionally, a constant can be subtracted from every pixel in an image using:
 SetInput1(image1); SetConstant2(constant);
note The result of AddImageFilterwith a negative constant is not necessarily the same as SubtractImageFilter. This would be the case when the PixelType defines an operator-()that is not the inverse of operator+()
par Wiki Examples:

li All Examples

li Subtract two images

li Subtract a constant from every pixel in an image

*/"
%javamethodmodifiers itk::simple::SubtractImageFilter::execute() "
/**Pixel-wise subtraction of two images.

*/"
%javamethodmodifiers itk::simple::Subtract "/**
Pixel-wise subtraction of two images.

Subtract each pixel from image2 from its corresponding pixel in image1:
Output=Input1-Input2.
This is done using
 SetInput1(image1); SetInput2(image2);
This class is templated over the types of the two input images and the type of the output image. Numeric conversions (castings) are done by the C++ defaults.
Additionally, a constant can be subtracted from every pixel in an image using:
 SetInput1(image1); SetConstant2(constant);
note The result of AddImageFilterwith a negative constant is not necessarily the same as SubtractImageFilter. This would be the case when the PixelType defines an operator-()that is not the inverse of operator+()
par Wiki Examples:

li All Examples

li Subtract two images

li Subtract a constant from every pixel in an image

*/"
// Generated for ClassName from /scratch/blowekamp/build/ITK-gerrit/Utilities/Doxygen/xml/classitk_1_1SubtractConstantFromImageFilter.xml
%typemap(javaimports) itk::simple::SubtractConstantFromImageFilter "/** Add a constant to all input pixels.

This filter is templated over the input image type and the output image type.
author Tom Vercauteren, INRIA & Mauna Kea Technologies
Based on filters from the Insight Journal paper:http://hdl.handle.net/1926/510
see  SubtractImageFilter

*/"
%javamethodmodifiers itk::simple::SubtractConstantFromImageFilter::execute() "
/**Add a constant to all input pixels.

*/"
%javamethodmodifiers itk::simple::SubtractConstantFrom "/**
Add a constant to all input pixels.

This filter is templated over the input image type and the output image type.
author Tom Vercauteren, INRIA & Mauna Kea Technologies
Based on filters from the Insight Journal paper:http://hdl.handle.net/1926/510
see  SubtractImageFilter

*/"
// Generated for ClassName from /scratch/blowekamp/build/ITK-gerrit/Utilities/Doxygen/xml/classitk_1_1SumProjectionImageFilter.xml
%typemap(javaimports) itk::simple::SumProjectionImageFilter "/** Sum projection.

This class was contributed to the Insight Journal by Gaetan Lehmann. The original paper can be found athttp://hdl.handle.net/1926/164
author Gaetan Lehmann. Biologie du Developpement et de la Reproduction , INRA de Jouy-en-Josas, France.
see  ProjectionImageFilter
see 
see  MedianProjectionImageFilter
see 
see  MeanProjectionImageFilter
see 
see  MeanProjectionImageFilter
see 
see  MaximumProjectionImageFilter
see 
see  MinimumProjectionImageFilter
see 
see  BinaryProjectionImageFilter
see 
see  StandardDeviationProjectionImageFilter

*/"
%javamethodmodifiers itk::simple::SumProjectionImageFilter::execute() "
/**Sum projection.

*/"
%javamethodmodifiers itk::simple::SumProjection "/**
Sum projection.

This class was contributed to the Insight Journal by Gaetan Lehmann. The original paper can be found athttp://hdl.handle.net/1926/164
author Gaetan Lehmann. Biologie du Developpement et de la Reproduction , INRA de Jouy-en-Josas, France.
see  ProjectionImageFilter
see 
see  MedianProjectionImageFilter
see 
see  MeanProjectionImageFilter
see 
see  MeanProjectionImageFilter
see 
see  MaximumProjectionImageFilter
see 
see  MinimumProjectionImageFilter
see 
see  BinaryProjectionImageFilter
see 
see  StandardDeviationProjectionImageFilter

*/"
// Generated for ClassName from /scratch/blowekamp/build/ITK-gerrit/Utilities/Doxygen/xml/classitk_1_1TanImageFilter.xml
%typemap(javaimports) itk::simple::TanImageFilter "/** Computes the tangent of each input pixel.

The computations are performed using vcl_tan(x).
*/"
%javamethodmodifiers itk::simple::TanImageFilter::execute() "
/**Computes the tangent of each input pixel.

*/"
%javamethodmodifiers itk::simple::Tan "/**
Computes the tangent of each input pixel.

The computations are performed using vcl_tan(x).
*/"
// Generated for ClassName from /scratch/blowekamp/build/ITK-gerrit/Utilities/Doxygen/xml/classitk_1_1TernaryAddImageFilter.xml
%typemap(javaimports) itk::simple::TernaryAddImageFilter "/** Pixel-wise addition of three images.

This class is templated over the types of the three input images and the type of the output image. Numeric conversions (castings) are done by the C++ defaults.
*/"
%javamethodmodifiers itk::simple::TernaryAddImageFilter::execute() "
/**Pixel-wise addition of three images.

*/"
%javamethodmodifiers itk::simple::TernaryAdd "/**
Pixel-wise addition of three images.

This class is templated over the types of the three input images and the type of the output image. Numeric conversions (castings) are done by the C++ defaults.
*/"
// Generated for ClassName from /scratch/blowekamp/build/ITK-gerrit/Utilities/Doxygen/xml/classitk_1_1TernaryMagnitudeImageFilter.xml
%typemap(javaimports) itk::simple::TernaryMagnitudeImageFilter "/** Pixel-wise addition of three images.

This class is templated over the types of the three input images and the type of the output image. Numeric conversions (castings) are done by the C++ defaults.
*/"
%javamethodmodifiers itk::simple::TernaryMagnitudeImageFilter::execute() "
/**Pixel-wise addition of three images.

*/"
%javamethodmodifiers itk::simple::TernaryMagnitude "/**
Pixel-wise addition of three images.

This class is templated over the types of the three input images and the type of the output image. Numeric conversions (castings) are done by the C++ defaults.
*/"
// Generated for ClassName from /scratch/blowekamp/build/ITK-gerrit/Utilities/Doxygen/xml/classitk_1_1TernaryMagnitudeSquaredImageFilter.xml
%typemap(javaimports) itk::simple::TernaryMagnitudeSquaredImageFilter "/** Pixel-wise addition of three images.

This class is templated over the types of the three input images and the type of the output image. Numeric conversions (castings) are done by the C++ defaults.
*/"
%javamethodmodifiers itk::simple::TernaryMagnitudeSquaredImageFilter::execute() "
/**Pixel-wise addition of three images.

*/"
%javamethodmodifiers itk::simple::TernaryMagnitudeSquared "/**
Pixel-wise addition of three images.

This class is templated over the types of the three input images and the type of the output image. Numeric conversions (castings) are done by the C++ defaults.
*/"
// Generated for ClassName from /scratch/blowekamp/build/ITK-gerrit/Utilities/Doxygen/xml/classitk_1_1ThresholdImageFilter.xml
%typemap(javaimports) itk::simple::ThresholdImageFilter "/** Set image values to a user-specified value if they are below, above, or between simple threshold values.

 ThresholdImageFiltersets image values to a user-specified outside value (by default, black) if the image values are below, above, or between simple threshold values.
The pixels must support the operators >= and <=.
par Wiki Examples:

li All Examples

li Threshold an image

*/"
%javamethodmodifiers itk::simple::ThresholdImageFilter::execute() "
/**Set image values to a user-specified value if they are below, above, or between simple threshold values.

*/"
%javamethodmodifiers itk::simple::Threshold "/**
Set image values to a user-specified value if they are below, above, or between simple threshold values.

 ThresholdImageFiltersets image values to a user-specified outside value (by default, black) if the image values are below, above, or between simple threshold values.
The pixels must support the operators >= and <=.
par Wiki Examples:

li All Examples

li Threshold an image

*/"
%javamethodmodifiers itk::simple::ThresholdImageFilter::setLower "/**
virtual void itk::ThresholdImageFilter::SetLower(PixelType _arg)

Set/Get methods to set the lower threshold
*/"

%javamethodmodifiers itk::simple::ThresholdImageFilter::getLower "/**
virtual PixelType itk::ThresholdImageFilter::GetLower() const

Set/Get methods to set the lower threshold
*/"

%javamethodmodifiers itk::simple::ThresholdImageFilter::setUpper "/**
virtual void itk::ThresholdImageFilter::SetUpper(PixelType _arg)

Set/Get methods to set the upper threshold
*/"

%javamethodmodifiers itk::simple::ThresholdImageFilter::getUpper "/**
virtual PixelType itk::ThresholdImageFilter::GetUpper() const

Set/Get methods to set the upper threshold
*/"

%javamethodmodifiers itk::simple::ThresholdImageFilter::setOutsideValue "/**
virtual void itk::ThresholdImageFilter::SetOutsideValue(PixelType _arg)

End concept checking Set the outside pixel value. The default value NumericTraits<PixelType>::Zero.
*/"

%javamethodmodifiers itk::simple::ThresholdImageFilter::getOutsideValue "/**
virtual PixelType itk::ThresholdImageFilter::GetOutsideValue() const

Get the outside pixel value.
*/"

// Generated for ClassName from /scratch/blowekamp/build/ITK-gerrit/Utilities/Doxygen/xml/classitk_1_1ThresholdMaximumConnectedComponentsImageFilter.xml
%typemap(javaimports) itk::simple::ThresholdMaximumConnectedComponentsImageFilter "/** Finds the threshold value of an image based on maximizing the number of objects in the image that are larger than a given minimal size.

par This method is based on Topological Stable State Thresholding to calculate the threshold set point. This method is particularly effective when there are a large number of objects in a microscopy image. Compiling in Debug mode and enable the debug flag for this filter to print debug information to see how the filter focuses in on a threshold value. Please see the Insight Journal's MICCAI 2005 workshop for a complete description. References are below.
par Parameters
The MinimumObjectSizeInPixels parameter is controlled through the class Get/SetMinimumObjectSizeInPixels() method. Similar to the standard itk::BinaryThresholdImageFilterthe Get/SetInside and Get/SetOutside values of the threshold can be set. The GetNumberOfObjects()and GetThresholdValue()methods return the number of objects above the minimum pixel size and the calculated threshold value.
par Automatic Thresholding in ITK
There are multiple methods to automatically calculate the threshold intensity value of an image. As of version 4.0, ITK has a Thresholding ( ITKThresholding ) module which contains numerous automatic thresholding methods.implements two of these. Topological Stable State Thresholding works well on images with a large number of objects to be counted.
par References:
1) Urish KL, August J, Huard J. Unsupervised segmentation for myofiber
 counting in immunoflourescent images. Insight Journal. ISC/NA-MIC/MICCAI Workshop on Open-Source Software (2005) Dspace handle:http://hdl.handle.net/1926/482) Pikaz A, Averbuch, A. Digital image thresholding based on topological
 stable-state. Pattern Recognition, 29(5): 829-843, 1996.
par Questions: email Ken Urish at ken.urish(at)gmail.com Please cc the itk list serve for archival purposes.

*/"
%javamethodmodifiers itk::simple::ThresholdMaximumConnectedComponentsImageFilter::execute() "
/**Finds the threshold value of an image based on maximizing the number of objects in the image that are larger than a given minimal size.

*/"
%javamethodmodifiers itk::simple::ThresholdMaximumConnectedComponents "/**
Finds the threshold value of an image based on maximizing the number of objects in the image that are larger than a given minimal size.

par This method is based on Topological Stable State Thresholding to calculate the threshold set point. This method is particularly effective when there are a large number of objects in a microscopy image. Compiling in Debug mode and enable the debug flag for this filter to print debug information to see how the filter focuses in on a threshold value. Please see the Insight Journal's MICCAI 2005 workshop for a complete description. References are below.
par Parameters
The MinimumObjectSizeInPixels parameter is controlled through the class Get/SetMinimumObjectSizeInPixels() method. Similar to the standard itk::BinaryThresholdImageFilterthe Get/SetInside and Get/SetOutside values of the threshold can be set. The GetNumberOfObjects()and GetThresholdValue()methods return the number of objects above the minimum pixel size and the calculated threshold value.
par Automatic Thresholding in ITK
There are multiple methods to automatically calculate the threshold intensity value of an image. As of version 4.0, ITK has a Thresholding ( ITKThresholding ) module which contains numerous automatic thresholding methods.implements two of these. Topological Stable State Thresholding works well on images with a large number of objects to be counted.
par References:
1) Urish KL, August J, Huard J. Unsupervised segmentation for myofiber
 counting in immunoflourescent images. Insight Journal. ISC/NA-MIC/MICCAI Workshop on Open-Source Software (2005) Dspace handle:http://hdl.handle.net/1926/482) Pikaz A, Averbuch, A. Digital image thresholding based on topological
 stable-state. Pattern Recognition, 29(5): 829-843, 1996.
par Questions: email Ken Urish at ken.urish(at)gmail.com Please cc the itk list serve for archival purposes.

*/"
%javamethodmodifiers itk::simple::ThresholdMaximumConnectedComponentsImageFilter::setMinimumObjectSizeInPixels "/**
virtual void itk::ThresholdMaximumConnectedComponentsImageFilter::SetMinimumObjectSizeInPixels(unsigned int _arg)

Set the minimum pixel area used to count objects on the image. Thus, only objects that have a pixel area greater than the minimum pixel area will be counted as an object in the optimization portion of this filter. Essentially, it eliminates noise from being counted as an object. The default value is zero.
*/"

%javamethodmodifiers itk::simple::ThresholdMaximumConnectedComponentsImageFilter::getMinimumObjectSizeInPixels "/**
virtual unsigned int itk::ThresholdMaximumConnectedComponentsImageFilter::GetMinimumObjectSizeInPixels() const

Set the minimum pixel area used to count objects on the image. Thus, only objects that have a pixel area greater than the minimum pixel area will be counted as an object in the optimization portion of this filter. Essentially, it eliminates noise from being counted as an object. The default value is zero.
*/"

%javamethodmodifiers itk::simple::ThresholdMaximumConnectedComponentsImageFilter::setUpperBoundary "/**
virtual void itk::ThresholdMaximumConnectedComponentsImageFilter::SetUpperBoundary(PixelType _arg)

The following Set/Get methods are for the binary threshold function. This class automatically calculates the lower threshold boundary. The upper threshold boundary, inside value, and outside value can be defined by the user, however the standard values are used as default if not set by the user. The default value of the: Inside value is the maximum pixel type intensity. Outside value is the minimum pixel type intensity. Upper threshold boundary is the maximum pixel type intensity.
*/"

%javamethodmodifiers itk::simple::ThresholdMaximumConnectedComponentsImageFilter::getUpperBoundary "/**
virtual PixelType itk::ThresholdMaximumConnectedComponentsImageFilter::GetUpperBoundary() const

The following Set/Get methods are for the binary threshold function. This class automatically calculates the lower threshold boundary. The upper threshold boundary, inside value, and outside value can be defined by the user, however the standard values are used as default if not set by the user. The default value of the: Inside value is the maximum pixel type intensity. Outside value is the minimum pixel type intensity. Upper threshold boundary is the maximum pixel type intensity.
*/"

%javamethodmodifiers itk::simple::ThresholdMaximumConnectedComponentsImageFilter::setInsideValue "/**
virtual void itk::ThresholdMaximumConnectedComponentsImageFilter::SetInsideValue(PixelType _arg)

The following Set/Get methods are for the binary threshold function. This class automatically calculates the lower threshold boundary. The upper threshold boundary, inside value, and outside value can be defined by the user, however the standard values are used as default if not set by the user. The default value of the: Inside value is the maximum pixel type intensity. Outside value is the minimum pixel type intensity. Upper threshold boundary is the maximum pixel type intensity.
*/"

%javamethodmodifiers itk::simple::ThresholdMaximumConnectedComponentsImageFilter::getInsideValue "/**
virtual PixelType itk::ThresholdMaximumConnectedComponentsImageFilter::GetInsideValue() const

The following Set/Get methods are for the binary threshold function. This class automatically calculates the lower threshold boundary. The upper threshold boundary, inside value, and outside value can be defined by the user, however the standard values are used as default if not set by the user. The default value of the: Inside value is the maximum pixel type intensity. Outside value is the minimum pixel type intensity. Upper threshold boundary is the maximum pixel type intensity.
*/"

%javamethodmodifiers itk::simple::ThresholdMaximumConnectedComponentsImageFilter::setOutsideValue "/**
virtual void itk::ThresholdMaximumConnectedComponentsImageFilter::SetOutsideValue(PixelType _arg)

The following Set/Get methods are for the binary threshold function. This class automatically calculates the lower threshold boundary. The upper threshold boundary, inside value, and outside value can be defined by the user, however the standard values are used as default if not set by the user. The default value of the: Inside value is the maximum pixel type intensity. Outside value is the minimum pixel type intensity. Upper threshold boundary is the maximum pixel type intensity.
*/"

%javamethodmodifiers itk::simple::ThresholdMaximumConnectedComponentsImageFilter::getOutsideValue "/**
virtual PixelType itk::ThresholdMaximumConnectedComponentsImageFilter::GetOutsideValue() const

The following Set/Get methods are for the binary threshold function. This class automatically calculates the lower threshold boundary. The upper threshold boundary, inside value, and outside value can be defined by the user, however the standard values are used as default if not set by the user. The default value of the: Inside value is the maximum pixel type intensity. Outside value is the minimum pixel type intensity. Upper threshold boundary is the maximum pixel type intensity.
*/"

// Generated for ClassName from /scratch/blowekamp/build/ITK-gerrit/Utilities/Doxygen/xml/classitk_1_1ThresholdSegmentationLevelSetImageFilter.xml
%typemap(javaimports) itk::simple::ThresholdSegmentationLevelSetImageFilter "/** Segments structures in images based on intensity values.

par IMPORTANT
The SegmentationLevelSetImageFilterclass and the ThresholdSegmentationLevelSetFunctionclass contain additional information necessary to the full understanding of how to use this filter.
par OVERVIEW
This class is a level set method segmentation filter. It constructs a speed function which is close to zero at the upper and lower bounds of an intensity window, effectively locking the propagating front onto those edges. Elsewhere, the front will propagate quickly.
par INPUTS
This filter requires two inputs. The first input is a seed image. This seed image must contain an isosurface that you want to use as the seed for your segmentation. It can be a binary, graylevel, or floating point image. The only requirement is that it contain a closed isosurface that you will identify as the seed by setting the IsosurfaceValue parameter of the filter. For a binary image you will want to set your isosurface value halfway between your on and off values (i.e. for 0's and 1's, use an isosurface value of 0.5).
par The second input is the feature image. This is the image from which the speed function will be calculated. For most applications, this is the image that you want to segment. The desired isosurface in your seed image should lie within the region of your feature image that you are trying to segment. Note that this filter does no preprocessing of the feature image before thresholding.
par See SegmentationLevelSetImageFilterfor more information on Inputs.
par OUTPUTS
The filter outputs a single, scalar, real-valued image. Positive values in the output image are inside the segmentated region and negative values in the image are outside of the inside region. The zero crossings of the image correspond to the position of the level set front.
par See SparseFieldLevelSetImageFilterand SegmentationLevelSetImageFilterfor more information.
par PARAMETERS
In addition to parameters described in SegmentationLevelSetImageFilter, this filter adds the UpperThreshold and LowerThreshold. See ThresholdSegmentationLevelSetFunctionfor a description of how these values affect the segmentation.
see  SegmentationLevelSetImageFilter
see 
see  ThresholdSegmentationLevelSetFunction,
see 
see  SparseFieldLevelSetImageFilter

*/"
%javamethodmodifiers itk::simple::ThresholdSegmentationLevelSetImageFilter::execute() "
/**Segments structures in images based on intensity values.

*/"
%javamethodmodifiers itk::simple::ThresholdSegmentationLevelSet "/**
Segments structures in images based on intensity values.

par IMPORTANT
The SegmentationLevelSetImageFilterclass and the ThresholdSegmentationLevelSetFunctionclass contain additional information necessary to the full understanding of how to use this filter.
par OVERVIEW
This class is a level set method segmentation filter. It constructs a speed function which is close to zero at the upper and lower bounds of an intensity window, effectively locking the propagating front onto those edges. Elsewhere, the front will propagate quickly.
par INPUTS
This filter requires two inputs. The first input is a seed image. This seed image must contain an isosurface that you want to use as the seed for your segmentation. It can be a binary, graylevel, or floating point image. The only requirement is that it contain a closed isosurface that you will identify as the seed by setting the IsosurfaceValue parameter of the filter. For a binary image you will want to set your isosurface value halfway between your on and off values (i.e. for 0's and 1's, use an isosurface value of 0.5).
par The second input is the feature image. This is the image from which the speed function will be calculated. For most applications, this is the image that you want to segment. The desired isosurface in your seed image should lie within the region of your feature image that you are trying to segment. Note that this filter does no preprocessing of the feature image before thresholding.
par See SegmentationLevelSetImageFilterfor more information on Inputs.
par OUTPUTS
The filter outputs a single, scalar, real-valued image. Positive values in the output image are inside the segmentated region and negative values in the image are outside of the inside region. The zero crossings of the image correspond to the position of the level set front.
par See SparseFieldLevelSetImageFilterand SegmentationLevelSetImageFilterfor more information.
par PARAMETERS
In addition to parameters described in SegmentationLevelSetImageFilter, this filter adds the UpperThreshold and LowerThreshold. See ThresholdSegmentationLevelSetFunctionfor a description of how these values affect the segmentation.
see  SegmentationLevelSetImageFilter
see 
see  ThresholdSegmentationLevelSetFunction,
see 
see  SparseFieldLevelSetImageFilter

*/"
%javamethodmodifiers itk::simple::ThresholdSegmentationLevelSetImageFilter::setLowerThreshold "/**
void itk::ThresholdSegmentationLevelSetImageFilter::SetLowerThreshold(ValueType v)

*/"

%javamethodmodifiers itk::simple::ThresholdSegmentationLevelSetImageFilter::getLowerThreshold "/**
ValueType itk::ThresholdSegmentationLevelSetImageFilter::GetLowerThreshold() const

*/"

%javamethodmodifiers itk::simple::ThresholdSegmentationLevelSetImageFilter::setUpperThreshold "/**
void itk::ThresholdSegmentationLevelSetImageFilter::SetUpperThreshold(ValueType v)

Get/Set the threshold values that will be used to calculate the speed function.
*/"

%javamethodmodifiers itk::simple::ThresholdSegmentationLevelSetImageFilter::getUpperThreshold "/**
ValueType itk::ThresholdSegmentationLevelSetImageFilter::GetUpperThreshold() const

*/"

// Generated for ClassName from /scratch/blowekamp/build/ITK-gerrit/Utilities/Doxygen/xml/classitk_1_1TikhonovDeconvolutionImageFilter.xml
%typemap(javaimports) itk::simple::TikhonovDeconvolutionImageFilter "/** An inverse deconvolution filter regularized in the Tikhonov sense.

The Tikhonov deconvolution filter is the inverse deconvolution filter with a regularization term added to the denominator. The filter minimizes the equation f[ ||hat{f} otimes h - g||_{L_2}^2 + mu||hat{f}||^2 f]  wheref$hat{f}f$ is the estimate of the unblurred image,f$hf$ is the blurring kernel,f$gf$ is the blurred image, andf$muf$ is a non-negative real regularization function.
The filter applies a kernel described in the Fourier domain asf$H^*(omega) / (|H(omega)|^2 + mu)f$ wheref$H(omega)f$ is the Fourier transform off$hf$ . The termf$muf$ is called RegularizationConstant in this filter. Iff$muf$ is set to zero, this filter is equivalent to the InverseDeconvolutionImageFilter.
author Gaetan Lehmann, Biologie du Developpement et de la Reproduction, INRA de Jouy-en-Josas, France
Cory Quammen, The University of North Carolina at Chapel Hill

*/"
%javamethodmodifiers itk::simple::TikhonovDeconvolutionImageFilter::execute() "
/**An inverse deconvolution filter regularized in the Tikhonov sense.

*/"
%javamethodmodifiers itk::simple::TikhonovDeconvolution "/**
An inverse deconvolution filter regularized in the Tikhonov sense.

The Tikhonov deconvolution filter is the inverse deconvolution filter with a regularization term added to the denominator. The filter minimizes the equation f[ ||hat{f} otimes h - g||_{L_2}^2 + mu||hat{f}||^2 f]  wheref$hat{f}f$ is the estimate of the unblurred image,f$hf$ is the blurring kernel,f$gf$ is the blurred image, andf$muf$ is a non-negative real regularization function.
The filter applies a kernel described in the Fourier domain asf$H^*(omega) / (|H(omega)|^2 + mu)f$ wheref$H(omega)f$ is the Fourier transform off$hf$ . The termf$muf$ is called RegularizationConstant in this filter. Iff$muf$ is set to zero, this filter is equivalent to the InverseDeconvolutionImageFilter.
author Gaetan Lehmann, Biologie du Developpement et de la Reproduction, INRA de Jouy-en-Josas, France
Cory Quammen, The University of North Carolina at Chapel Hill

*/"
%javamethodmodifiers itk::simple::TikhonovDeconvolutionImageFilter::setRegularizationConstant "/**
virtual void itk::TikhonovDeconvolutionImageFilter::SetRegularizationConstant(double _arg)

The regularization factor. Larger values reduce the dominance of noise in the solution, but results in higher approximation error in the deblurred image. Default value is 0.0, yielding the same results as the InverseDeconvolutionImageFilter.
*/"

%javamethodmodifiers itk::simple::TikhonovDeconvolutionImageFilter::getRegularizationConstant "/**
virtual double itk::TikhonovDeconvolutionImageFilter::GetRegularizationConstant() const

The regularization factor. Larger values reduce the dominance of noise in the solution, but results in higher approximation error in the deblurred image. Default value is 0.0, yielding the same results as the InverseDeconvolutionImageFilter.
*/"

// Generated for ClassName from /scratch/blowekamp/build/ITK-gerrit/Utilities/Doxygen/xml/classitk_1_1TileImageFilter.xml
%typemap(javaimports) itk::simple::TileImageFilter "/** Tile multiple input images into a single output image.

This filter will tile multiple images using a user-specified layout. The tile sizes will be large enough to accommodate the largest image for each tile. The layout is specified with the SetLayout method. The layout has the same dimension as the output image. If all entries of the layout are positive, the tiled output will contain the exact number of tiles. If the layout contains a 0 in the last dimension, the filter will compute a size that will accommodate all of the images. Empty tiles are filled with the value specified with the SetDefault value method. The input images must have a dimension less than or equal to the output image. The output image have a larger dimension than the input images. This filter can be used to create a volume from a series of inputs by specifying a layout of 1,1,0.
par Wiki Examples:

li All Examples

li Tile multiple images into another image

li Stack multiple 2D images into a 3D image

li Tile multiple images side by side

*/"
%javamethodmodifiers itk::simple::TileImageFilter::execute() "
/**Tile multiple input images into a single output image.

*/"
%javamethodmodifiers itk::simple::Tile "/**
Tile multiple input images into a single output image.

This filter will tile multiple images using a user-specified layout. The tile sizes will be large enough to accommodate the largest image for each tile. The layout is specified with the SetLayout method. The layout has the same dimension as the output image. If all entries of the layout are positive, the tiled output will contain the exact number of tiles. If the layout contains a 0 in the last dimension, the filter will compute a size that will accommodate all of the images. Empty tiles are filled with the value specified with the SetDefault value method. The input images must have a dimension less than or equal to the output image. The output image have a larger dimension than the input images. This filter can be used to create a volume from a series of inputs by specifying a layout of 1,1,0.
par Wiki Examples:

li All Examples

li Tile multiple images into another image

li Stack multiple 2D images into a 3D image

li Tile multiple images side by side

*/"
// Generated for ClassName from /scratch/blowekamp/build/ITK-gerrit/Utilities/Doxygen/xml/classitk_1_1TriangleThresholdImageFilter.xml
%typemap(javaimports) itk::simple::TriangleThresholdImageFilter "/** Threshold an image using the Triangle Threshold.

This filter creates a binary thresholded image that separates an image into foreground and background components. The filter computes the threshold using the TriangleThresholdCalculatorand applies that theshold to the input image using the BinaryThresholdImageFilter.
author Richard Beare. Department of Medicine, Monash University, Melbourne, Australia.
Gaetan Lehmann. Biologie du Developpement et de la Reproduction, INRA de Jouy-en-Josas, France.
This implementation was taken from the Insight Journal paper:http://hdl.handle.net/10380/3279orhttp://www.insight-journal.org/browse/publication/811
see HistogramThresholdImageFitler

*/"
%javamethodmodifiers itk::simple::TriangleThresholdImageFilter::execute() "
/**Threshold an image using the Triangle Threshold.

*/"
%javamethodmodifiers itk::simple::TriangleThreshold "/**
Threshold an image using the Triangle Threshold.

This filter creates a binary thresholded image that separates an image into foreground and background components. The filter computes the threshold using the TriangleThresholdCalculatorand applies that theshold to the input image using the BinaryThresholdImageFilter.
author Richard Beare. Department of Medicine, Monash University, Melbourne, Australia.
Gaetan Lehmann. Biologie du Developpement et de la Reproduction, INRA de Jouy-en-Josas, France.
This implementation was taken from the Insight Journal paper:http://hdl.handle.net/10380/3279orhttp://www.insight-journal.org/browse/publication/811
see HistogramThresholdImageFitler

*/"
// Generated for ClassName from /scratch/blowekamp/build/ITK-gerrit/Utilities/Doxygen/xml/classitk_1_1VectorConfidenceConnectedImageFilter.xml
%typemap(javaimports) itk::simple::VectorConfidenceConnectedImageFilter "/** Segment pixels with similar statistics using connectivity.

This filter extracts a connected set of pixels whose pixel intensities are consistent with the pixel statistics of a seed point. The mean and variance across a neighborhood (8-connected, 26-connected, etc.) are calculated for a seed point. Then pixels connected to this seed point whose values are within the confidence interval for the seed point are grouped. The width of the confidence interval is controlled by the Multiplier variable (the confidence interval is the mean plus or minus the Multiplier times the standard deviation). If the intensity variations across a segment were gaussian, a Multiplier setting of 2.5 would define a confidence interval wide enough to capture 99% of samples in the segment.
After this initial segmentation is calculated, the mean and variance are re-calculated. All the pixels in the previous segmentation are used to calculate the mean the standard deviation (as opposed to using the pixels in the neighborhood of the seed point). The segmentation is then recalculted using these refined estimates for the mean and variance of the pixel values. This process is repeated for the specified number of iterations. Setting the NumberOfIterations to zero stops the algorithm after the initial segmentation from the seed point.
NOTE: the lower and upper threshold are restricted to lie within the valid numeric limits of the input data pixel type. Also, the limits may be adjusted to contain the seed point's intensity.
*/"
%javamethodmodifiers itk::simple::VectorConfidenceConnectedImageFilter::execute() "
/**Segment pixels with similar statistics using connectivity.

*/"
%javamethodmodifiers itk::simple::VectorConfidenceConnected "/**
Segment pixels with similar statistics using connectivity.

This filter extracts a connected set of pixels whose pixel intensities are consistent with the pixel statistics of a seed point. The mean and variance across a neighborhood (8-connected, 26-connected, etc.) are calculated for a seed point. Then pixels connected to this seed point whose values are within the confidence interval for the seed point are grouped. The width of the confidence interval is controlled by the Multiplier variable (the confidence interval is the mean plus or minus the Multiplier times the standard deviation). If the intensity variations across a segment were gaussian, a Multiplier setting of 2.5 would define a confidence interval wide enough to capture 99% of samples in the segment.
After this initial segmentation is calculated, the mean and variance are re-calculated. All the pixels in the previous segmentation are used to calculate the mean the standard deviation (as opposed to using the pixels in the neighborhood of the seed point). The segmentation is then recalculted using these refined estimates for the mean and variance of the pixel values. This process is repeated for the specified number of iterations. Setting the NumberOfIterations to zero stops the algorithm after the initial segmentation from the seed point.
NOTE: the lower and upper threshold are restricted to lie within the valid numeric limits of the input data pixel type. Also, the limits may be adjusted to contain the seed point's intensity.
*/"
%javamethodmodifiers itk::simple::VectorConfidenceConnectedImageFilter::setNumberOfIterations "/**
virtual void itk::VectorConfidenceConnectedImageFilter::SetNumberOfIterations(unsigned int _arg)

Set/Get the number of iterations
*/"

%javamethodmodifiers itk::simple::VectorConfidenceConnectedImageFilter::getNumberOfIterations "/**
virtual unsigned int itk::VectorConfidenceConnectedImageFilter::GetNumberOfIterations() const

Set/Get the number of iterations
*/"

%javamethodmodifiers itk::simple::VectorConfidenceConnectedImageFilter::setMultiplier "/**
virtual void itk::VectorConfidenceConnectedImageFilter::SetMultiplier(double _arg)

Set/Get the multiplier to define the confidence interval. Multiplier can be anything greater than zero. A typical value is 2.5
*/"

%javamethodmodifiers itk::simple::VectorConfidenceConnectedImageFilter::getMultiplier "/**
virtual double itk::VectorConfidenceConnectedImageFilter::GetMultiplier() const

Set/Get the multiplier to define the confidence interval. Multiplier can be anything greater than zero. A typical value is 2.5
*/"

%javamethodmodifiers itk::simple::VectorConfidenceConnectedImageFilter::setInitialNeighborhoodRadius "/**
virtual void itk::VectorConfidenceConnectedImageFilter::SetInitialNeighborhoodRadius(unsigned int _arg)

Get/Set the radius of the neighborhood over which the statistics are evaluated
*/"

%javamethodmodifiers itk::simple::VectorConfidenceConnectedImageFilter::getInitialNeighborhoodRadius "/**
virtual const unsigned int& itk::VectorConfidenceConnectedImageFilter::GetInitialNeighborhoodRadius()

Get/Set the radius of the neighborhood over which the statistics are evaluated
*/"

%javamethodmodifiers itk::simple::VectorConfidenceConnectedImageFilter::setReplaceValue "/**
virtual void itk::VectorConfidenceConnectedImageFilter::SetReplaceValue(OutputImagePixelType _arg)

Set/Get value to replace thresholded pixels
*/"

%javamethodmodifiers itk::simple::VectorConfidenceConnectedImageFilter::getReplaceValue "/**
virtual OutputImagePixelType itk::VectorConfidenceConnectedImageFilter::GetReplaceValue() const

Set/Get value to replace thresholded pixels
*/"

// Generated for ClassName from /scratch/blowekamp/build/ITK-gerrit/Utilities/Doxygen/xml/classitk_1_1VectorConnectedComponentImageFilter.xml
%typemap(javaimports) itk::simple::VectorConnectedComponentImageFilter "/** A connected components filter that labels the objects in a vector image. Two vectors are pointing similar directions if one minus their dot product is less than a threshold. Vectors that are 180 degrees out of phase are similar. Assumes that vectors are normalized.

*/"
%javamethodmodifiers itk::simple::VectorConnectedComponentImageFilter::execute() "
/**A connected components filter that labels the objects in a vector image. Two vectors are pointing similar directions if one minus their dot product is less than a threshold. Vectors that are 180 degrees out of phase are similar. Assumes that vectors are normalized.

*/"
%javamethodmodifiers itk::simple::VectorConnectedComponent "/**
A connected components filter that labels the objects in a vector image. Two vectors are pointing similar directions if one minus their dot product is less than a threshold. Vectors that are 180 degrees out of phase are similar. Assumes that vectors are normalized.

*/"
%javamethodmodifiers itk::simple::VectorConnectedComponentImageFilter::setDistanceThreshold "/**
virtual void itk::VectorConnectedComponentImageFilter::SetDistanceThreshold(const InputValueType &thresh)

*/"

%javamethodmodifiers itk::simple::VectorConnectedComponentImageFilter::getDistanceThreshold "/**
virtual InputValueType itk::VectorConnectedComponentImageFilter::GetDistanceThreshold()

*/"

// Generated for ClassName from /scratch/blowekamp/build/ITK-gerrit/Utilities/Doxygen/xml/classitk_1_1VectorIndexSelectionCastImageFilter.xml
%typemap(javaimports) itk::simple::VectorIndexSelectionCastImageFilter "/** Extracts the selected index of the vector that is the input pixel type.

This filter is templated over the input image type and output image type.
The filter expect the input image pixel type to be a vector and the output image pixel type to be a scalar. The only requirement on the type used for representing the vector is that it must provide an operator[].
par Wiki Examples:

li All Examples

li Extract a component/channel of a vector image

*/"
%javamethodmodifiers itk::simple::VectorIndexSelectionCastImageFilter::execute() "
/**Extracts the selected index of the vector that is the input pixel type.

*/"
%javamethodmodifiers itk::simple::VectorIndexSelectionCast "/**
Extracts the selected index of the vector that is the input pixel type.

This filter is templated over the input image type and output image type.
The filter expect the input image pixel type to be a vector and the output image pixel type to be a scalar. The only requirement on the type used for representing the vector is that it must provide an operator[].
par Wiki Examples:

li All Examples

li Extract a component/channel of a vector image

*/"
%javamethodmodifiers itk::simple::VectorIndexSelectionCastImageFilter::setIndex "/**
void itk::VectorIndexSelectionCastImageFilter::SetIndex(unsigned int i)

Get/Set methods for the index
*/"

%javamethodmodifiers itk::simple::VectorIndexSelectionCastImageFilter::getIndex "/**
unsigned int itk::VectorIndexSelectionCastImageFilter::GetIndex(void) const

*/"

// Generated for ClassName from /scratch/blowekamp/build/ITK-gerrit/Utilities/Doxygen/xml/classitk_1_1VectorMagnitudeImageFilter.xml
%typemap(javaimports) itk::simple::VectorMagnitudeImageFilter "/** Take an image of vectors as input and produce an image with the magnitude of those vectors.

The filter expects the input image pixel type to be a vector and the output image pixel type to be a scalar.
This filter assumes that the PixelType of the input image is a VectorType that provides a GetNorm() method.
par Wiki Examples:

li All Examples

li Compute the magnitude of each pixel in a vector image to produce a magnitude image

*/"
%javamethodmodifiers itk::simple::VectorMagnitudeImageFilter::execute() "
/**Take an image of vectors as input and produce an image with the magnitude of those vectors.

*/"
%javamethodmodifiers itk::simple::VectorMagnitude "/**
Take an image of vectors as input and produce an image with the magnitude of those vectors.

The filter expects the input image pixel type to be a vector and the output image pixel type to be a scalar.
This filter assumes that the PixelType of the input image is a VectorType that provides a GetNorm() method.
par Wiki Examples:

li All Examples

li Compute the magnitude of each pixel in a vector image to produce a magnitude image

*/"
// Generated for ClassName from /scratch/blowekamp/build/ITK-gerrit/Utilities/Doxygen/xml/classitk_1_1VotingBinaryImageFilter.xml
%typemap(javaimports) itk::simple::VotingBinaryImageFilter "/** Applies a voting operation in a neighborhood of each pixel.

note Pixels which are not Foreground or Background will remain unchanged.
see  Image
see 
see  Neighborhood
see 
see  NeighborhoodOperator
see 
see  NeighborhoodIterator

*/"
%javamethodmodifiers itk::simple::VotingBinaryImageFilter::execute() "
/**Applies a voting operation in a neighborhood of each pixel.

*/"
%javamethodmodifiers itk::simple::VotingBinary "/**
Applies a voting operation in a neighborhood of each pixel.

note Pixels which are not Foreground or Background will remain unchanged.
see  Image
see 
see  Neighborhood
see 
see  NeighborhoodOperator
see 
see  NeighborhoodIterator

*/"
%javamethodmodifiers itk::simple::VotingBinaryImageFilter::setRadius "/**
virtual void itk::VotingBinaryImageFilter::SetRadius(InputSizeType _arg)

Set the radius of the neighborhood used to compute the median.
*/"

%javamethodmodifiers itk::simple::VotingBinaryImageFilter::getRadius "/**
virtual const InputSizeType& itk::VotingBinaryImageFilter::GetRadius()

Get the radius of the neighborhood used to compute the median
*/"

%javamethodmodifiers itk::simple::VotingBinaryImageFilter::setBirthThreshold "/**
virtual void itk::VotingBinaryImageFilter::SetBirthThreshold(unsigned int _arg)

Birth threshold. Pixels that are OFF will turn ON when the number of neighbors ON is larger than the value defined in this threshold.
*/"

%javamethodmodifiers itk::simple::VotingBinaryImageFilter::getBirthThreshold "/**
virtual const unsigned int& itk::VotingBinaryImageFilter::GetBirthThreshold()

Birth threshold. Pixels that are OFF will turn ON when the number of neighbors ON is larger than the value defined in this threshold.
*/"

%javamethodmodifiers itk::simple::VotingBinaryImageFilter::setSurvivalThreshold "/**
virtual void itk::VotingBinaryImageFilter::SetSurvivalThreshold(unsigned int _arg)

Survival threshold. Pixels that are ON will turn OFF when the number of neighbors ON is smaller than the value defined in this survival threshold.
*/"

%javamethodmodifiers itk::simple::VotingBinaryImageFilter::getSurvivalThreshold "/**
virtual const unsigned int& itk::VotingBinaryImageFilter::GetSurvivalThreshold()

Survival threshold. Pixels that are ON will turn OFF when the number of neighbors ON is smaller than the value defined in this survival threshold.
*/"

%javamethodmodifiers itk::simple::VotingBinaryImageFilter::setForegroundValue "/**
virtual void itk::VotingBinaryImageFilter::SetForegroundValue(InputPixelType _arg)

Set the value associated with the Foreground (or the object) on the binary input image and the Background .
*/"

%javamethodmodifiers itk::simple::VotingBinaryImageFilter::getForegroundValue "/**
virtual const InputPixelType& itk::VotingBinaryImageFilter::GetForegroundValue()

Get the value associated with the Foreground (or the object) on the binary input image and the Background .
*/"

%javamethodmodifiers itk::simple::VotingBinaryImageFilter::setBackgroundValue "/**
virtual void itk::VotingBinaryImageFilter::SetBackgroundValue(InputPixelType _arg)

Set the value associated with the Foreground (or the object) on the binary input image and the Background .
*/"

%javamethodmodifiers itk::simple::VotingBinaryImageFilter::getBackgroundValue "/**
virtual const InputPixelType& itk::VotingBinaryImageFilter::GetBackgroundValue()

Get the value associated with the Foreground (or the object) on the binary input image and the Background .
*/"

// Generated for ClassName from /scratch/blowekamp/build/ITK-gerrit/Utilities/Doxygen/xml/classitk_1_1VotingBinaryHoleFillingImageFilter.xml
%typemap(javaimports) itk::simple::VotingBinaryHoleFillingImageFilter "/** Fills in holes and cavities by applying a voting operation on each pixel.

see  Image
see 
see  VotingBinaryImageFilter
see 
see  VotingBinaryIterativeHoleFillingImageFilter
see 
see  Neighborhood
see 
see  NeighborhoodOperator
see 
see  NeighborhoodIterator

*/"
%javamethodmodifiers itk::simple::VotingBinaryHoleFillingImageFilter::execute() "
/**Fills in holes and cavities by applying a voting operation on each pixel.

*/"
%javamethodmodifiers itk::simple::VotingBinaryHoleFilling "/**
Fills in holes and cavities by applying a voting operation on each pixel.

see  Image
see 
see  VotingBinaryImageFilter
see 
see  VotingBinaryIterativeHoleFillingImageFilter
see 
see  Neighborhood
see 
see  NeighborhoodOperator
see 
see  NeighborhoodIterator

*/"
%javamethodmodifiers itk::simple::VotingBinaryHoleFillingImageFilter::setMajorityThreshold "/**
virtual void itk::VotingBinaryHoleFillingImageFilter::SetMajorityThreshold(unsigned int _arg)

Majority threshold. It is the number of pixels over 50% that will decide whether an OFF pixel will become ON or not. For example, if the neighborhood of a pixel has 124 pixels (excluding itself), the 50% will be 62, and if you set upd a Majority threshold of 5, that means that the filter will require 67 or more neighbor pixels to be ON in order to switch the current OFF pixel to ON. The default value is 1.
*/"

%javamethodmodifiers itk::simple::VotingBinaryHoleFillingImageFilter::getMajorityThreshold "/**
virtual const unsigned int& itk::VotingBinaryHoleFillingImageFilter::GetMajorityThreshold()

Majority threshold. It is the number of pixels over 50% that will decide whether an OFF pixel will become ON or not. For example, if the neighborhood of a pixel has 124 pixels (excluding itself), the 50% will be 62, and if you set upd a Majority threshold of 5, that means that the filter will require 67 or more neighbor pixels to be ON in order to switch the current OFF pixel to ON. The default value is 1.
*/"

// Generated for ClassName from /scratch/blowekamp/build/ITK-gerrit/Utilities/Doxygen/xml/classitk_1_1VotingBinaryIterativeHoleFillingImageFilter.xml
%typemap(javaimports) itk::simple::VotingBinaryIterativeHoleFillingImageFilter "/** Fills in holes and cavities by iteratively applying a voting operation.

This filter uses internally the VotingBinaryHoleFillingImageFilter, and runs it iteratively until no pixels are being changed or until it reaches the maximum number of iterations. The purpose of the filter is to fill in holes of medium size (tens of pixels in radius). In principle the number of iterations is related to the size of the holes to be filled in. The larger the holes, the more iteration must be run with this filter in order to fill in the full hole. The size of the neighborhood is also related to the curvature of the hole borders and therefore the hole size. Note that as a collateral effect this filter may also fill in cavities in the external side of structures.
This filter is templated over a single image type because the output image type must be the same as the input image type. This is required in order to make the iterations possible, since the output image of one iteration is taken as the input image for the next iteration.
see  Image
see 
see  VotingBinaryImageFilter
see 
see  VotingBinaryHoleFillingImageFilter
see 
see  Neighborhood
see 
see  NeighborhoodOperator
see 
see  NeighborhoodIterator

*/"
%javamethodmodifiers itk::simple::VotingBinaryIterativeHoleFillingImageFilter::execute() "
/**Fills in holes and cavities by iteratively applying a voting operation.

*/"
%javamethodmodifiers itk::simple::VotingBinaryIterativeHoleFilling "/**
Fills in holes and cavities by iteratively applying a voting operation.

This filter uses internally the VotingBinaryHoleFillingImageFilter, and runs it iteratively until no pixels are being changed or until it reaches the maximum number of iterations. The purpose of the filter is to fill in holes of medium size (tens of pixels in radius). In principle the number of iterations is related to the size of the holes to be filled in. The larger the holes, the more iteration must be run with this filter in order to fill in the full hole. The size of the neighborhood is also related to the curvature of the hole borders and therefore the hole size. Note that as a collateral effect this filter may also fill in cavities in the external side of structures.
This filter is templated over a single image type because the output image type must be the same as the input image type. This is required in order to make the iterations possible, since the output image of one iteration is taken as the input image for the next iteration.
see  Image
see 
see  VotingBinaryImageFilter
see 
see  VotingBinaryHoleFillingImageFilter
see 
see  Neighborhood
see 
see  NeighborhoodOperator
see 
see  NeighborhoodIterator

*/"
%javamethodmodifiers itk::simple::VotingBinaryIterativeHoleFillingImageFilter::setRadius "/**
virtual void itk::VotingBinaryIterativeHoleFillingImageFilter::SetRadius(InputSizeType _arg)

Set the radius of the neighborhood used to compute the median.
*/"

%javamethodmodifiers itk::simple::VotingBinaryIterativeHoleFillingImageFilter::getRadius "/**
virtual const InputSizeType& itk::VotingBinaryIterativeHoleFillingImageFilter::GetRadius()

Get the radius of the neighborhood used to compute the median
*/"

%javamethodmodifiers itk::simple::VotingBinaryIterativeHoleFillingImageFilter::setMaximumNumberOfIterations "/**
virtual void itk::VotingBinaryIterativeHoleFillingImageFilter::SetMaximumNumberOfIterations(unsigned int _arg)

Maximum number of iterations. This filter is executed iteratively as long as at least one pixel has changed in a previous iteration, or until the maximum number of iterations has been reached.
*/"

%javamethodmodifiers itk::simple::VotingBinaryIterativeHoleFillingImageFilter::getMaximumNumberOfIterations "/**
virtual const unsigned int& itk::VotingBinaryIterativeHoleFillingImageFilter::GetMaximumNumberOfIterations()

Maximum number of iterations. This filter is executed iteratively as long as at least one pixel has changed in a previous iteration, or until the maximum number of iterations has been reached.
*/"

%javamethodmodifiers itk::simple::VotingBinaryIterativeHoleFillingImageFilter::setMajorityThreshold "/**
virtual void itk::VotingBinaryIterativeHoleFillingImageFilter::SetMajorityThreshold(unsigned int _arg)

Majority threshold. It is the number of pixels over 50% that will decide whether an OFF pixel will become ON or not. For example, if the neighborhood of a pixel has 124 pixels (excluding itself), the 50% will be 62, and if you set upd a Majority threshold of 5, that means that the filter will require 67 or more neighbor pixels to be ON in order to switch the current OFF pixel to ON. The default value is 1.
*/"

%javamethodmodifiers itk::simple::VotingBinaryIterativeHoleFillingImageFilter::getMajorityThreshold "/**
virtual const unsigned int& itk::VotingBinaryIterativeHoleFillingImageFilter::GetMajorityThreshold()

Majority threshold. It is the number of pixels over 50% that will decide whether an OFF pixel will become ON or not. For example, if the neighborhood of a pixel has 124 pixels (excluding itself), the 50% will be 62, and if you set upd a Majority threshold of 5, that means that the filter will require 67 or more neighbor pixels to be ON in order to switch the current OFF pixel to ON. The default value is 1.
*/"

%javamethodmodifiers itk::simple::VotingBinaryIterativeHoleFillingImageFilter::setForegroundValue "/**
virtual void itk::VotingBinaryIterativeHoleFillingImageFilter::SetForegroundValue(InputPixelType _arg)

Set the value associated with the Foreground (or the object) on the binary input image and the Background .
*/"

%javamethodmodifiers itk::simple::VotingBinaryIterativeHoleFillingImageFilter::getForegroundValue "/**
virtual const InputPixelType& itk::VotingBinaryIterativeHoleFillingImageFilter::GetForegroundValue()

Get the value associated with the Foreground (or the object) on the binary input image and the Background .
*/"

%javamethodmodifiers itk::simple::VotingBinaryIterativeHoleFillingImageFilter::setBackgroundValue "/**
virtual void itk::VotingBinaryIterativeHoleFillingImageFilter::SetBackgroundValue(InputPixelType _arg)

Set the value associated with the Foreground (or the object) on the binary input image and the Background .
*/"

%javamethodmodifiers itk::simple::VotingBinaryIterativeHoleFillingImageFilter::getBackgroundValue "/**
virtual const InputPixelType& itk::VotingBinaryIterativeHoleFillingImageFilter::GetBackgroundValue()

Get the value associated with the Foreground (or the object) on the binary input image and the Background .
*/"

// Generated for ClassName from /scratch/blowekamp/build/ITK-gerrit/Utilities/Doxygen/xml/classitk_1_1WhiteTopHatImageFilter.xml
%typemap(javaimports) itk::simple::WhiteTopHatImageFilter "/** White top hat extract local maxima that are larger than the structuring element.

Top-hats are described in Chapter 4.5 of Pierre Soille's book Morphological Image Analysis: Principles and Applications, Second Edition, Springer, 2003.
author Gaetan Lehmann. Biologie du Developpement et de la Reproduction, INRA de Jouy-en-Josas, France.

*/"
%javamethodmodifiers itk::simple::WhiteTopHatImageFilter::execute() "
/**White top hat extract local maxima that are larger than the structuring element.

*/"
%javamethodmodifiers itk::simple::WhiteTopHat "/**
White top hat extract local maxima that are larger than the structuring element.

Top-hats are described in Chapter 4.5 of Pierre Soille's book Morphological Image Analysis: Principles and Applications, Second Edition, Springer, 2003.
author Gaetan Lehmann. Biologie du Developpement et de la Reproduction, INRA de Jouy-en-Josas, France.

*/"
%javamethodmodifiers itk::simple::WhiteTopHatImageFilter::setSafeBorder "/**
virtual void itk::WhiteTopHatImageFilter::SetSafeBorder(bool _arg)

A safe border is added to input image to avoid borders effects and remove it once the closing is done
*/"

%javamethodmodifiers itk::simple::WhiteTopHatImageFilter::getSafeBorder "/**
virtual const bool& itk::WhiteTopHatImageFilter::GetSafeBorder()

A safe border is added to input image to avoid borders effects and remove it once the closing is done
*/"

// Generated for ClassName from /scratch/blowekamp/build/ITK-gerrit/Utilities/Doxygen/xml/classitk_1_1WienerDeconvolutionImageFilter.xml
%typemap(javaimports) itk::simple::WienerDeconvolutionImageFilter "/** The Wiener deconvolution image filter is designed to restore an image convolved with a blurring kernel while keeping noise enhancement to a minimum.

The Wiener filter aims to minimize noise enhancement induced by frequencies with low signal-to-noise ratio. The Wiener filter kernel is defined in the frequency domain asf$W(omega) = H^*(omega) / (|H(omega)|^2 + (1 / SNR(omega)))f$ wheref$H(omega)f$ is the Fourier transform of the blurring kernel with which the original image was convolved and the signal-to-noise ratiof$SNR(omega)f$ .f$SNR(omega)f$ is defined byf$P_f(omega) / P_n(omega)f$ wheref$P_f(omega)f$ is the power spectral density of the uncorrupted signal andf$P_n(omega)f$ is the power spectral density of the noise. When applied to the input blurred image, this filter produces an estimatef$hat{f}(x)f$ of the true underlying signalf$f(x)f$ that minimizes the expected error betweenf$hat{f}(x)f$ andf$f(x)f$ .
This filter requires two inputs, the image to be deconvolved and the blurring kernel. These two inputs can be set using the methods SetInput()and SetKernelImage(), respectively.
The power spectral densities of the signal and noise are typically unavailable for a given problem. In particular,f$P_f(omega)f$ cannot be computed fromf$f(x)f$ because this unknown signal is precisely the signal that this filter aims to recover. Nevertheless, it is common for the noise to have a power spectral density that is flat or decreasing significantly more slowly than the power spectral density of a typical image as the frequencyf$omegaf$ increases. Hence,f$P_n(omega)f$ can typically be approximated with a constant, and this filter makes this assumption (see the NoiseVariance member variable).f$P_f(omega)f$ , on the other hand, will vary with input. This filter computes the power spectral density of the input blurred image, subtracts the power spectral density of the noise, and uses the result as the estimate off$P_f(omega)f$ .
For further information on the Wiener deconvolution filter, please see Digital Signal Processing by Kenneth R. Castleman, Prentice Hall, 1995
author Gaetan Lehmann, Biologie du Developpement et de la Reproduction, INRA de Jouy-en-Josas, France
Chris Mullins, The University of North Carolina at Chapel Hill
Cory Quammen, The University of North Carolina at Chapel Hill

*/"
%javamethodmodifiers itk::simple::WienerDeconvolutionImageFilter::execute() "
/**The Wiener deconvolution image filter is designed to restore an image convolved with a blurring kernel while keeping noise enhancement to a minimum.

*/"
%javamethodmodifiers itk::simple::WienerDeconvolution "/**
The Wiener deconvolution image filter is designed to restore an image convolved with a blurring kernel while keeping noise enhancement to a minimum.

The Wiener filter aims to minimize noise enhancement induced by frequencies with low signal-to-noise ratio. The Wiener filter kernel is defined in the frequency domain asf$W(omega) = H^*(omega) / (|H(omega)|^2 + (1 / SNR(omega)))f$ wheref$H(omega)f$ is the Fourier transform of the blurring kernel with which the original image was convolved and the signal-to-noise ratiof$SNR(omega)f$ .f$SNR(omega)f$ is defined byf$P_f(omega) / P_n(omega)f$ wheref$P_f(omega)f$ is the power spectral density of the uncorrupted signal andf$P_n(omega)f$ is the power spectral density of the noise. When applied to the input blurred image, this filter produces an estimatef$hat{f}(x)f$ of the true underlying signalf$f(x)f$ that minimizes the expected error betweenf$hat{f}(x)f$ andf$f(x)f$ .
This filter requires two inputs, the image to be deconvolved and the blurring kernel. These two inputs can be set using the methods SetInput()and SetKernelImage(), respectively.
The power spectral densities of the signal and noise are typically unavailable for a given problem. In particular,f$P_f(omega)f$ cannot be computed fromf$f(x)f$ because this unknown signal is precisely the signal that this filter aims to recover. Nevertheless, it is common for the noise to have a power spectral density that is flat or decreasing significantly more slowly than the power spectral density of a typical image as the frequencyf$omegaf$ increases. Hence,f$P_n(omega)f$ can typically be approximated with a constant, and this filter makes this assumption (see the NoiseVariance member variable).f$P_f(omega)f$ , on the other hand, will vary with input. This filter computes the power spectral density of the input blurred image, subtracts the power spectral density of the noise, and uses the result as the estimate off$P_f(omega)f$ .
For further information on the Wiener deconvolution filter, please see Digital Signal Processing by Kenneth R. Castleman, Prentice Hall, 1995
author Gaetan Lehmann, Biologie du Developpement et de la Reproduction, INRA de Jouy-en-Josas, France
Chris Mullins, The University of North Carolina at Chapel Hill
Cory Quammen, The University of North Carolina at Chapel Hill

*/"
%javamethodmodifiers itk::simple::WienerDeconvolutionImageFilter::setNoiseVariance "/**
virtual void itk::WienerDeconvolutionImageFilter::SetNoiseVariance(double _arg)

Set/get the variance of the zero-mean Gaussian white noise assumed to be added to the input.
*/"

%javamethodmodifiers itk::simple::WienerDeconvolutionImageFilter::getNoiseVariance "/**
virtual double itk::WienerDeconvolutionImageFilter::GetNoiseVariance() const

Set/get the variance of the zero-mean Gaussian white noise assumed to be added to the input.
*/"

// Generated for ClassName from /scratch/blowekamp/build/ITK-gerrit/Utilities/Doxygen/xml/classitk_1_1WrapPadImageFilter.xml
%typemap(javaimports) itk::simple::WrapPadImageFilter "/** Increase the image size by padding with replicants of the input image value.

 WrapPadImageFilterchanges the image bounds of an image. Added pixels are filled in with a wrapped replica of the input image. For instance, if the output image needs a pixel that istwo pixels to the left of the LargestPossibleRegionof the input image, the value assigned will be from the pixeltwo pixels inside the right boundary of the LargestPossibleRegion. The image bounds of the output must be specified.
Visual explanation of padding regions.This filter is implemented as a multithreaded filter. It provides a ThreadedGenerateData()method for its implementation.
see  MirrorPadImageFilter, ConstantPadImageFilter
par Wiki Examples:

li All Examples

li Pad an image by wrapping

*/"
%javamethodmodifiers itk::simple::WrapPadImageFilter::execute() "
/**Increase the image size by padding with replicants of the input image value.

*/"
%javamethodmodifiers itk::simple::WrapPad "/**
Increase the image size by padding with replicants of the input image value.

 WrapPadImageFilterchanges the image bounds of an image. Added pixels are filled in with a wrapped replica of the input image. For instance, if the output image needs a pixel that istwo pixels to the left of the LargestPossibleRegionof the input image, the value assigned will be from the pixeltwo pixels inside the right boundary of the LargestPossibleRegion. The image bounds of the output must be specified.
Visual explanation of padding regions.This filter is implemented as a multithreaded filter. It provides a ThreadedGenerateData()method for its implementation.
see  MirrorPadImageFilter, ConstantPadImageFilter
par Wiki Examples:

li All Examples

li Pad an image by wrapping

*/"
// Generated for ClassName from /scratch/blowekamp/build/ITK-gerrit/Utilities/Doxygen/xml/classitk_1_1XorImageFilter.xml
%typemap(javaimports) itk::simple::XorImageFilter "/** Computes the XOR logical operator pixel-wise between two images.

This class is templated over the types of the two input images and the type of the output image. Numeric conversions (castings) are done by the C++ defaults.
Since the logical XOR operation is only defined in C++ for integer types, the images passed to this filter must comply with the requirement of using integer pixel type.
The total operation over one pixel will be
output_pixel=static_cast<OutputPixelType>(input1_pixel^input2_pixel)
Where ^ is the boolean XOR operator in C++.
par Wiki Examples:

li All Examples

li Binary XOR (exclusive OR) two images

*/"
%javamethodmodifiers itk::simple::XorImageFilter::execute() "
/**Computes the XOR logical operator pixel-wise between two images.

*/"
%javamethodmodifiers itk::simple::Xor "/**
Computes the XOR logical operator pixel-wise between two images.

This class is templated over the types of the two input images and the type of the output image. Numeric conversions (castings) are done by the C++ defaults.
Since the logical XOR operation is only defined in C++ for integer types, the images passed to this filter must comply with the requirement of using integer pixel type.
The total operation over one pixel will be
output_pixel=static_cast<OutputPixelType>(input1_pixel^input2_pixel)
Where ^ is the boolean XOR operator in C++.
par Wiki Examples:

li All Examples

li Binary XOR (exclusive OR) two images

*/"
// Generated for ClassName from /scratch/blowekamp/build/ITK-gerrit/Utilities/Doxygen/xml/classitk_1_1YenThresholdImageFilter.xml
%typemap(javaimports) itk::simple::YenThresholdImageFilter "/** Threshold an image using the Yen Threshold.

This filter creates a binary thresholded image that separates an image into foreground and background components. The filter computes the threshold using the YenThresholdCalculatorand applies that theshold to the input image using the BinaryThresholdImageFilter.
author Richard Beare
Gaetan Lehmann. Biologie du Developpement et de la Reproduction, INRA de Jouy-en-Josas, France.
This implementation was taken from the Insight Journal paper:http://hdl.handle.net/10380/3279orhttp://www.insight-journal.org/browse/publication/811
see HistogramThresholdImageFitler

*/"
%javamethodmodifiers itk::simple::YenThresholdImageFilter::execute() "
/**Threshold an image using the Yen Threshold.

*/"
%javamethodmodifiers itk::simple::YenThreshold "/**
Threshold an image using the Yen Threshold.

This filter creates a binary thresholded image that separates an image into foreground and background components. The filter computes the threshold using the YenThresholdCalculatorand applies that theshold to the input image using the BinaryThresholdImageFilter.
author Richard Beare
Gaetan Lehmann. Biologie du Developpement et de la Reproduction, INRA de Jouy-en-Josas, France.
This implementation was taken from the Insight Journal paper:http://hdl.handle.net/10380/3279orhttp://www.insight-journal.org/browse/publication/811
see HistogramThresholdImageFitler

*/"
// Generated for ClassName from /scratch/blowekamp/build/ITK-gerrit/Utilities/Doxygen/xml/classitk_1_1ZeroCrossingImageFilter.xml
%typemap(javaimports) itk::simple::ZeroCrossingImageFilter "/** This filter finds the closest pixel to the zero-crossings (sign changes) in a signed itk::Image.

Pixels closest to zero-crossings are labeled with a foreground value. All other pixels are marked with a background value. The algorithm works by detecting differences in sign among neighbors using city-block style connectivity (4-neighbors in 2d, 6-neighbors in 3d, etc.).
par Inputs and Outputs
The input to this filter is an itk::Imageof arbitrary dimension. The algorithm assumes a signed data type (zero-crossings are not defined for unsigned data types), and requires that operator>, operator<, operator==, and operator!= are defined.
par The output of the filter is a binary, labeled image of user-specified type. By default, zero-crossing pixels are labeled with a default ``foreground'' value of itk::NumericTraits<OutputDataType>::One, where OutputDataType is the data type of the output image. All other pixels are labeled with a default ``background'' value of itk::NumericTraits<OutputDataType>::Zero.
par Parameters
There are two parameters for this filter. ForegroundValue is the value that marks zero-crossing pixels. The BackgroundValue is the value given to all other pixels.
see  Image
see 
see  Neighborhood
see 
see  NeighborhoodOperator
see 
see  NeighborhoodIterator
par Wiki Examples:

li All Examples

li Find zero crossings in a signed image

*/"
%javamethodmodifiers itk::simple::ZeroCrossingImageFilter::execute() "
/**This filter finds the closest pixel to the zero-crossings (sign changes) in a signed itk::Image.

*/"
%javamethodmodifiers itk::simple::ZeroCrossing "/**
This filter finds the closest pixel to the zero-crossings (sign changes) in a signed itk::Image.

Pixels closest to zero-crossings are labeled with a foreground value. All other pixels are marked with a background value. The algorithm works by detecting differences in sign among neighbors using city-block style connectivity (4-neighbors in 2d, 6-neighbors in 3d, etc.).
par Inputs and Outputs
The input to this filter is an itk::Imageof arbitrary dimension. The algorithm assumes a signed data type (zero-crossings are not defined for unsigned data types), and requires that operator>, operator<, operator==, and operator!= are defined.
par The output of the filter is a binary, labeled image of user-specified type. By default, zero-crossing pixels are labeled with a default ``foreground'' value of itk::NumericTraits<OutputDataType>::One, where OutputDataType is the data type of the output image. All other pixels are labeled with a default ``background'' value of itk::NumericTraits<OutputDataType>::Zero.
par Parameters
There are two parameters for this filter. ForegroundValue is the value that marks zero-crossing pixels. The BackgroundValue is the value given to all other pixels.
see  Image
see 
see  Neighborhood
see 
see  NeighborhoodOperator
see 
see  NeighborhoodIterator
par Wiki Examples:

li All Examples

li Find zero crossings in a signed image

*/"
%javamethodmodifiers itk::simple::ZeroCrossingImageFilter::setForegroundValue "/**
virtual void itk::ZeroCrossingImageFilter::SetForegroundValue(OutputImagePixelType _arg)

Set/Get the label value for zero-crossing pixels.
*/"

%javamethodmodifiers itk::simple::ZeroCrossingImageFilter::getForegroundValue "/**
virtual OutputImagePixelType itk::ZeroCrossingImageFilter::GetForegroundValue() const

Set/Get the label value for zero-crossing pixels.
*/"

%javamethodmodifiers itk::simple::ZeroCrossingImageFilter::setBackgroundValue "/**
virtual void itk::ZeroCrossingImageFilter::SetBackgroundValue(OutputImagePixelType _arg)

Set/Get the label value for non-zero-crossing pixels.
*/"

%javamethodmodifiers itk::simple::ZeroCrossingImageFilter::getBackgroundValue "/**
virtual OutputImagePixelType itk::ZeroCrossingImageFilter::GetBackgroundValue() const

Set/Get the label value for non-zero-crossing pixels.
*/"

// Generated for ClassName from /scratch/blowekamp/build/ITK-gerrit/Utilities/Doxygen/xml/classitk_1_1ZeroCrossingBasedEdgeDetectionImageFilter.xml
%typemap(javaimports) itk::simple::ZeroCrossingBasedEdgeDetectionImageFilter "/** This filter implements a zero-crossing based edge detecor.

The zero-crossing based edge detector looks for pixels in the Laplacian of an image where the value of the Laplacian passes through zeropoints where the Laplacian changes sign. Such points often occur at ``edges'' in imagesi.e. points where the intensity of the image changes rapidly, but they also occur at places that are not as easy to associate with edges. It is best to think of the zero crossing detector as some sort of feature detector rather than as a specific edge detector.
par Zero crossings always lie on closed contours and so the output from the zero crossing detector is usually a binary image with single pixel thickness lines showing the positions of the zero crossing points.
par In this implementation, the input image is first smoothed with a Gaussian filter, then the LaplacianImageFilteris applied to smoothed image. Finally the zero-crossing of the Laplacian of the smoothed image is detected. The output is a binary image.
par Inputs and Outputs
The input to the filter should be a scalar, itk::Imageof arbitrary dimension. The output image is a binary, labeled image. See itkZeroCrossingImageFilter for more information on requirements of the data type of the output.
par To use this filter, first set the parameters (variance and maximum error) needed by the embedded DiscreteGaussianImageFilter, i.e. See DiscreteGaussianImageFilterfor information about these parameters. Optionally, you may also set foreground and background values for the zero-crossing filter. The default label values are Zero for the background and One for the foreground, as defined in NumericTraitsfor the data type of the output image.
see  DiscreteGaussianImageFilter
see 
see  LaplacianImageFilter
see 
see  ZeroCrossingImageFilter

*/"
%javamethodmodifiers itk::simple::ZeroCrossingBasedEdgeDetectionImageFilter::execute() "
/**This filter implements a zero-crossing based edge detecor.

*/"
%javamethodmodifiers itk::simple::ZeroCrossingBasedEdgeDetection "/**
This filter implements a zero-crossing based edge detecor.

The zero-crossing based edge detector looks for pixels in the Laplacian of an image where the value of the Laplacian passes through zeropoints where the Laplacian changes sign. Such points often occur at ``edges'' in imagesi.e. points where the intensity of the image changes rapidly, but they also occur at places that are not as easy to associate with edges. It is best to think of the zero crossing detector as some sort of feature detector rather than as a specific edge detector.
par Zero crossings always lie on closed contours and so the output from the zero crossing detector is usually a binary image with single pixel thickness lines showing the positions of the zero crossing points.
par In this implementation, the input image is first smoothed with a Gaussian filter, then the LaplacianImageFilteris applied to smoothed image. Finally the zero-crossing of the Laplacian of the smoothed image is detected. The output is a binary image.
par Inputs and Outputs
The input to the filter should be a scalar, itk::Imageof arbitrary dimension. The output image is a binary, labeled image. See itkZeroCrossingImageFilter for more information on requirements of the data type of the output.
par To use this filter, first set the parameters (variance and maximum error) needed by the embedded DiscreteGaussianImageFilter, i.e. See DiscreteGaussianImageFilterfor information about these parameters. Optionally, you may also set foreground and background values for the zero-crossing filter. The default label values are Zero for the background and One for the foreground, as defined in NumericTraitsfor the data type of the output image.
see  DiscreteGaussianImageFilter
see 
see  LaplacianImageFilter
see 
see  ZeroCrossingImageFilter

*/"
%javamethodmodifiers itk::simple::ZeroCrossingBasedEdgeDetectionImageFilter::setVariance "/**
void itk::ZeroCrossingBasedEdgeDetectionImageFilter::SetVariance(const typename ArrayType::ValueType v)

Set the variance parameter needed by the embedded gaussian filter
*/"

%javamethodmodifiers itk::simple::ZeroCrossingBasedEdgeDetectionImageFilter::getVariance "/**
virtual const ArrayType itk::ZeroCrossingBasedEdgeDetectionImageFilter::GetVariance() const

Standard get/set macros for Gaussian filter parameters.
*/"

%javamethodmodifiers itk::simple::ZeroCrossingBasedEdgeDetectionImageFilter::setForegroundValue "/**
virtual void itk::ZeroCrossingBasedEdgeDetectionImageFilter::SetForegroundValue(OutputImagePixelType _arg)

Get/Set the label values for the ZeroCrossingImageFilter
*/"

%javamethodmodifiers itk::simple::ZeroCrossingBasedEdgeDetectionImageFilter::getForegroundValue "/**
virtual OutputImagePixelType itk::ZeroCrossingBasedEdgeDetectionImageFilter::GetForegroundValue() const

Get/Set the label values for the ZeroCrossingImageFilter
*/"

%javamethodmodifiers itk::simple::ZeroCrossingBasedEdgeDetectionImageFilter::setBackgroundValue "/**
virtual void itk::ZeroCrossingBasedEdgeDetectionImageFilter::SetBackgroundValue(OutputImagePixelType _arg)

Get/Set the label values for the ZeroCrossingImageFilter
*/"

%javamethodmodifiers itk::simple::ZeroCrossingBasedEdgeDetectionImageFilter::getBackgroundValue "/**
virtual OutputImagePixelType itk::ZeroCrossingBasedEdgeDetectionImageFilter::GetBackgroundValue() const

Get/Set the label values for the ZeroCrossingImageFilter
*/"

%javamethodmodifiers itk::simple::ZeroCrossingBasedEdgeDetectionImageFilter::setMaximumError "/**
void itk::ZeroCrossingBasedEdgeDetectionImageFilter::SetMaximumError(const typename ArrayType::ValueType v)

Set the MaximumError parameter needed by the embedded gaussian filter This value is used to set the desired maximum error of the gaussian approximation. Maximum error is the difference between the area under the discrete Gaussian curve and the area under the continuous Gaussian. Maximum error affects the Gaussian operator size. The value must be between 0.0 and 1.0.
*/"

%javamethodmodifiers itk::simple::ZeroCrossingBasedEdgeDetectionImageFilter::getMaximumError "/**
virtual const ArrayType itk::ZeroCrossingBasedEdgeDetectionImageFilter::GetMaximumError() const

Standard get/set macros for Gaussian filter parameters.
*/"

// Generated for ClassName from /scratch/blowekamp/build/ITK-gerrit/Utilities/Doxygen/xml/classitk_1_1ZeroFluxNeumannPadImageFilter.xml
%typemap(javaimports) itk::simple::ZeroFluxNeumannPadImageFilter "/** Increase the image size by padding according to the zero-flux Neumann boundary condition.

A filter which extends the image size and fill the missing pixels according to a Neumann boundary condition where first, upwind derivatives on the boundary are zero. This is a useful condition in solving some classes of differential equations.
For example, invoking this filter on an image with a corner like:****************12345(where*denotespixelsthatlie**33556outsideoftheimageboundary)**44678returns the following padded image:1112345111234511123453333556(notethecornervalues)4444678
author Gaetan Lehmann. Biologie du Developpement et de la Reproduction, INRA de Jouy-en-Josas, France.
see  WrapPadImageFilter, MirrorPadImageFilter, ConstantPadImageFilter, ZeroFluxNeumannBoundaryCondition

*/"
%javamethodmodifiers itk::simple::ZeroFluxNeumannPadImageFilter::execute() "
/**Increase the image size by padding according to the zero-flux Neumann boundary condition.

*/"
%javamethodmodifiers itk::simple::ZeroFluxNeumannPad "/**
Increase the image size by padding according to the zero-flux Neumann boundary condition.

A filter which extends the image size and fill the missing pixels according to a Neumann boundary condition where first, upwind derivatives on the boundary are zero. This is a useful condition in solving some classes of differential equations.
For example, invoking this filter on an image with a corner like:****************12345(where*denotespixelsthatlie**33556outsideoftheimageboundary)**44678returns the following padded image:1112345111234511123453333556(notethecornervalues)4444678
author Gaetan Lehmann. Biologie du Developpement et de la Reproduction, INRA de Jouy-en-Josas, France.
see  WrapPadImageFilter, MirrorPadImageFilter, ConstantPadImageFilter, ZeroFluxNeumannBoundaryCondition

*/"
