s.options.device_("MME : Line 1 (Virtual Audio Cable)");
SuperDirt.postBadValues = false

(
s.options.numBuffers = 1024 * 16;
s.options.memSize = 8192 * 16;
s.options.maxNodes = 1024 * 32;
s.options.numOutputBusChannels = 2;
s.waitForBoot {
	~dirt = SuperDirt(2, s);
	~dirt.loadSoundFiles("C:\\Users\\kindohm\\studio\\tidal-samples\\tracks\\dare-to-step-away\\*");
	~dirt.loadSoundFiles("C:\\Users\\kindohm\\studio\\tidal-samples\\tracks\\c-code\\*");
	~dirt.loadSoundFiles("C:\\Users\\kindohm\\studio\\tidal-samples\\tracks\\d-code\\*");
	~dirt.loadSoundFiles("C:\\Users\\kindohm\\studio\\tidal-samples\\tracks\\github\\*");
	~dirt.loadSoundFiles("C:\\Users\\kindohm\\studio\\tidal-samples\\tracks\\info\\*");
	~dirt.loadSoundFiles("C:\\Users\\kindohm\\studio\\tidal-samples\\tracks\\it-me\\*");
	~dirt.loadSoundFiles("C:\\Users\\kindohm\\studio\\tidal-samples\\tracks\\lake-effect\\*");
	~dirt.loadSoundFiles("C:\\Users\\kindohm\\studio\\tidal-samples\\tracks\\melt\\*");
	~dirt.loadSoundFiles("C:\\Users\\kindohm\\studio\\tidal-samples\\tracks\\mint\\*");
	~dirt.loadSoundFiles("C:\\Users\\kindohm\\studio\\tidal-samples\\tracks\\rebellion\\*");
	~dirt.loadSoundFiles("C:\\Users\\kindohm\\studio\\tidal-samples\\tracks\\risc-chip\\*");
	~dirt.loadSoundFiles("C:\\Users\\kindohm\\studio\\tidal-samples\\tracks\\shared\\*");
	~dirt.loadSoundFiles("C:\\Users\\kindohm\\studio\\tidal-samples\\tracks\\this-cant-be-it\\*");
	~dirt.loadSoundFiles("C:\\Users\\kindohm\\studio\\tidal-samples\\tracks\\wreckage\\*");
	~dirt.loadSoundFiles("C:\\Users\\kindohm\\studio\\tidal-samples\\tracks\\zerolikes\\*");
	s.sync;
	~dirt.start(57120, [0, 0]);
};
s.latency = 0.0;
);

(
MIDIClient.init;
MIDIClient.list; // to check, which are there, you can query them
)

~midiOut = MIDIOut.newByName("Focusrite USB MIDI", "Focusrite USB MIDI");
~midiOut.latency = 0;
~dirt.soundLibrary.addMIDI(\midi, ~midiOut);


~loopBeMidiOut = MIDIOut.newByName("LoopBe Internal MIDI", "LoopBe Internal MIDI");
~loopBeMidiOut.latency = 0;
~dirt.soundLibrary.addMIDI(\harmor, ~loopBeMidiOut);
