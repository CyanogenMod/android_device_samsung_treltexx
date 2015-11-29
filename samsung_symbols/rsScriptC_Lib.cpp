/*
 * Copyright (C) 2015 The CyanogenMod Project
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

#define RS_BASE_OBJ(_t_) typedef struct { const _t_* p; } __attribute__((packed, aligned(4)))

/* frameworks/rs/rsContext.h */
class Context;

/* frameworks/rs/rsObjectBase.h */
class ObjectBase;

RS_BASE_OBJ(ObjectBase) rs_object_base;

/* void rsrSetObject(const Context *rsc, rs_object_base *dst, const ObjectBase *src) */
extern "C" int _ZN7android12renderscript12rsrSetObjectEPKNS0_7ContextEPNS0_14rs_object_baseEPKNS0_10ObjectBaseE(
        const Context *rsc, rs_object_base *dst, const ObjectBase *src);

/* void rsrSetObject(const Context *rsc, s_object_base *dst, ObjectBase *src) */
extern "C" int _ZN7android12renderscript12rsrSetObjectEPKNS0_7ContextEPPNS0_10ObjectBaseES5_(
        const Context *rsc, rs_object_base *dst, ObjectBase *src)
{
    return _ZN7android12renderscript12rsrSetObjectEPKNS0_7ContextEPNS0_14rs_object_baseEPKNS0_10ObjectBaseE(
           rsc, dst, src);
}
