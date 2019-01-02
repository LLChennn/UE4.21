#
# Build LowLevelAABB
#

SET(PHYSX_SOURCE_DIR ${PROJECT_SOURCE_DIR}/../../../)

SET(LL_SOURCE_DIR ${PHYSX_SOURCE_DIR}/LowLevelAABB/src)

FIND_PACKAGE(nvToolsExt REQUIRED)

SET(LOWLEVELAABB_PLATFORM_INCLUDES
	${NVTOOLSEXT_INCLUDE_DIRS}
	${PHYSX_SOURCE_DIR}/Common/src/mac
	${PHYSX_SOURCE_DIR}/LowLevelAABB/mac/include
	${PHYSX_SOURCE_DIR}/GpuBroadPhase/include
	${PHYSX_SOURCE_DIR}/GpuBroadPhase/src
)


SET(LOWLEVELAABB_COMPILE_DEFS

	# Common to all configurations
	${PHYSX_MAC_COMPILE_DEFS};PX_PHYSX_STATIC_LIB

	$<$<CONFIG:debug>:${PHYSX_MAC_DEBUG_COMPILE_DEFS};PX_PHYSX_DLL_NAME_POSTFIX=DEBUG;>
	$<$<CONFIG:checked>:${PHYSX_MAC_CHECKED_COMPILE_DEFS};PX_PHYSX_DLL_NAME_POSTFIX=CHECKED;>
	$<$<CONFIG:profile>:${PHYSX_MAC_PROFILE_COMPILE_DEFS};PX_PHYSX_DLL_NAME_POSTFIX=PROFILE;>
	$<$<CONFIG:release>:${PHYSX_MAC_RELEASE_COMPILE_DEFS};>
)

# include common low level AABB settings
INCLUDE(../common/LowLevelAABB.cmake)

TARGET_LINK_LIBRARIES(LowLevelAABB PUBLIC ${NVTOOLSEXT_LIBRARIES})

# enable -fPIC so we can link static libs with the editor
SET_TARGET_PROPERTIES(LowLevelAABB PROPERTIES POSITION_INDEPENDENT_CODE TRUE)