function ball2_2()
[yy, fss]=audioread('�԰�����.mp3'); % Ū�����T��
yy = repmat(yy, 10, 1);
sound(yy, fss);% ���񭵰T
fig = figure('KeyPressFcn',@kpfcn,'KeyReleaseFcn',@krfcn);
set(gcf,'unit','normalized','position',[0.2,0.2,0.64,0.64])
set (gca,'position',[0.05,0.1,0.6,0.8]);
ball = scatter(1,1,200,'r','filled');

hold on;
ball2 = scatter(2,1,200,'y','filled');

boss = scatter(2,1,300,'b','p');
boss2 = scatter(2,1,300,'r','p');
boss3 = scatter(2,1,300,'p','p');
bossposition = [boss.XData boss.YData];
axis([0 3 0 3])
ispress = struct('uparrow',false,'downarrow',false,'rightarrow',false,'leftarrow',false,'space',false,'d',false,'a',false,'w',false,'s',false,'x',false);


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
game6 = timer('ExecutionMode','FixedRate','Period',0.1,'TimerFcn',@gamefcn2);
start(game6)

game7 = timer('ExecutionMode','Fixedspacing','Period',0.1,'TimerFcn',@skill2);
start(game7)

h=uicontrol('style','push','position',[1000 40 80 30],'string','�s��');
uicontrol('style','text','position',[900 300 110 30],'string','���a1(����)���ʤ覡');
uicontrol('style','text','position',[900 280 80 30],'string','�W');
uicontrol('style','text','position',[900 260 80 30],'string','���U�k');
uicontrol('style','text','position',[900 220 80 30],'string','�����覡');
uicontrol('style','text','position',[900 200 80 30],'string','space');
uicontrol('style','text','position',[1100 300 110 30],'string','���a2(����)���ʤ覡');
uicontrol('style','text','position',[1100 280 80 30],'string','W');
uicontrol('style','text','position',[1100 260 80 30],'string','ASD');
uicontrol('style','text','position',[1100 220 80 30],'string','�����覡');
uicontrol('style','text','position',[1100 200 80 30],'string','X');
uicontrol('style','text','position',[1000 70 100 30],'string','���ȥؼ�:�����P�P');
uicontrol('style','text','position',[950 330 80 30],'string','boss��HP:');
j=uicontrol('style','text','position',[1020 330 80 30],'string','100');
uicontrol('style','text','position',[950 360 80 30],'string','���a��HP:');
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
           [y, fs]=audioread('�����ڦ�������.mp3'); % Ū�����T��
           sound(y, fs); % ���񭵰T
           set(h,'string','����');
           close
           game_lose    
       end
                                            
    end
    
   
    
  end

    function skill(obj,event)
        if ispress.space
            [y, fs]=audioread('fart.wav'); % Ū�����T��
            sound(y, fs); % ���񭵰T
            ski = scatter(ball.XData,ball.YData,100,'g','filled');
             for ii = 1:15
                if dir(1) == 0
                    ski.YData = ski.YData + dir(2)*2;
                   
                    
                elseif dir (2) == 0
                    ski.XData = ski.XData + dir(1)*2;
                   
                end
                 drawnow; 
                 
                 if (abs(ski.XData-boss.XData)<0.1 && abs(ski.YData-boss.YData)<0.1) || (abs(ski.XData-boss.XData)<0.1 && abs(ski.YData-boss.YData)<0.1) || (abs(ski.XData-boss3.XData)<0.1 && abs(ski.YData-boss3.YData)<0.1)
                        HP=str2num(get(j,'string'));
                        HP=HP-10;
                        set(j,'string',HP);
                        if str2num(get(j,'string')) == 0
                            clear sound;
                            delete(boss);
                            [y, fs]=audioread('�p�B�ͤU�ӱ譵��.mp3'); % Ū�����T��
                            sound(y, fs); % ���񭵰T
                            set(h,'string','����');
                            close
                            game_win
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
function gamefcn2(obj,event)
      ball2.XData(ball2.XData > 3 ) = ball2.XData(ball2.XData > 3) - 3;
      ball2.XData(ball2.XData < 0 ) = ball2.XData(ball2.XData < 0) + 3;
      ball2.YData(ball2.YData > 3 ) = ball2.YData(ball2.YData > 3) - 3;
      ball2.YData(ball2.YData < 0 ) = ball2.YData(ball2.YData < 0) + 3;
    if ispress.w
      ball2.YData = ball2.YData + 0.1;
      dir = [0 0.1];
      value = 1;
    else
      value = 0;
    end
    if ispress.s
      ball2.YData = ball2.YData - 0.1;
      dir = [0 -0.1];
    end
    if ispress.d
      ball2.XData = ball2.XData + 0.1;
      dir = [0.1 0];
    end
    if ispress.a
      ball2.XData = ball2.XData - 0.1;
      dir = [-0.1 0];
    end
    if (abs(ball.XData-boss.XData)<0.1 && abs(ball.YData-boss.YData)<0.1) || (abs(ball2.XData-boss.XData)<0.1 && abs(ball2.YData-boss.YData)<0.1)
       player_HP = str2num(get(k,'string'));
       player_HP = player_HP - 20;
       set(k,'string',player_HP);
       if str2num(get(k,'string')) == 0
           delete(boss);
           [y, fs]=audioread('�����ڦ�������.mp3'); % Ū�����T��
           sound(y, fs); % ���񭵰T
           set(h,'string','����');
           close
           game_lose   
       end
                                            
    end
 end

 function skill2(obj,event)
        if ispress.x
            [y, fs]=audioread('fart2.wav'); % Ū�����T��
            sound(y, fs); % ���񭵰T
            ski = scatter(ball2.XData,ball2.YData,100,'b','filled');
             for ii = 1:15
                if dir(1) == 0
                    ski.YData = ski.YData + dir(2)*2;
                   
                    
                elseif dir (2) == 0
                    ski.XData = ski.XData + dir(1)*2;
                   
                end
                 drawnow; 
                 
                 if abs(ski.XData-boss.XData)<0.1 && abs(ski.YData-boss.YData)<0.1 
                        HP=str2num(get(j,'string'));
                        HP=HP-10;
                        set(j,'string',HP);
                        if str2num(get(j,'string')) == 0
          
                            close
                            game_win
                        end
                        
                 end 
            end
           
            %skiposition = [ski.XData ski.YData];
        end
    end
  end