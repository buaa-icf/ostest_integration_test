import sys
import pygame

COLOR_SPACE = [
    (50, 50, 50),
    (255, 0, 0),
    (0, 255, 0),
    (0, 0, 255),
    (255, 255, 0),
    (255, 0, 255),
    (0, 255, 255),
    (155, 155, 155)
]

def genpng(off, x, y, c):
    pygame.init()
    pngfont = pygame.font.SysFont('Times New Roman', 20)
    canvas = pygame.Surface((x,y))
    canvas.fill((255,255,255))

    surf = pngfont.render('test'+str(off), True, (0,0,0))
    canvas.blit(surf, (10,10))

    pygame.draw.rect(canvas, c, pygame.Rect(50, 50, 100, 100))
    pygame.image.save(canvas, 'autoimage'+str(off)+'.png')

    
#需要两个参数：1，尺寸(256x256)；2，数量10
def main():
    pngsize = '256x256'
    pngcnt = 10
    if len(sys.argv) > 2:
        pngsize = sys.argv[1]
        pngcnt = int(sys.argv[2])
    width = pngsize.split('x')[0]
    height = pngsize.split('x')[1]
    print("argv, w,h:", len(sys.argv), width, height)
    for i in range(pngcnt):
        c = (0, 0, 255)
        coff = i%8
        c = COLOR_SPACE[coff]
        genpng(i, int(width), int(height), c)

if __name__ == '__main__':
    main()