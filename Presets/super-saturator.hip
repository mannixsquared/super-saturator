Processor 
Type SynthChain ID super-saturator Bypassed Gain 	      �?Balance 	        VoiceLimit 	      P@KillFadeTime 	      4@IconColour 0 packageName  BuildVersion �  EditorStates BodyShown 0 Visible 1 Solo 0 Folded 1  ChildProcessors  Processor Type MidiProcessorChain ID Midi Processor Bypassed EditorStates BodyShown 1 Visible 0 Solo 0  ChildProcessors  Processor Type ScriptProcessor ID Interface Bypassed Script �Content.makeFrontInterface(400, 370);function onNoteOn()
{
	
}
 function onNoteOff()
{
	
}
 function onController()
{
	
}
 function onTimer()
{
	
}
 function onControl(number, value)
{
	
}
  EditorStates BodyShown 1 Visible 1 Solo 0 contentShown 1 onInitOpen 1  ChildProcessors   Content  Control type ScriptSlider id Drive value 	      �? Control type ScriptSlider id Frequency value 	     �b@ Control type ScriptSlider id Knob1 value 	         Control type ScriptSlider id Knob2 value 	      �? UIData  ContentProperties DeviceType 	Desktop Component 	type ScriptImage id Background x 	      �y 	        fileName {PROJECT_FOLDER}overlay.png width 	     ��@height 	      w@locked 1 popupOnRightClick 0 Component type ScriptLabel id Label1 x 	     �a@y 	      k@parentComponent Background text DRIVE itemColour2 0 textColour 4280339679 fontName Avenir Next fontSize 	      ,@fontStyle Bold editable 0 width 	      ^@height 	      4@ Component type ScriptLabel id Label2 x 	     �a@y 	     �t@parentComponent Background text FREQUENCY itemColour2 0 textColour 4280339679 fontName Avenir Next fontSize 	      ,@fontStyle Bold editable 0 width 	      ^@height 	      4@ Component type ScriptImage id Logo x 	      4@y 	      4@fileName {PROJECT_FOLDER}logo.png  Component type ScriptLabel id Title x 	      T@y 	      >@text SUPER SATURATOR fontName Avenir Next fontSize 	      8@width 	     �g@height 	      >@alignment left textColour 4294964705 editable 0  Component type ScriptSlider id Drive x 	      a@y 	      W@filmstripImage {PROJECT_FOLDER}knob.png height 	      `@numStrips 	     �O@width 	      `@processorId Saturator parameterId Drive defaultValue 	      �?min 	      �?max 	      $@middlePosition 	      @isPluginParameter 1 pluginParameterName Drive  Component type ScriptFloatingTile id FloatingTile1 x 	      >@y 	     �a@ContentType MatrixPeakMeter bgColour 4278190080 itemColour 4283782485 itemColour2 4280427042 Data {
  "ProcessorId": "Input",
  "Index": 0,
  "FollowWorkspace": false,
  "SegmentLedSize": 1.0,
  "UpDecayTime": 0.0,
  "DownDecayTime": 0.0,
  "UseSourceChannels": true,
  "SkewFactor": 1.0,
  "PaddingSize": 1.0,
  "ShowMaxPeak": 1.0,
  "ChannelIndexes": [
    0,
    1
  ]
} width (   height �    Component type ScriptSlider id Frequency x 	      e@y 	     �p@processorId Saturator parameterId Frequency isPluginParameter 1 pluginParameterName Frequency min 	      I@max 	     @�@defaultValue 	     �b@filmstripImage {PROJECT_FOLDER}knob.png numStrips 	     �O@width 	      P@height 	      P@middlePosition 	     �b@scaleFactor 	      �? Component type ScriptFloatingTile id FloatingTile2 x 	     �t@y 	     �a@ContentType MatrixPeakMeter bgColour 4278190080 itemColour 4283782485 itemColour2 4280427042 Data {
  "ProcessorId": "Output",
  "Index": 0,
  "FollowWorkspace": false,
  "SegmentLedSize": 1.0,
  "UpDecayTime": 0.0,
  "DownDecayTime": 0.0,
  "UseSourceChannels": true,
  "SkewFactor": 1.0,
  "PaddingSize": 1.0,
  "ShowMaxPeak": 1.0,
  "ChannelIndexes": [
    0,
    1
  ]
} width (   height �    Component type ScriptLabel id Label3 x 	      t@y 	      ,@text V1.0 alignment right width 	     �Q@height 	      >@fontStyle Bold fontName Avenir Next fontSize 	      0@textColour 4280339679 itemColour2 0  Component type ScriptLabel id Label4 x 	     `p@y 	     �A@text © Mannix² 2024 fontName Avenir Next alignment right fontSize 	      0@itemColour2 0 textColour 4294964705 editable  Component type ScriptLabel id Label5 x 	     �`@y 	     `s@fontName Avenir Next text 50Hz width 	      D@height 	      4@alignment right textColour 4294964705 editable  Component type ScriptLabel id Label6 x 	     �l@y 	     `s@fontName Avenir Next text 	2,000Hz width 	      D@height 	      4@alignment left textColour 4294964705 editable  Component 
type ScriptLabel id Label7 x 	      >@y 	     �t@fontName Avenir Next text IN width 	      D@height 	      4@textColour 4294964705 editable  Component 
type ScriptLabel id Label8 x 	     �t@y 	     �t@fontName Avenir Next text OUT width 	      D@height 	      4@textColour 4294964705 editable  Component type ScriptSlider id Knob1 x 	     �t@y 	      T@filmstripImage !{PROJECT_FOLDER}subtle_knob.png numStrips 64 scaleFactor 0.5 mouseSensitivity 0.5 width 	      @@height 	      @@mode 	Decibel min 	      Y�max 	        stepSize 	�������?suffix  dB middlePosition 	     2�processorId Simple Gain1 parameterId Gain  Component 
type ScriptLabel id Label9 x 	     �t@y 	     @\@fontName Avenir Next text TRIM width 	      D@height 	      4@textColour 4294964705 editable  Component 
type ScriptLabel id 	Label10 x 	      >@y 	     @\@fontName Avenir Next text MIX width 	      D@height 	      4@textColour 4294964705 editable  Component type ScriptSlider id Knob2 x 	     �A@y 	      T@filmstripImage !{PROJECT_FOLDER}subtle_knob.png numStrips 64 scaleFactor 0.5 mouseSensitivity 0.5 width 	      @@height 	      @@mode NormalizedPercentage suffix % middlePosition 	      �?processorId Saturator parameterId Mix defaultValue 	      �? Processor Type ModulatorChain ID GainModulation Bypassed Intensity 	      �?EditorStates BodyShown 1 Visible 0 Solo 0  ChildProcessors   Processor Type ModulatorChain ID PitchModulation Bypassed Intensity 	        EditorStates BodyShown 1 Visible 0 Solo 0  ChildProcessors   Processor Type EffectChain ID FX Bypassed EditorStates BodyShown 1 Visible 0 Solo 0  ChildProcessors  Processor Type 	EmptyFX ID Input Bypassed EditorStates BodyShown 1 Visible 1 Solo 0  ChildProcessors   RoutingMatrix NumSourceChannels    Channel0     Send0 ����Channel1    Send1 ���� Processor Type 
ScriptFX ID Saturator Bypassed Script � function prepareToPlay(sampleRate, blockSize)
{
	
}
 function processBlock(channels)
{
	
}
 function onControl(number, value)
{
	
}
  EditorStates BodyShown 1 Visible 1 Solo 0  ChildProcessors   RoutingMatrix NumSourceChannels    Channel0     Send0 ����Channel1    Send1 ���� Content   Networks  Network ID Saturator Version 0.0.0  UIData  ContentProperties DeviceType 	Desktop  Processor Type 	EmptyFX ID Output Bypassed EditorStates BodyShown 1 Visible 1 Solo 0  ChildProcessors   RoutingMatrix NumSourceChannels    Channel0     Send0 ����Channel1    Send1 ���� Processor Type SimpleGain ID Simple Gain1 Bypassed Gain 	        Delay 	        Width 	      Y@Balance 	        InvertPolarity 	        EditorStates BodyShown 1 Visible 1 Solo 0  ChildProcessors  Processor Type ModulatorChain ID Gain Modulation Bypassed Intensity 	      �?EditorStates BodyShown 1 Visible 0 Solo 0 Folded 1  ChildProcessors   Processor Type ModulatorChain ID Delay Modulation Bypassed Intensity 	      �?EditorStates BodyShown 1 Visible 0 Solo 0 Folded 1  ChildProcessors   Processor Type ModulatorChain ID Width Modulation Bypassed Intensity 	      �?EditorStates BodyShown 1 Visible 0 Solo 0 Folded 1  ChildProcessors   Processor Type ModulatorChain ID Pan Modulation Bypassed Intensity 	      �?EditorStates BodyShown 1 Visible 0 Solo 0 Folded 1  ChildProcessors   RoutingMatrix NumSourceChannels    Channel0     Send0 ����Channel1    Send1 ���� Processor Type AudioLooper ID Audio Loop Player1 Bypassed Gain 	   �y�?Balance 	        VoiceLimit 	      p@KillFadeTime 	      4@IconColour 0 SyncMode 	      �?PitchTracking 	        LoopEnabled 	        RootNote 	      P@SampleStartMod 	        Reversed 	        FileName V/Users/johnmannix/Library/Mobile Documents/com~apple~CloudDocs/Music/Guitar Riff.wav min     max �) loopStart     loopEnd �) EditorStates BodyShown 1 Visible 1 Solo 0 Folded 1  ChildProcessors  Processor Type MidiProcessorChain ID Midi Processor Bypassed EditorStates BodyShown 1 Visible 0 Solo 0 Folded 1  ChildProcessors   Processor Type ModulatorChain ID GainModulation Bypassed Intensity 	      �?EditorStates BodyShown 1 Visible 0 Solo 0  ChildProcessors  Processor 	Type SimpleEnvelope ID DefaultEnvelope1 Bypassed Monophonic 	        Retrigger 	      �?Intensity 	      �?Attack 	      @Release 	     ��@LinearMode 	      �?EditorStates BodyShown 1 Visible 1 Solo 0  ChildProcessors  Processor Type ModulatorChain ID Attack Time Modulation Bypassed Intensity 	      �?EditorStates BodyShown 1 Visible 0 Solo 0 Folded 1  ChildProcessors   Processor Type ModulatorChain ID PitchModulation Bypassed Intensity 	        EditorStates BodyShown 1 Visible 0 Solo 0 Folded 1  ChildProcessors   Processor Type EffectChain ID FX Bypassed EditorStates BodyShown 1 Visible 0 Solo 0 Folded 1  ChildProcessors   RoutingMatrix NumSourceChannels    Channel0     Send0 ����Channel1    Send1 ���� RoutingMatrix NumSourceChannels    Channel0     Send0 ����Channel1    Send1 ���� macro_controls  macro name 	Macro 1 value 	        midi_cc ���� macro name 	Macro 2 value 	        midi_cc ���� macro name 	Macro 3 value 	        midi_cc ���� macro name 	Macro 4 value 	        midi_cc ���� macro name 	Macro 5 value 	        midi_cc ���� macro name 	Macro 6 value 	        midi_cc ���� macro name 	Macro 7 value 	        midi_cc ���� macro name 	Macro 8 value 	        midi_cc ���� MidiAutomation   MPEData Enabled  