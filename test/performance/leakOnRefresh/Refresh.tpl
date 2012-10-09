/*
 * Copyright 2012 Amadeus s.a.s.
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *    http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
{Template {
  $classpath : "test.performance.leakOnRefresh.Refresh",
  $hasScript : true
}}

{macro main()}
<div {id "container" /}></div>

{for i = 0; i < 500; i += 1}
<div {on click {fn: doNothing, scope: this} /}><span><strong><em><strike>${i}</strike></em></strong></span></div>
{/for}

</div>
{/macro}
{/Template}