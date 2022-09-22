function ball1_2()
[yy, fss]=audioread('戰鬥音效.mp3'); % 讀取音訊檔
yy = repmat(yy, 10, 1);
sound(yy, fss);% 播放音訊
fig = figure('KeyPressFcn',@kpfcn,'KeyReleaseFcn',@krfcn);
set(gcf,'unit','normalized','position',[0.2,0.2,0.64,0.64]);

set (gca,'position',[0.05,0.1,0.6,0.8]);
hold on



ball = scatter(1,1,200,'r','filled');






boss = scatter(2,1,300,'b','p');
boss2 = scatter(2,1,300,'r','p');
boss3 = scatter(2,1,300,'p','p');
bossposition = [boss.XData boss.YData];
axis([0 3 0 3])
ispress = struct('uparrow',false,'downarrow',false,'rightarrow',false,'leftarrow',false,'space',false);


game = timer('ExecutionMode','FixedRate','Period',0.1,'TimerFcn',@gamefcn);
game2 = timer('ExecutionMode','Fixedspacing','Period',5,'TimerFcn',@bossfcn);
start(game)
start(game2)

dir = [0 0];

game3 = timer('ExecutionMode','Fixedspacing','Period',0.1,'TimerFcn',@skill);
start(game3)

game4 = timer('ExecutionMode','Fixedspacing','Period',3,'TimerFcn',@bossfcn2);
start(game4)
game5 = timer('ExecutionMode','Fixedspacing','Period',1,'TimerFcn',@bossfcn3);
start(game5)

h=uicontrol('style','push','position',[1000 40 80 30],'string','存活');
uicontrol('style','text','position',[1000 300 80 30],'string','移動方式');
uicontrol('style','text','position',[1000 280 80 30],'string','上');
uicontrol('style','text','position',[1000 260 80 30],'string','左下右');
uicontrol('style','text','position',[1000 220 80 30],'string','攻擊方式');
uicontrol('style','text','position',[1000 200 80 30],'string','space');
uicontrol('style','text','position',[1000 70 100 30],'string','任務目標:擊中星星');
uicontrol('style','text','position',[950 330 80 30],'string','boss的HP:');
j=uicontrol('style','text','position',[1020 330 80 30],'string','100');
uicontrol('style','text','position',[950 360 80 30],'string','玩家的HP:');
k=uicontrol('style','text','position',[1020 360 80 30],'string','100');










  function gamefcn(obj,event)
      ball.XData(ball.XData > 3 ) = ball.XData(ball.XData > 3) - 3;
      ball.XData(ball.XData < 0 ) = ball.XData(ball.XData < 0) + 3;
      ball.YData(ball.YData > 3 ) = ball.YData(ball.YData > 3) - 3;
      ball.YData(ball.YData < 0 ) = ball.YData(ball.YData < 0) + 3;
    if ispress.uparrow
      ball.YData = ball.YData + 0.1;
      dir = [0 0.1];
      value = 1;
    else
      value = 0;
    end
    if ispress.downarrow
      ball.YData = ball.YData - 0.1;
      dir = [0 -0.1];
    end
    if ispress.rightarrow
      ball.XData = ball.XData + 0.1;
      dir = [0.1 0];
    end
    if ispress.leftarrow
      ball.XData = ball.XData - 0.1;
      dir = [-0.1 0];
    end
    if (abs(ball.XData-boss.XData)<0.1 && abs(ball.YData-boss.YData)<0.1) || (abs(ball.XData-boss2.XData)<0.1 && abs(ball.YData-boss2.YData)<0.1) || (abs(ball.XData-boss3.XData)<0.1 && abs(ball.YData-boss3.YData)<0.1)
       player_HP = str2num(get(k,'string'));
       player_HP = player_HP - 20;
       set(k,'string',player_HP);
       if str2num(get(k,'string')) == 0
           clear sound;
           delete(boss);
           [y, fs]=audioread('瑪莉歐死掉音效.mp3'); % 讀取音訊檔
           sound(y, fs); % 播放音訊
           set(h,'string','擊中');
           close;
           game_lose;    
       end
                                            
    end
    
   
    
  end

    function skill(obj,event)
        if ispress.space
            [y, fs]=audioread('發射.wav'); % 讀取音訊檔
            sound(y, fs); % 播放音訊
            ski = scatter(ball.XData,ball.YData,100,'g','filled');
              for ii = 1:15
                if dir(1) == 0
                    ski.YData = ski.YData + dir(2)*2;
                   
                    
                elseif dir (2) == 0
                    ski.XData = ski.XData + dir(1)*2;
                   
                end
                 drawnow; 
                 
                 if (abs(ski.XData-boss.XData)<0.1 && abs(ski.YData-boss.YData)<0.1) || (abs(ski.XData-boss2.XData)<0.1 && abs(ski.YData-boss2.YData)<0.1) || (abs(ski.XData-boss3.XData)<0.1 && abs(ski.YData-boss3.YData)<0.1)
                        HP=str2num(get(j,'string'));
                        HP=HP-10;
                        set(j,'string',HP);
                        if str2num(get(j,'string')) == 0
                            clear sound;
                            delete(boss);
                            [y, fs]=audioread('小朋友下樓梯音效.mp3'); % 讀取音訊檔
                            sound(y, fs); % 播放音訊
                            set(h,'string','擊中');
                            close;
                            game_win;
                        end
                        
                 end 
            end
           
            %skiposition = [ski.XData ski.YData];
        end
    end



  function krfcn(obj,event)
    ispress.(event.Key) = false;
  end
 
  function kpfcn(obj,event)
    ispress.(event.Key) = true;
  end
  function bossfcn(obj,event)
      
   boss.XData = rand+rand+rand;
   boss.YData = rand+rand+rand;
  
  end
function bossfcn2(obj,event)
      
   boss2.XData = rand+rand+rand;
   boss2.YData = rand+rand+rand;
  
end
function bossfcn3(obj,event)
      
   boss3.XData = rand+rand+rand;
   boss3.YData = rand+rand+rand;
  
  end
  end