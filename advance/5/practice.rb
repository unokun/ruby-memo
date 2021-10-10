# frozen_string_literal: true

def print_survey(scores)
  ranks = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
  sum = 0
  scores.each do |score|
    sum += score

    if score == 0
      ranks[0] += 1
    else
      (1..9).each do |i|
        ranks[i] += 1 if score.between?(i * 100, (i + 1) * 100 - 1)
      end
    end
  end

  puts "スコアの平均値： #{sum / scores.length}"
  (0..9).each do |i|
    puts "#{i * 100}点台： #{ranks[i]}人"
  end

  # n = 0
  # scores.each do |score|
  #   n += 1 if score == 0
  # end
  # puts "0点台： #{n}人"

  # (1..9).each do |rank|
  #   n = 0
  #   scores.each do |score|
  #     n += 1 if score.between?(rank * 100, (rank + 1) * 100 - 1)
  #   end
  #   puts "#{rank * 100}点台： #{n}人"
  # end
end

english_scores = [765, 820, 440, 530, 900, 960, 735]
print_survey(english_scores)

english_scores_new = [620, 555, 590, 820, 320]
english_scores.concat(english_scores_new)
print_survey(english_scores)
