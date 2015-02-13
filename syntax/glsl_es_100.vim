" Vim syntax file
" Language: GLSL ES 1.00
" Maintainer: ZeDuckMaster <zeduckmaster@free.fr>
" License: GPL
" Latest Revision: 0.2
"
" This program is free software: you can redistribute it and/or modify
" it under the terms of the GNU General Public License as published by
" the Free Software Foundation, either version 3 of the License, or
" (at your option) any later version.
"
"This program is distributed in the hope that it will be useful,
" but WITHOUT ANY WARRANTY; without even the implied warranty of
" MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
" GNU General Public License for more details.
"
" You should have received a copy of the GNU General Public License
" along with this program.  If not, see <http://www.gnu.org/licenses/>.

if !exists("main_syntax")
	if exists("b:current_syntax")
		finish
	endif
	let main_syntax = 'glsl_es_100'
endif

syn match glsles100Operator		"[](){}+\-~!*/%<>=&|^[]"
syn match glsles100PreProc		"#.*$"
syn match glsles100CommentLine	"//.*$"
syn match glsles100SpecialSwz	"\.[rgbaxyzw]\{2,4}\>"

syn region glsles100Comment		start="/\*" end="\*/" fold

syn keyword glsles100Macro		__LINE__ __FILE__ __VERSION__ GL_ES

syn keyword glsles100Keyword	attribute main const uniform varying break continue do for while if else in out inout true false lowp mediump highp precision invariant discard return

syn keyword glsles100Type		void bool int float bvec2 bvec3 bvec4 ivec2 ivec3 ivec4 vec2 vec3 vec4 mat2 mat3 mat4 sampler2D samplerCube struct

syn keyword glsles100Special	gl_Position gl_PointSize gl_FragCoord gl_FrontFacing gl_FragColor gl_FragData gl_MaxDrawBuffers gl_PointCoord gl_DepthRangeParameters gl_DepthRange

syn keyword glsles100Constant	gl_MaxVertexAttribs gl_MaxVertexUniform gl_MaxVaryingVectors gl_MaxVertexTextureImageUnits gl_MaxCombinedTextureImageUnits gl_MaxTextureImageUnits gl_MaxFragmentUniformVectors gl_MaxDrawBuffers

syn keyword glsles100FuncTrigo	radians degrees sin cos tan asin acos atan
syn keyword glsles100FuncExp	pow exp log exp2 log2 sqrt inversesqrt
syn keyword glsles100FuncCom	abs sign floor ceil fract mod min max clamp mix step smoothstep
syn keyword glsles100FuncGeo	length distance dot cross normalize faceforward reflect refract
syn keyword glsles100FuncMat	matrixCompMult
syn keyword glsles100FuncVec	lessThan lessThanEqual greaterThan greaterThanEqual equal notEqual any all not
syn keyword glsles100FuncTex	texture2D texture2DProj texture2DLod texture2DProjLod textureCube textureCubeLod

syn case ignore
syn match glsles100Decimal		display "\<[1-9]\+\d*\>"
syn match glsles100Octal		display "\<0[1-7]*\>"
syn match glsles100Hexa			display "\<0[xX][0-9a-fA-F]\+\>"
syn match glsles100Float		display "\<\d\+\.\d*"
syn match glsles100FloatExp		display "\<\d\+\.\d*[eE][+-]\=\d\+"
syn match glsles100FloatOpt		display "\.\d\+\>"
syn match glsles100FloatOptExp	display "\.\d\+[eE][+-]\=\d\+\>"


hi def link glsles100Decimal		Number
hi def link glsles100Octal			Number
hi def link glsles100Hexa			Number
hi def link glsles100Float			Number
hi def link glsles100FloatExp		Number
hi def link glsles100FloatOpt		Number
hi def link glsles100FloatOptExp	Number

hi def link glsles100CommentLine	Comment
hi def link glsles100Comment		Comment
hi def link glsles100Operator		Operator
hi def link glsles100Type			Type
hi def link glsles100Keyword		Keyword
hi def link glsles100PreProc		PreProc
hi def link glsles100Macro			PreProc
hi def link glsles100Special		Special
hi def link glsles100SpecialSwz		Special
hi def link glsles100Constant		Constant

hi def link glsles100FuncTrigo		Function
hi def link glsles100FuncExp		Function
hi def link glsles100FuncCom		Function
hi def link glsles100FuncGeo		Function
hi def link glsles100FuncMat		Function
hi def link glsles100FuncVec		Function
hi def link glsles100FuncTex		Function

let b:current_syntax = "glsl_es_100"
if main_syntax == 'glsl_es_100'
	unlet main_syntax
endif
