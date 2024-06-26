/// {@category api}
/// {@subCategory Information displays}
//library toto;

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



use trace::trace;
use std::cell::Cell;
use log::Level;
use log::{info as i, trace as t, warn as w, error as e, debug as d};
use simple_log::*;
use flutter_logger::logger::log;

thread_local! { static DEPTH: Cell<usize> = Cell::new(0); }


//use flutter_logger::logger::log;

//#[trace (prefix_enter="-> ", prefix_exit="<- ", logging)]
pub fn mimi() -> String
{
	t!("DANS MIMI");
	log(Level::Trace, "coucou", "hello I am a log from toto");
	i!(target: "yak", "yak shaving for toto:?");
        d!(target: "totoxxx", "Dou Gou Dou GOU!!!");


	"bobo".to_string()
}

