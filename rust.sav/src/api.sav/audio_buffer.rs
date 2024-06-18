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
pub use web_audio_api::buffer::AudioBuffer as XAudioBuffer;
//use web_audio_api::AudioBufferOptions;


pub struct AudioBufferOptions {
        /// The number of channels for the buffer
        pub number_of_channels: usize,
        /// The length in sample frames of the buffer
        pub length: usize,
        /// The sample rate in Hz for the buffer
        pub sample_rate: f32,
}


#[frb(opaque)]
#[no_mangle]
pub struct AudioBuffer
{
        pub my_buffer : XAudioBuffer,
}

impl AudioBuffer
{

        #[frb(sync)]
        pub fn new(options: AudioBufferOptions) -> Self
        {
                crate::api::audio_buffer::AudioBuffer
                {
                        my_buffer: AudioBuffer::create_xaudio_buffer(options)
                }
        }

        #[frb(sync)]
        fn create_xaudio_buffer(options: AudioBufferOptions) -> XAudioBuffer
        {
                XAudioBuffer::new
                (
                        web_audio_api::buffer::AudioBufferOptions
                        {
                                number_of_channels: options.number_of_channels,
                                length: options.length,
                                sample_rate: options.sample_rate
                        }
                )
        }


        #[frb(sync)]
        pub fn new_from_xaudio_buffer(buf: XAudioBuffer) -> AudioBuffer
        {
                AudioBuffer
                {
                        my_buffer:  buf
                }
        }

        #[frb(sync)]
        pub fn from(samples: Vec<Vec<f32>>, sample_rate: f32) -> Self
        {
                crate::api::audio_buffer::AudioBuffer
                {
                        my_buffer: XAudioBuffer::from(samples, sample_rate)
                }

        }

}

