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

/// Web Audio API
///
/// https://webaudio.github.io/web-audio-api/

// ignore_for_file: unused_import

///  The interface of the Web Audio API acts as a base definition for
/// online and offline audio-processing graphs, as represented by
/// [AudioContext] and [OfflineAudioContext] respectively. You
/// wouldn't use directly — you'd use its features via one of these
/// two inheriting interfaces.
///  A can be a target of events, therefore it implements the
/// [EventTarget] interface.
///
///
///
///    EventTarget
///
///
///
///
///
///    BaseAudioContext
///
///

//use web_audio_api::context::{/*AudioContext as XAudioContext,*/ BaseAudioContext};
//use web_audio_api::MediaElement;
use crate::api::audio_buffer::{AudioBuffer, XAudioBuffer};
//use web_audio_api::buffer::AudioBuffer as YAudioBuffer;
use crate::api::node::AudioBufferSourceNode;
use crate::api::node::AudioDestinationNode;
use flutter_rust_bridge::frb;
use trace::trace;


use std::cell::Cell;
use log::Level;
use log::{info as i, trace as t, warn as w, error as e, debug as d};
use simple_log::*;
use flutter_logger::logger::log;
use web_audio_api::context::BaseAudioContext;
use crate::frb_generated::RustAutoOpaque;


thread_local! { static DEPTH: Cell<usize> = Cell::new(0); }



/// Documentation of the state
#[derive(Debug)]
#[frb(opaque)]
pub struct AudioContext
{
        my_cnx : web_audio_api::context::AudioContext,
}

/// Documentation of the behavior
impl AudioContext
{
        /// The constructor
        #[frb(sync)]
//        #[trace (prefix_enter="-> ", prefix_exit="<- ", logging)]
        pub fn new() -> AudioContext
        {
                AudioContext
                {
                        my_cnx: web_audio_api::context::AudioContext::default()
                }
        }

        #[frb(sync)]
        pub fn sample_rate(&self) -> f32
        {
                self.my_cnx.sample_rate()
        }

        #[frb(sync)]
        pub fn create_buffer(
                &self,
                number_of_channels: usize,
                length: usize,
                sample_rate: f32,
        ) -> AudioBuffer
        {
                let xaudiobuffer : XAudioBuffer = web_audio_api::context::AudioContext::create_buffer(&self.my_cnx, number_of_channels, length, sample_rate);
                AudioBuffer::new_from_xaudio_buffer(xaudiobuffer)
        }

        #[frb(sync)]
        pub fn create_buffer_source(&self) -> AudioBufferSourceNode
        {
                AudioBufferSourceNode::new(self, crate::api::node::AudioBufferSourceOptions::def())
        }

        pub fn destination(&self) -> AudioDestinationNode

        #[frb(sync)]
        pub fn get_cnx(&self) -> &web_audio_api::context::AudioContext {&self.my_cnx}

}

