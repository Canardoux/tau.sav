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
use trace::trace;

use web_audio_api::{MediaElement as XMediaElement};
use std::cell::Cell;
use std::sync::Mutex;
use log::Level;
use log::{info as i, trace as t, warn as w, error as e, debug as d};
use simple_log::*;
use flutter_logger::logger::log;
use crate::api::audio_context::AudioContext;
use crate::frb_generated::RustAutoOpaque;


thread_local! { static DEPTH: Cell<usize> = Cell::new(0); }



//struct Toto(Mutex<XMediaElement>);


#[derive(Debug)]
#[frb(opaque)]
#[no_mangle]
pub struct MediaElement
{
        my_media_element: Mutex<XMediaElement>,
}

#[no_mangle]
impl MediaElement
{
        /// The constructor
        #[frb(sync)]
        #[no_mangle]
        #[inline(never)]
        //#[trace (prefix_enter="-> ", prefix_exit="<- ", logging)]
        pub fn new(path: String) -> MediaElement
        {
                MediaElement
                {
                        my_media_element: Mutex::new(MediaElement::createXMediaElement(path))
                }
        }


        #[frb(sync)]
        #[inline(never)]
        fn createXMediaElement(path: String) -> XMediaElement
        {
                log(Level::Trace, "boubou", path.as_str());
                XMediaElement::new("toto").unwrap()
        }
        

}
