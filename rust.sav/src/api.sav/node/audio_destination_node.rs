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
use web_audio_api::node::AudioNode as XAudioNode;
use crate::api::node::AudioNode;

pub struct AudioDestinationNode
{
        x_audio_destination_node : web_audio_api::node::AudioDestinationNode,

}

impl AudioDestinationNode
{
}

impl AudioNode for AudioDestinationNode
{
        #[frb(sync)]
        fn get_x_node(&self) ->  &dyn web_audio_api::node::AudioNode
        {
                &self.x_audio_destination_node
        }
}
