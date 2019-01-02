// Copyright (c) 2017 The Chromium Embedded Framework Authors. All rights
// reserved. Use of this source code is governed by a BSD-style license that
// can be found in the LICENSE file.
//
// ---------------------------------------------------------------------------
//
// This file was generated by the CEF translator tool. If making changes by
// hand only do so within the body of existing method and function
// implementations. See the translator.README.txt file in the tools directory
// for more information.
//

#ifndef CEF_LIBCEF_DLL_CPPTOC_IMAGE_CPPTOC_H_
#define CEF_LIBCEF_DLL_CPPTOC_IMAGE_CPPTOC_H_
#pragma once

#if !defined(BUILDING_CEF_SHARED)
#error This file can be included DLL-side only
#endif

#include "include/cef_image.h"
#include "include/capi/cef_image_capi.h"
#include "libcef_dll/cpptoc/cpptoc_ref_counted.h"

// Wrap a C++ class with a C structure.
// This class may be instantiated and accessed DLL-side only.
class CefImageCppToC
    : public CefCppToCRefCounted<CefImageCppToC, CefImage, cef_image_t> {
 public:
  CefImageCppToC();
};

#endif  // CEF_LIBCEF_DLL_CPPTOC_IMAGE_CPPTOC_H_
