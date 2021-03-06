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
    $classpath : "test.aria.touch.widgets.DoubleSliderTpl",
    $hasScript : true,
    $wlibs : {
        "touch" : "aria.touch.widgets.TouchWidgetLib"
    }
}}

{macro main()}
  <div style="padding: 40px">
    {@touch:DoubleSlider {
      width : 400,
      id : "slider",
      bind : {
          value : {
              to: "slider",
              inside: data
          }
      },
      onchange : {
          fn : this.valueChange,
          scope : this
      }
    }/}
  </div>

  {section {
      id : "display",
      macro : "values",
      bindRefreshTo : [{
          inside : data,
          to : "slider"
      }]
  }/}
{/macro}

{macro values()}
    Values are ${data.slider ? data.slider.join(" - ") : "still undefined"}
{/macro}

{/Template}