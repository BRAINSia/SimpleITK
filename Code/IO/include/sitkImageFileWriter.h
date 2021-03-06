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
#ifndef __sitkImageFileWriter_h
#define __sitkImageFileWriter_h

#include "sitkMacro.h"
#include "sitkImage.h"
#include "sitkMemberFunctionFactory.h"
#include "sitkIO.h"

#include <memory>

namespace itk {
  namespace simple {

    /** \class ImageFileWriter
     * \brief Write out a SimpleITK image to the specified file location
     *
     * This writer tries to write the image out using the image's type to the
     * location specified in FileName. If writing fails, an ITK exception is
     * thrown.
     */
    class SITKIO_EXPORT ImageFileWriter {
    public:
      typedef ImageFileWriter Self;

      // function pointer type
      typedef Self& (Self::*MemberFunctionType)( const Image& );

      // list of pixel types supported
      typedef NonLabelPixelIDTypeList PixelIDTypeList;

      ImageFileWriter( void );

      Self& SetFileName ( std::string fn );
      std::string GetFileName();

      Self& Execute ( const Image& );

    private:

      template <class T> Self& ExecuteInternal ( const Image& );

      std::string m_FileName;

      // friend to get access to executeInternal member
      friend struct detail::MemberFunctionAddressor<MemberFunctionType>;

      std::auto_ptr<detail::MemberFunctionFactory<MemberFunctionType> > m_MemberFactory;

    };
    SITKIO_EXPORT void WriteImage ( const Image& image, std::string filename );
  }
}

#endif
