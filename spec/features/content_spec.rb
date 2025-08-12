describe "root URL" do
  it "has a functional page", points: 2 do
    visit "/"

    expect(page.status_code).to be(200)
  end
end

describe "root URL" do
  it "has a link with text 'Play Rock' that sends you to the route '/rock'", points: 2, hint: h("copy_must_match") do
    visit "/"

    click_on "Play Rock"

    expect(page).to have_current_path("/rock"),
      "Expected to click on 'Play Rock' link and be sent to '/rock' route but ended up somewhere else."
  end
end

describe "root URL" do
  it "has a link with text 'Play Paper' that sends you to the route '/paper'", points: 2, hint: h("copy_must_match") do
    visit "/"

    click_on "Play Paper"

    expect(page).to have_current_path("/paper"),
      "Expected to click on 'Play Paper' link and be sent to '/paper' route but ended up somewhere else."
  end
end

describe "root URL" do
  it "has a link with text 'Play Scissors' that sends you to the route '/scissors'", points: 2, hint: h("copy_must_match") do
    visit "/"

    click_on "Play Scissors"

    expect(page).to have_current_path("/scissors"),
      "Expected to click on 'Play Scissors' link and be sent to '/scissors' route but ended up somewhere else."
  end
end

describe "root URL" do
  it "has a heading with the text 'Welcome to Rock-Paper-Scissors!'", points: 2, hint: h("copy_must_match") do
    visit "/"

    expect { find("h1", :text => /Welcome\s+to\s+Rock-Paper-Scissors/i) }.to_not raise_error,
      "Expected page to have an h1 element with the text 'Welcome to Rock-Paper-Scissors!', but didn't find one."
  end
end

describe "/rock" do
  it "has a functional page", points: 2 do
    visit "/rock"

    expect(page.status_code).to be(200)
  end
end

describe "/rock" do
  it "has a link to the homepage", points: 2, hint: h("copy_must_match") do
    visit "/rock"

    click_on "Rules"

    expect(page).to have_current_path("/").or(have_current_path(/\/index/)),
      "Expected to click on 'Rules' link and be sent to '/' route but ended up somewhere else."
  end
end

describe "/rock" do
  it "has a link with text 'Play Rock' that sends you to the route '/rock'", points: 2, hint: h("copy_must_match") do
    visit "/rock"

    click_on "Play Rock"

    expect(page).to have_current_path("/rock"),
      "Expected to click on 'Play Rock' link and be sent to '/rock' route but ended up somewhere else."
  end
end

describe "/rock" do
  it "has a link with text 'Play Paper' that sends you to the route '/paper'", points: 2, hint: h("copy_must_match") do
    visit "/rock"

    click_on "Play Paper"

    expect(page).to have_current_path("/paper"),
      "Expected to click on 'Play Paper' link and be sent to '/paper' route but ended up somewhere else."
  end
end

describe "/rock" do
  it "has a link with text 'Play Scissors' that sends you to the route '/scissors'", points: 2, hint: h("copy_must_match") do
    visit "/rock"

    click_on "Play Scissors"

    expect(page).to have_current_path("/scissors"),
      "Expected to click on 'Play Scissors' link and be sent to '/scissors' route but ended up somewhere else."
  end
end

describe "/rock" do
  it "has a random computer move", points: 4, hint: h("randomness") do
    computer_played_rock = 0
    computer_played_paper = 0
    computer_played_scissors = 0

    15.times do
      visit "/rock"

      if (page.has_content?(/They played rock/i) &&
          page.has_no_content?(/They played paper/i) &&
          page.has_no_content?(/They played scissors/i))
        computer_played_rock = computer_played_rock + 1
      end

      if (page.has_content?(/They played paper/i) &&
          page.has_no_content?(/They played rock/i) &&
          page.has_no_content?(/They played scissors/i))
        computer_played_paper = computer_played_paper + 1
      end

      if (page.has_content?(/They played scissors/i) &&
          page.has_no_content?(/They played rock/i) &&
          page.has_no_content?(/They played paper/i))
        computer_played_scissors = computer_played_scissors + 1
      end
    end

    expect(computer_played_rock).to_not eq(0),
      "Expected to see 'They played rock' on the page at least once out of 15 tries but didn't."
    expect(computer_played_paper).to_not eq(0),
      "Expected to see 'They played paper' on the page at least once out of 15 tries but didn't."
    expect(computer_played_scissors).to_not eq(0),
      "Expected to see 'They played scissors' on the page at least once out of 15 tries but didn't."
  end
end

describe "/rock" do
  it "displays the correct outcome", points: 4, hint: h("copy_must_match") do
    visit "/rock"

    if page.has_content?(/They played rock/i)
      expect(page).to have_content(/We tied/i)
    elsif page.has_content?(/They played paper/i)
      expect(page).to have_content(/We lost/i)
    elsif page.has_content?(/They played scissors/i)
      expect(page).to have_content(/We won/i)
    else
      raise "Could not find computer move. Be sure your copy matches the target exactly"
    end
  end
end

describe "/paper" do
  it "has a functional page", points: 2 do
    visit "/paper"

    expect(page.status_code).to be(200)
  end
end

describe "/paper" do
  it "has a link that sends you to the route '/' with text 'Rules'", points: 2, hint: h("copy_must_match") do
    visit "/paper"

    click_on "Rules"

    expect(page).to have_current_path("/").or(have_current_path(/\/index/)),
      "Expected to click on 'Rules' link and be sent to '/' route but ended up somewhere else."
  end
end

describe "/paper" do
  it "has a link with text 'Play Rock' that sends you to the route '/rock'", points: 2, hint: h("copy_must_match") do
    visit "/paper"

    click_on "Play Rock"

    expect(page).to have_current_path("/rock"),
      "Expected to click on 'Play Rock' link and be sent to '/rock' route but ended up somewhere else."
  end
end

describe "/paper" do
  it "has a link with text 'Play Paper' that sends you to the route '/paper'", points: 2, hint: h("copy_must_match") do
    visit "/paper"

    click_on "Play Paper"

    expect(page).to have_current_path("/paper"),
      "Expected to click on 'Play Paper' link and be sent to '/paper' route but ended up somewhere else."
  end
end

describe "/paper" do
  it "has a link with text 'Play Scissors' that sends you to the route '/scissors'", points: 2, hint: h("copy_must_match") do
    visit "/paper"

    click_on "Play Scissors"

    expect(page).to have_current_path("/scissors"),
      "Expected to click on 'Play Scissors' link and be sent to '/scissors' route but ended up somewhere else."
  end
end

describe "/paper" do
  it "has a random computer move", points: 4, hint: h("randomness") do
    computer_played_rock = 0
    computer_played_paper = 0
    computer_played_scissors = 0

    15.times do
      visit "/paper"

      if (page.has_content?(/They played rock/i) &&
          page.has_no_content?(/They played paper/i) &&
          page.has_no_content?(/They played scissors/i))
        computer_played_rock = computer_played_rock + 1
      end

      if (page.has_content?(/They played paper/i) &&
          page.has_no_content?(/They played rock/i) &&
          page.has_no_content?(/They played scissors/i))
        computer_played_paper = computer_played_paper + 1
      end

      if (page.has_content?(/They played scissors/i) &&
          page.has_no_content?(/They played rock/i) &&
          page.has_no_content?(/They played paper/i))
        computer_played_scissors = computer_played_scissors + 1
      end
    end
    expect(computer_played_rock).to_not eq(0),
      "Expected to see 'They played rock' on the page at least once out of 15 tries but didn't."
    expect(computer_played_paper).to_not eq(0),
      "Expected to see 'They played paper' on the page at least once out of 15 tries but didn't."
    expect(computer_played_scissors).to_not eq(0),
      "Expected to see 'They played scissors' on the page at least once out of 15 tries but didn't."
  end
end

describe "/paper" do
  it "displays the correct outcome", points: 4, hint: h("copy_must_match") do
    visit "/paper"

    if page.has_content?(/They played rock/i)
      expect(page).to have_content(/We won/i)
    elsif page.has_content?(/They played paper/i)
      expect(page).to have_content(/We tied/i)
    elsif page.has_content?(/They played scissors/i)
      expect(page).to have_content(/We lost/i)
    else
      raise "Could not find computer move. Be sure your copy matches the target exactly"
    end
  end
end

describe "/scissors" do
  it "has a functional page", points: 2 do
    visit "/scissors"

    expect(page.status_code).to be(200)
  end
end

describe "/scissors" do
  it "has a link to the homepage", points: 2, hint: h("copy_must_match") do
    visit "/scissors"

    click_on "Rules"

    expect(page).to have_current_path("/").or(have_current_path(/\/index/)),
      "Expected to click on 'Rules' link and be sent to '/' route but ended up somewhere else."
  end
end

describe "/scissors" do
  it "has a link with text 'Play Rock' that sends you to the route '/rock'", points: 2, hint: h("copy_must_match") do
    visit "/scissors"

    click_on "Play Rock"

    expect(page).to have_current_path("/rock"),
      "Expected to click on 'Play Rock' link and be sent to '/rock' route but ended up somewhere else."
  end
end

describe "/scissors" do
  it "has a link with text 'Play Paper' that sends you to the route '/paper'", points: 2, hint: h("copy_must_match") do
    visit "/scissors"

    click_on "Play Paper"

    expect(page).to have_current_path("/paper"),
      "Expected to click on 'Play Paper' link and be sent to '/paper' route but ended up somewhere else."
  end
end

describe "/scissors" do
  it "has a link with text 'Play Scissors' that sends you to the route '/scissors'", points: 2, hint: h("copy_must_match") do
    visit "/scissors"

    click_on "Play Scissors"

    expect(page).to have_current_path("/scissors"),
      "Expected to click on 'Play Scissors' link and be sent to '/scissors' route but ended up somewhere else."
  end
end

describe "/scissors" do
  it "has a random computer move", points: 4, hint: h("randomness") do
    computer_played_rock = 0
    computer_played_paper = 0
    computer_played_scissors = 0

    15.times do
      visit "/scissors"

      if (page.has_content?(/They played rock/i) &&
          page.has_no_content?(/They played paper/i) &&
          page.has_no_content?(/They played scissors/i))
        computer_played_rock = computer_played_rock + 1
      end

      if (page.has_content?(/They played paper/i) &&
          page.has_no_content?(/They played rock/i) &&
          page.has_no_content?(/They played scissors/i))
        computer_played_paper = computer_played_paper + 1
      end

      if (page.has_content?(/They played scissors/i) &&
          page.has_no_content?(/They played rock/i) &&
          page.has_no_content?(/They played paper/i))
        computer_played_scissors = computer_played_scissors + 1
      end
    end

    expect(computer_played_rock).to_not eq(0),
      "Expected to see 'They played rock' on the page at least once out of 15 tries but didn't."
    expect(computer_played_paper).to_not eq(0),
      "Expected to see 'They played paper' on the page at least once out of 15 tries but didn't."
    expect(computer_played_scissors).to_not eq(0),
      "Expected to see 'They played scissors' on the page at least once out of 15 tries but didn't."
  end
end

describe "/scissors" do
  it "displays the correct outcome", points: 4, hint: h("copy_must_match") do
    visit "/scissors"

    if page.has_content?(/They played rock/i)
      expect(page).to have_content(/We lost/i)
    elsif page.has_content?(/They played paper/i)
      expect(page).to have_content(/We won/i)
    elsif page.has_content?(/They played scissors/i)
      expect(page).to have_content(/We tied/i)
    else
      raise "Could not find computer move. Be sure your copy matches the target exactly"
    end
  end
end
