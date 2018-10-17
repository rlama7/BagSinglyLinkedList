##
## Auto Generated makefile by CodeLite IDE
## any manual changes will be erased      
##
## Debug
ProjectName            :=SinglyLinkedList
ConfigurationName      :=Debug
WorkspacePath          :=C:/Xplorer/SFSU-Summer-2018/CSC340/assignments/Assignment02/Assignment-02-Code/Assignment02/Assignment02
ProjectPath            :=C:/Xplorer/SFSU-Summer-2018/CSC340/assignments/Assignment02/Assignment-02-Code/Assignment02/Assignment02/A02_v_02
IntermediateDirectory  :=./Debug
OutDir                 := $(IntermediateDirectory)
CurrentFileName        :=
CurrentFilePath        :=
CurrentFileFullPath    :=
User                   :=xplorer7plr
Date                   :=16/10/2018
CodeLitePath           :="C:/Program Files/CodeLite"
LinkerName             :=C:/MinGW/bin/g++.exe
SharedObjectLinkerName :=C:/MinGW/bin/g++.exe -shared -fPIC
ObjectSuffix           :=.o
DependSuffix           :=.o.d
PreprocessSuffix       :=.i
DebugSwitch            :=-g 
IncludeSwitch          :=-I
LibrarySwitch          :=-l
OutputSwitch           :=-o 
LibraryPathSwitch      :=-L
PreprocessorSwitch     :=-D
SourceSwitch           :=-c 
OutputFile             :=$(IntermediateDirectory)/$(ProjectName)
Preprocessors          :=
ObjectSwitch           :=-o 
ArchiveOutputSwitch    := 
PreprocessOnlySwitch   :=-E
ObjectsFileList        :="SinglyLinkedList.txt"
PCHCompileFlags        :=
MakeDirCommand         :=makedir
RcCmpOptions           := 
RcCompilerName         :=C:/MinGW/bin/windres.exe
LinkOptions            :=  
IncludePath            :=  $(IncludeSwitch). $(IncludeSwitch). 
IncludePCH             := 
RcIncludePath          := 
Libs                   := 
ArLibs                 :=  
LibPath                := $(LibraryPathSwitch). 

##
## Common variables
## AR, CXX, CC, AS, CXXFLAGS and CFLAGS can be overriden using an environment variables
##
AR       := C:/MinGW/bin/ar.exe rcu
CXX      := C:/MinGW/bin/g++.exe
CC       := C:/MinGW/bin/gcc.exe
CXXFLAGS := -std=c++14 -Wall -g -O0 -Wall $(Preprocessors)
CFLAGS   :=  -g -O0 -Wall $(Preprocessors)
ASFLAGS  := 
AS       := C:/MinGW/bin/as.exe


##
## User defined environment variables
##
CodeLiteDir:=C:\Program Files\CodeLite
Objects0=$(IntermediateDirectory)/LinkedBag.cpp$(ObjectSuffix) $(IntermediateDirectory)/LinkedBagClient340.cpp$(ObjectSuffix) $(IntermediateDirectory)/LinkedBag340.cpp$(ObjectSuffix) $(IntermediateDirectory)/Node.cpp$(ObjectSuffix) 



Objects=$(Objects0) 

##
## Main Build Targets 
##
.PHONY: all clean PreBuild PrePreBuild PostBuild MakeIntermediateDirs
all: $(OutputFile)

$(OutputFile): $(IntermediateDirectory)/.d $(Objects) 
	@$(MakeDirCommand) $(@D)
	@echo "" > $(IntermediateDirectory)/.d
	@echo $(Objects0)  > $(ObjectsFileList)
	$(LinkerName) $(OutputSwitch)$(OutputFile) @$(ObjectsFileList) $(LibPath) $(Libs) $(LinkOptions)

MakeIntermediateDirs:
	@$(MakeDirCommand) "./Debug"


$(IntermediateDirectory)/.d:
	@$(MakeDirCommand) "./Debug"

PreBuild:


##
## Objects
##
$(IntermediateDirectory)/LinkedBag.cpp$(ObjectSuffix): LinkedBag.cpp $(IntermediateDirectory)/LinkedBag.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "C:/Xplorer/SFSU-Summer-2018/CSC340/assignments/Assignment02/Assignment-02-Code/Assignment02/Assignment02/A02_v_02/LinkedBag.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/LinkedBag.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/LinkedBag.cpp$(DependSuffix): LinkedBag.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/LinkedBag.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/LinkedBag.cpp$(DependSuffix) -MM LinkedBag.cpp

$(IntermediateDirectory)/LinkedBag.cpp$(PreprocessSuffix): LinkedBag.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/LinkedBag.cpp$(PreprocessSuffix) LinkedBag.cpp

$(IntermediateDirectory)/LinkedBagClient340.cpp$(ObjectSuffix): LinkedBagClient340.cpp $(IntermediateDirectory)/LinkedBagClient340.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "C:/Xplorer/SFSU-Summer-2018/CSC340/assignments/Assignment02/Assignment-02-Code/Assignment02/Assignment02/A02_v_02/LinkedBagClient340.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/LinkedBagClient340.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/LinkedBagClient340.cpp$(DependSuffix): LinkedBagClient340.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/LinkedBagClient340.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/LinkedBagClient340.cpp$(DependSuffix) -MM LinkedBagClient340.cpp

$(IntermediateDirectory)/LinkedBagClient340.cpp$(PreprocessSuffix): LinkedBagClient340.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/LinkedBagClient340.cpp$(PreprocessSuffix) LinkedBagClient340.cpp

$(IntermediateDirectory)/LinkedBag340.cpp$(ObjectSuffix): LinkedBag340.cpp $(IntermediateDirectory)/LinkedBag340.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "C:/Xplorer/SFSU-Summer-2018/CSC340/assignments/Assignment02/Assignment-02-Code/Assignment02/Assignment02/A02_v_02/LinkedBag340.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/LinkedBag340.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/LinkedBag340.cpp$(DependSuffix): LinkedBag340.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/LinkedBag340.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/LinkedBag340.cpp$(DependSuffix) -MM LinkedBag340.cpp

$(IntermediateDirectory)/LinkedBag340.cpp$(PreprocessSuffix): LinkedBag340.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/LinkedBag340.cpp$(PreprocessSuffix) LinkedBag340.cpp

$(IntermediateDirectory)/Node.cpp$(ObjectSuffix): Node.cpp $(IntermediateDirectory)/Node.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "C:/Xplorer/SFSU-Summer-2018/CSC340/assignments/Assignment02/Assignment-02-Code/Assignment02/Assignment02/A02_v_02/Node.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/Node.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/Node.cpp$(DependSuffix): Node.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/Node.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/Node.cpp$(DependSuffix) -MM Node.cpp

$(IntermediateDirectory)/Node.cpp$(PreprocessSuffix): Node.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/Node.cpp$(PreprocessSuffix) Node.cpp


-include $(IntermediateDirectory)/*$(DependSuffix)
##
## Clean
##
clean:
	$(RM) -r ./Debug/


