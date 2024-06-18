/*
 * Copyright 2024 Canardoux.
 *
 * This file is part of the τ Project.
 *
 * τ (Tau) is free software: you can redistribute it and/or modify
 * it under the terms of the Mozilla Public License version 2 (MPL2.0),
 * as published by the Mozilla organization.
 *
 * τ is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * MPL General Public License for more details.
 *
 * This Source Code Form is subject to the terms of the Mozilla Public
 * License, v. 2.0. If a copy of the MPL was not distributed with this
 * file, You can obtain one at https://mozilla.org/MPL/2.0/.
 */

use flutter_rust_bridge::frb;
use web_audio_api::context::BaseAudioContext;
pub use web_audio_api::node::AudioBufferSourceNode as XAudioBufferSourceNode;
use web_audio_api::node::AudioScheduledSourceNode;
use crate::api::audio_buffer::{AudioBuffer, AudioBufferOptions};
use crate::api::node::AudioNode;
use crate::api::audio_context::AudioContext;

pub struct AudioBufferSourceOptions {
        pub buffer: Option<AudioBuffer>,
        pub detune: f32,
        pub loop_: bool,
        pub loop_start: f64,
        pub loop_end: f64,
        pub playback_rate: f32,
}

impl AudioBufferSourceOptions
{
        #[frb(sync)]
        pub fn def() -> AudioBufferSourceOptions
        {
                let xaudio_buffer_options = web_audio_api::node::AudioBufferSourceOptions::default();
                let toto : Option<AudioBuffer> = if xaudio_buffer_options.buffer.is_some(){Some(AudioBuffer::new_from_xaudio_buffer(xaudio_buffer_options.buffer.unwrap()))}else {None};
                AudioBufferSourceOptions
                {
                        buffer: toto,
                        detune: xaudio_buffer_options.detune,
                        loop_: xaudio_buffer_options.loop_,
                        loop_start: xaudio_buffer_options.loop_start,
                        loop_end: xaudio_buffer_options.loop_end,
                        playback_rate: xaudio_buffer_options.playback_rate,
                }
        }
}
#[frb(opaque)]
#[no_mangle]
pub struct AudioBufferSourceNode
{
        my_buffer_source_node : web_audio_api::node::AudioBufferSourceNode,
}

impl AudioBufferSourceNode
{
        #[frb(sync)]
        pub fn new(context: &AudioContext, options: AudioBufferSourceOptions) -> Self
        {
                let toto : Option<web_audio_api::buffer::AudioBuffer> = if options.buffer.is_some(){Some(options.buffer.unwrap().my_buffer)} else {None};
                AudioBufferSourceNode
                {
                        my_buffer_source_node: web_audio_api::node::AudioBufferSourceNode::new(context.get_cnx().base() ,
                                                                           web_audio_api::node::AudioBufferSourceOptions
                                                                           {
                                                                                   buffer: toto,
                                                                                   detune: options.detune,
                                                                                   loop_: options.loop_,
                                                                                   loop_start: options.loop_start,
                                                                                   loop_end: options.loop_end,
                                                                                   playback_rate: options.playback_rate
                                                                           })
                }
        }

        #[frb(sync)]
        pub fn start(&mut self)
        {
                self.my_buffer_source_node.start()
        }

}

impl AudioNode for AudioBufferSourceNode
{
        #[frb(sync)]
        fn get_x_node(&self) ->  &dyn web_audio_api::node::AudioNode
        {
                &self.my_buffer_source_node
        }
}
