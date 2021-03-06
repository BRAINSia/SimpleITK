#==========================================================================
#
#   Copyright Insight Software Consortium
#
#   Licensed under the Apache License, Version 2.0 (the "License");
#   you may not use this file except in compliance with the License.
#   You may obtain a copy of the License at
#
#          http://www.apache.org/licenses/LICENSE-2.0.txt
#
#   Unless required by applicable law or agreed to in writing, software
#   distributed under the License is distributed on an "AS IS" BASIS,
#   WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
#   See the License for the specific language governing permissions and
#   limitations under the License.
#
#==========================================================================*/

import SimpleITK as sitk
import sys

# this test is suppose to test the python interface to the sitk::Image


image = sitk.Image( 10, 10, sitk.sitkInt32 )

image + image
image + 1
1 + image
image - image
image - 1
1 - image
image * image
image * 1
1 * image
image / image
image / 1
1 / image
image & image
image | image
image ^ image
~image

image += image
image -= image
image *= image
image /= image

image = image * 0

image.SetPixel( 0, 0, 1 )
image[ [0,1] ]  = 2
image[ 9,9 ]  = 3

image.GetPixel( 1,1 )
#image.GetPixel( [1,1] )
image[1,1]
image[ [ 1,1 ] ]

if sum(image) != 6:
    print "image sum not 6"
    sys.exit( 1 )

if len( image ) != 100:
    print "len not 100!"
    sys.exit(1)
