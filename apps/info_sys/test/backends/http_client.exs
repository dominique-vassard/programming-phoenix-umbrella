defmodule InfoSys.Test.HTTPClient do
  @cur_dir File.cwd!()
  @wolfram_xml File.read!("#{@cur_dir}/../info_sys/test/fixtures/wolfram.xml")
  def request(url) do
    url = to_string(url)
    cond do
      String.contains?(url, "1%20+%201") ->
        {:ok, {[], [], @wolfram_xml}}
        true ->
          {:ok, {[], [], "<queryresult></queryresult>"}}
    end
  end
end