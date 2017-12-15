.class public final Lcom/creativemobi/engine/bg;
.super Ljava/lang/Object;
.source "MainMenuView.java"

# interfaces
.implements Lcom/creativemobi/engine/y;


# static fields
.field private static j:J


# instance fields
.field a:Lcom/creativemobi/engine/bl;

.field private b:Landroid/graphics/Typeface;

.field private c:I

.field private d:I

.field private e:[Ljava/lang/String;

.field private f:Lcom/creativemobi/engine/x;

.field private g:Lcom/creativemobi/engine/x;

.field private h:J

.field private i:Lcom/creativemobi/engine/x;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 26
    const-wide/16 v0, 0x2710

    sput-wide v0, Lcom/creativemobi/engine/bg;->j:J

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput v2, p0, Lcom/creativemobi/engine/bg;->c:I

    .line 20
    iput v2, p0, Lcom/creativemobi/engine/bg;->d:I

    .line 21
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "RACE"

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const-string v2, "GARAGE"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "SETTINGS"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "STATS"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/creativemobi/engine/bg;->e:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    .prologue
    .line 284
    return-void
.end method

.method public final a(I)V
    .locals 0

    .prologue
    .line 296
    return-void
.end method

.method public final a(Lcom/creativemobi/engine/w;FF)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 70
    const-string v0, "main_menu_button0"

    invoke-virtual {p1, v0, p2, p3}, Lcom/creativemobi/engine/w;->b(Ljava/lang/String;FF)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 71
    iget-object v0, p0, Lcom/creativemobi/engine/bg;->a:Lcom/creativemobi/engine/bl;

    invoke-interface {v0}, Lcom/creativemobi/engine/bl;->a()Lcom/creativemobi/engine/cg;

    move-result-object v0

    if-nez v0, :cond_1

    .line 72
    iget-object v0, p0, Lcom/creativemobi/engine/bg;->a:Lcom/creativemobi/engine/bl;

    new-instance v1, Lcom/creativemobi/engine/ad;

    invoke-direct {v1}, Lcom/creativemobi/engine/ad;-><init>()V

    invoke-interface {v0, v1, v2}, Lcom/creativemobi/engine/bl;->a(Lcom/creativemobi/engine/y;Z)V

    .line 73
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/creativemobi/engine/bx;

    invoke-direct {v1, p0}, Lcom/creativemobi/engine/bx;-><init>(Lcom/creativemobi/engine/bg;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 106
    :cond_0
    :goto_0
    return-void

    .line 83
    :cond_1
    iget-object v0, p0, Lcom/creativemobi/engine/bg;->a:Lcom/creativemobi/engine/bl;

    new-instance v1, Lcom/creativemobi/engine/an;

    invoke-direct {v1}, Lcom/creativemobi/engine/an;-><init>()V

    invoke-interface {v0, v1, v3}, Lcom/creativemobi/engine/bl;->a(Lcom/creativemobi/engine/y;Z)V

    .line 84
    invoke-static {v2}, Lcom/creativemobi/DragRacing/menus/MainMenu;->b(Z)V

    goto :goto_0

    .line 85
    :cond_2
    const-string v0, "main_menu_button1"

    invoke-virtual {p1, v0, p2, p3}, Lcom/creativemobi/engine/w;->b(Ljava/lang/String;FF)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 88
    iget-object v0, p0, Lcom/creativemobi/engine/bg;->a:Lcom/creativemobi/engine/bl;

    new-instance v1, Lcom/creativemobi/engine/ad;

    invoke-direct {v1}, Lcom/creativemobi/engine/ad;-><init>()V

    invoke-interface {v0, v1, v2}, Lcom/creativemobi/engine/bl;->a(Lcom/creativemobi/engine/y;Z)V

    .line 89
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/creativemobi/engine/bv;

    invoke-direct {v1, p0}, Lcom/creativemobi/engine/bv;-><init>(Lcom/creativemobi/engine/bg;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 98
    :cond_3
    const-string v0, "main_menu_button3"

    invoke-virtual {p1, v0, p2, p3}, Lcom/creativemobi/engine/w;->b(Ljava/lang/String;FF)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 99
    iget-object v0, p0, Lcom/creativemobi/engine/bg;->a:Lcom/creativemobi/engine/bl;

    new-instance v1, Lcom/creativemobi/engine/bj;

    invoke-direct {v1}, Lcom/creativemobi/engine/bj;-><init>()V

    invoke-interface {v0, v1, v3}, Lcom/creativemobi/engine/bl;->a(Lcom/creativemobi/engine/y;Z)V

    .line 100
    invoke-static {v2}, Lcom/creativemobi/DragRacing/menus/MainMenu;->a(I)V

    goto :goto_0

    .line 101
    :cond_4
    const-string v0, "main_menu_button2"

    invoke-virtual {p1, v0, p2, p3}, Lcom/creativemobi/engine/w;->b(Ljava/lang/String;FF)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/creativemobi/engine/bg;->a:Lcom/creativemobi/engine/bl;

    new-instance v1, Lcom/creativemobi/engine/s;

    invoke-direct {v1}, Lcom/creativemobi/engine/s;-><init>()V

    invoke-interface {v0, v1, v3}, Lcom/creativemobi/engine/bl;->a(Lcom/creativemobi/engine/y;Z)V

    .line 103
    invoke-static {v2}, Lcom/creativemobi/DragRacing/menus/MainMenu;->a(I)V

    goto :goto_0
.end method

.method public final a(Lcom/creativemobi/engine/w;I)V
    .locals 0

    .prologue
    .line 302
    return-void
.end method

.method public final a(Lcom/creativemobi/engine/w;J)V
    .locals 7

    .prologue
    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 31
    iget-object v0, p0, Lcom/creativemobi/engine/bg;->a:Lcom/creativemobi/engine/bl;

    invoke-interface {v0}, Lcom/creativemobi/engine/bl;->c()I

    move-result v0

    iput v0, p0, Lcom/creativemobi/engine/bg;->d:I

    .line 33
    iget-object v0, p0, Lcom/creativemobi/engine/bg;->f:Lcom/creativemobi/engine/x;

    if-eqz v0, :cond_0

    .line 34
    iget-object v0, p0, Lcom/creativemobi/engine/bg;->a:Lcom/creativemobi/engine/bl;

    invoke-interface {v0}, Lcom/creativemobi/engine/bl;->j()Z

    move-result v0

    if-nez v0, :cond_4

    .line 35
    invoke-static {}, Lcom/creativemobi/DragRacing/menus/MainMenu;->b()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 36
    const-string v0, "infinity"

    invoke-virtual {p1, v0}, Lcom/creativemobi/engine/w;->g(Ljava/lang/String;)V

    .line 37
    iget-object v0, p0, Lcom/creativemobi/engine/bg;->f:Lcom/creativemobi/engine/x;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/creativemobi/engine/x;->a(Ljava/lang/String;)V

    .line 38
    iget-object v0, p0, Lcom/creativemobi/engine/bg;->g:Lcom/creativemobi/engine/x;

    const/16 v1, 0x172

    iput v1, v0, Lcom/creativemobi/engine/x;->a:I

    .line 55
    :cond_0
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/creativemobi/engine/bg;->h:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 56
    const-string v0, "money_anim"

    invoke-virtual {p1, v0}, Lcom/creativemobi/engine/w;->e(Ljava/lang/String;)Lcom/creativemobi/engine/cd;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/creativemobi/engine/cd;->a(Z)V

    .line 57
    const-string v0, "money_anim"

    invoke-virtual {p1, v0}, Lcom/creativemobi/engine/w;->e(Ljava/lang/String;)Lcom/creativemobi/engine/cd;

    move-result-object v0

    const/4 v1, 0x2

    const/16 v2, 0x64

    invoke-virtual {v0, v6, v1, v2, v4}, Lcom/creativemobi/engine/cd;->a(IIIZ)V

    .line 58
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    add-long/2addr v0, v2

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    const-wide v4, 0x408f400000000000L    # 1000.0

    mul-double/2addr v2, v4

    double-to-int v2, v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/creativemobi/engine/bg;->h:J

    .line 61
    :cond_1
    sget-wide v0, Lcom/creativemobi/engine/bg;->j:J

    sub-long/2addr v0, p2

    .line 62
    sput-wide v0, Lcom/creativemobi/engine/bg;->j:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_2

    .line 63
    iget-object v0, p0, Lcom/creativemobi/engine/bg;->a:Lcom/creativemobi/engine/bl;

    invoke-interface {v0}, Lcom/creativemobi/engine/bl;->getContext()Landroid/content/Context;

    move-result-object p0

    check-cast p0, Lcom/creativemobi/DragRacing/menus/MainMenu;

    invoke-virtual {p0, v6}, Lcom/creativemobi/DragRacing/menus/MainMenu;->a(Z)V

    .line 64
    const-wide/32 v0, 0xea60

    sput-wide v0, Lcom/creativemobi/engine/bg;->j:J

    .line 66
    :cond_2
    return-void

    .line 40
    :cond_3
    const-string v0, "infinity"

    invoke-virtual {p1, v0}, Lcom/creativemobi/engine/w;->f(Ljava/lang/String;)V

    .line 41
    iget-object v0, p0, Lcom/creativemobi/engine/bg;->f:Lcom/creativemobi/engine/x;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/creativemobi/engine/bg;->d:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/creativemobi/engine/x;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 44
    :cond_4
    invoke-static {}, Lcom/creativemobi/DragRacing/menus/MainMenu;->b()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 45
    const-string v0, "infinity"

    invoke-virtual {p1, v0}, Lcom/creativemobi/engine/w;->g(Ljava/lang/String;)V

    .line 46
    iget-object v0, p0, Lcom/creativemobi/engine/bg;->f:Lcom/creativemobi/engine/x;

    const-string v1, "RP          "

    invoke-virtual {v0, v1}, Lcom/creativemobi/engine/x;->a(Ljava/lang/String;)V

    .line 51
    :goto_1
    iget-object v0, p0, Lcom/creativemobi/engine/bg;->i:Lcom/creativemobi/engine/x;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/creativemobi/engine/bg;->i:Lcom/creativemobi/engine/x;

    const/16 v1, 0x17c

    iget-object v2, p0, Lcom/creativemobi/engine/bg;->f:Lcom/creativemobi/engine/x;

    invoke-virtual {v2}, Lcom/creativemobi/engine/x;->a()F

    move-result v2

    float-to-int v2, v2

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/creativemobi/engine/x;->a:I

    goto/16 :goto_0

    .line 48
    :cond_5
    const-string v0, "infinity"

    invoke-virtual {p1, v0}, Lcom/creativemobi/engine/w;->f(Ljava/lang/String;)V

    .line 49
    iget-object v0, p0, Lcom/creativemobi/engine/bg;->f:Lcom/creativemobi/engine/x;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RP "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/creativemobi/engine/bg;->d:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/creativemobi/engine/x;->a(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public final a(Lcom/creativemobi/engine/w;Landroid/content/Context;Lcom/creativemobi/engine/bl;)V
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v9, -0x1

    const v8, -0x112555

    const/16 v7, 0x18

    const/4 v6, 0x0

    .line 151
    iput-object p3, p0, Lcom/creativemobi/engine/bg;->a:Lcom/creativemobi/engine/bl;

    .line 153
    invoke-interface {p3}, Lcom/creativemobi/engine/bl;->b()I

    move-result v0

    iput v0, p0, Lcom/creativemobi/engine/bg;->c:I

    .line 154
    invoke-interface {p3}, Lcom/creativemobi/engine/bl;->c()I

    move-result v0

    iput v0, p0, Lcom/creativemobi/engine/bg;->d:I

    .line 157
    const-string v0, "graphics/loading.jpg"

    invoke-virtual {p1, v0}, Lcom/creativemobi/engine/w;->c(Ljava/lang/String;)V

    .line 158
    invoke-virtual {p1}, Lcom/creativemobi/engine/w;->b()V

    .line 160
    invoke-virtual {p2}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "electrotome.ttf"

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lcom/creativemobi/engine/bg;->b:Landroid/graphics/Typeface;

    .line 162
    const-string v0, "menu_bg"

    const-string v1, "graphics/menu/main_menu_bg.jpg"

    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-virtual {p1, v0, v1, v2}, Lcom/creativemobi/engine/w;->a(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap$Config;)Lcom/creativemobi/engine/l;

    .line 163
    const-string v0, "menu_bg"

    const-string v1, "menu_bg"

    invoke-virtual {p1, v0, v1, v6, v6}, Lcom/creativemobi/engine/w;->b(Ljava/lang/String;Ljava/lang/String;II)Lcom/creativemobi/engine/cd;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/creativemobi/engine/cd;->a(I)V

    .line 165
    const-string v0, "main_menu_button"

    const-string v1, "graphics/menu/main_menu_button.png"

    invoke-virtual {p1, v0, v1}, Lcom/creativemobi/engine/w;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/creativemobi/engine/l;

    .line 167
    const-string v0, "main_menu_div"

    const-string v1, "graphics/menu/main_menu_div.png"

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {p1, v0, v1, v2}, Lcom/creativemobi/engine/w;->a(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap$Config;)Lcom/creativemobi/engine/l;

    .line 168
    const-string v0, "main_menu_div"

    const-string v1, "main_menu_div"

    const/16 v2, 0x19a

    invoke-virtual {p1, v0, v1, v2, v6}, Lcom/creativemobi/engine/w;->b(Ljava/lang/String;Ljava/lang/String;II)Lcom/creativemobi/engine/cd;

    move-result-object v0

    .line 169
    invoke-virtual {v0}, Lcom/creativemobi/engine/cd;->k()V

    .line 170
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/creativemobi/engine/cd;->a(I)V

    .line 172
    const-string v0, "icon_awards"

    const-string v1, "graphics/menu/icon_awards.png"

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {p1, v0, v1, v2}, Lcom/creativemobi/engine/w;->a(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap$Config;)Lcom/creativemobi/engine/l;

    .line 173
    const-string v0, "icon_facebook"

    const-string v1, "graphics/menu/icon_facebook.png"

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {p1, v0, v1, v2}, Lcom/creativemobi/engine/w;->a(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap$Config;)Lcom/creativemobi/engine/l;

    .line 174
    const-string v0, "icon_money"

    const-string v1, "graphics/menu/icon_money.png"

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {p1, v0, v1, v2}, Lcom/creativemobi/engine/w;->a(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap$Config;)Lcom/creativemobi/engine/l;

    .line 175
    const-string v0, "money_anim"

    const-string v1, "graphics/menu/icon_money_anim.png"

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {p1, v0, v1, v2}, Lcom/creativemobi/engine/w;->a(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap$Config;)Lcom/creativemobi/engine/l;

    .line 176
    const-string v0, "icon_anim"

    const-string v1, "graphics/menu/icon_anim.png"

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {p1, v0, v1, v2}, Lcom/creativemobi/engine/w;->a(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap$Config;)Lcom/creativemobi/engine/l;

    .line 177
    const-string v0, "infinity"

    const-string v1, "graphics/menu/infinity.png"

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {p1, v0, v1, v2}, Lcom/creativemobi/engine/w;->a(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap$Config;)Lcom/creativemobi/engine/l;

    .line 179
    const-string v0, "icon_money"

    const-string v1, "icon_money"

    const/16 v2, 0x1f4

    const/16 v3, 0x172

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/creativemobi/engine/w;->b(Ljava/lang/String;Ljava/lang/String;II)Lcom/creativemobi/engine/cd;

    .line 180
    const-string v0, "icon_awards"

    const-string v1, "icon_awards"

    const/16 v2, 0x258

    const/16 v3, 0x172

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/creativemobi/engine/w;->b(Ljava/lang/String;Ljava/lang/String;II)Lcom/creativemobi/engine/cd;

    .line 181
    const-string v0, "icon_facebook"

    const-string v1, "icon_facebook"

    const/16 v2, 0x2bc

    const/16 v3, 0x172

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/creativemobi/engine/w;->b(Ljava/lang/String;Ljava/lang/String;II)Lcom/creativemobi/engine/cd;

    .line 182
    const-string v0, "infinity"

    const-string v1, "infinity"

    const/16 v2, 0x172

    const/16 v3, 0x26

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/creativemobi/engine/w;->b(Ljava/lang/String;Ljava/lang/String;II)Lcom/creativemobi/engine/cd;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/creativemobi/engine/cd;->a(Z)V

    .line 184
    const-string v0, "money_anim"

    const-string v1, "money_anim"

    const/16 v2, 0x208

    const/16 v3, 0x17a

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/creativemobi/engine/w;->b(Ljava/lang/String;Ljava/lang/String;II)Lcom/creativemobi/engine/cd;

    move-result-object v0

    .line 185
    const/4 v1, 0x3

    invoke-virtual {v0, v1, v10}, Lcom/creativemobi/engine/cd;->a(II)V

    .line 186
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/creativemobi/engine/cd;->a(I)V

    .line 187
    invoke-virtual {v0, v6}, Lcom/creativemobi/engine/cd;->a(Z)V

    .line 188
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/16 v2, 0x1f4

    add-long/2addr v0, v2

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    const-wide v4, 0x407f400000000000L    # 500.0

    mul-double/2addr v2, v4

    double-to-int v2, v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/creativemobi/engine/bg;->h:J

    .line 190
    const-string v0, "icon_anim_money"

    const-string v1, "icon_anim"

    const/16 v2, 0x1f3

    const/16 v3, 0x171

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/creativemobi/engine/w;->b(Ljava/lang/String;Ljava/lang/String;II)Lcom/creativemobi/engine/cd;

    move-result-object v0

    .line 191
    const/4 v1, 0x3

    invoke-virtual {v0, v1, v10}, Lcom/creativemobi/engine/cd;->a(II)V

    .line 192
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/creativemobi/engine/cd;->a(I)V

    .line 193
    invoke-virtual {v0, v6}, Lcom/creativemobi/engine/cd;->a(Z)V

    .line 195
    const-string v0, "icon_anim_awards"

    const-string v1, "icon_anim"

    const/16 v2, 0x257

    const/16 v3, 0x171

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/creativemobi/engine/w;->b(Ljava/lang/String;Ljava/lang/String;II)Lcom/creativemobi/engine/cd;

    move-result-object v0

    .line 196
    const/4 v1, 0x3

    invoke-virtual {v0, v1, v10}, Lcom/creativemobi/engine/cd;->a(II)V

    .line 197
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/creativemobi/engine/cd;->a(I)V

    .line 198
    invoke-virtual {v0, v6}, Lcom/creativemobi/engine/cd;->a(Z)V

    .line 200
    const-string v0, "icon_anim_like"

    const-string v1, "icon_anim"

    const/16 v2, 0x2bb

    const/16 v3, 0x171

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/creativemobi/engine/w;->b(Ljava/lang/String;Ljava/lang/String;II)Lcom/creativemobi/engine/cd;

    move-result-object v0

    .line 201
    const/4 v1, 0x3

    invoke-virtual {v0, v1, v10}, Lcom/creativemobi/engine/cd;->a(II)V

    .line 202
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/creativemobi/engine/cd;->a(I)V

    .line 203
    invoke-virtual {v0, v6}, Lcom/creativemobi/engine/cd;->a(Z)V

    .line 205
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 206
    invoke-virtual {v0, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 207
    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 208
    const/high16 v1, 0x41c00000    # 24.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 209
    iget-object v1, p0, Lcom/creativemobi/engine/bg;->b:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 210
    invoke-virtual {v0, v10}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 211
    const/high16 v1, 0x40400000    # 3.0f

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/high16 v4, -0x1000000

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 213
    new-instance v1, Lcom/creativemobi/engine/x;

    const-string v2, "AWARDS"

    const/16 v3, 0x27b

    const/16 v4, 0x1d1

    invoke-direct {v1, v2, v3, v4}, Lcom/creativemobi/engine/x;-><init>(Ljava/lang/String;II)V

    .line 214
    iput-object v0, v1, Lcom/creativemobi/engine/x;->b:Landroid/graphics/Paint;

    .line 215
    invoke-virtual {p1, v1}, Lcom/creativemobi/engine/w;->a(Lcom/creativemobi/engine/x;)V

    .line 217
    new-instance v1, Lcom/creativemobi/engine/x;

    const-string v2, "LIKE!"

    const/16 v3, 0x2df

    const/16 v4, 0x1d1

    invoke-direct {v1, v2, v3, v4}, Lcom/creativemobi/engine/x;-><init>(Ljava/lang/String;II)V

    .line 218
    iput-object v0, v1, Lcom/creativemobi/engine/x;->b:Landroid/graphics/Paint;

    .line 219
    invoke-virtual {p1, v1}, Lcom/creativemobi/engine/w;->a(Lcom/creativemobi/engine/x;)V

    .line 221
    new-instance v1, Lcom/creativemobi/engine/x;

    const-string v2, "GET $$$"

    const/16 v3, 0x217

    const/16 v4, 0x1d1

    invoke-direct {v1, v2, v3, v4}, Lcom/creativemobi/engine/x;-><init>(Ljava/lang/String;II)V

    .line 222
    iput-object v0, v1, Lcom/creativemobi/engine/x;->b:Landroid/graphics/Paint;

    .line 223
    invoke-virtual {p1, v1}, Lcom/creativemobi/engine/w;->a(Lcom/creativemobi/engine/x;)V

    move v0, v6

    .line 225
    :goto_0
    iget-object v1, p0, Lcom/creativemobi/engine/bg;->e:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 226
    const/16 v1, 0x57

    mul-int/lit8 v2, v0, 0x13

    sub-int/2addr v1, v2

    .line 227
    mul-int/lit8 v2, v0, 0x5a

    add-int/lit8 v2, v2, 0x5a

    .line 228
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "main_menu_button"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "main_menu_button"

    invoke-virtual {p1, v3, v4, v1, v2}, Lcom/creativemobi/engine/w;->b(Ljava/lang/String;Ljava/lang/String;II)Lcom/creativemobi/engine/cd;

    move-result-object v3

    const/4 v4, 0x6

    invoke-virtual {v3, v4}, Lcom/creativemobi/engine/cd;->a(I)V

    .line 230
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "icon"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "graphics/menu/icon"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".png"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Lcom/creativemobi/engine/w;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/creativemobi/engine/l;

    .line 231
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "icon"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "icon"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    add-int/lit16 v5, v1, 0x122

    add-int/lit8 v6, v2, 0x3

    invoke-virtual {p1, v3, v4, v5, v6}, Lcom/creativemobi/engine/w;->b(Ljava/lang/String;Ljava/lang/String;II)Lcom/creativemobi/engine/cd;

    move-result-object v3

    .line 232
    const/4 v4, 0x7

    invoke-virtual {v3, v4}, Lcom/creativemobi/engine/cd;->a(I)V

    .line 233
    invoke-virtual {v3}, Lcom/creativemobi/engine/cd;->k()V

    .line 235
    new-instance v3, Lcom/creativemobi/engine/x;

    iget-object v4, p0, Lcom/creativemobi/engine/bg;->e:[Ljava/lang/String;

    aget-object v4, v4, v0

    add-int/lit8 v1, v1, 0x14

    add-int/lit8 v2, v2, 0x28

    invoke-direct {v3, v4, v1, v2}, Lcom/creativemobi/engine/x;-><init>(Ljava/lang/String;II)V

    .line 238
    const/16 v1, 0x28

    sget-object v2, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    iget-object v4, p0, Lcom/creativemobi/engine/bg;->b:Landroid/graphics/Typeface;

    invoke-virtual {v3, v1, v9, v2, v4}, Lcom/creativemobi/engine/x;->a(IILandroid/graphics/Paint$Align;Landroid/graphics/Typeface;)V

    .line 239
    invoke-virtual {p1, v3}, Lcom/creativemobi/engine/w;->a(Lcom/creativemobi/engine/x;)V

    .line 225
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 242
    :cond_0
    invoke-interface {p3}, Lcom/creativemobi/engine/bl;->j()Z

    move-result v0

    if-nez v0, :cond_3

    .line 243
    new-instance v0, Lcom/creativemobi/engine/x;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "$"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/creativemobi/engine/bg;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x1a4

    const/16 v3, 0x1e

    invoke-direct {v0, v1, v2, v3}, Lcom/creativemobi/engine/x;-><init>(Ljava/lang/String;II)V

    .line 244
    iget v1, p0, Lcom/creativemobi/engine/bg;->c:I

    if-lez v1, :cond_1

    move v1, v9

    :goto_1
    sget-object v2, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    iget-object v3, p0, Lcom/creativemobi/engine/bg;->b:Landroid/graphics/Typeface;

    invoke-virtual {v0, v7, v1, v2, v3}, Lcom/creativemobi/engine/x;->a(IILandroid/graphics/Paint$Align;Landroid/graphics/Typeface;)V

    .line 245
    invoke-virtual {p1, v0}, Lcom/creativemobi/engine/w;->a(Lcom/creativemobi/engine/x;)V

    .line 247
    new-instance v1, Lcom/creativemobi/engine/x;

    const-string v2, "your cash: "

    const/16 v3, 0x1a4

    invoke-virtual {v0}, Lcom/creativemobi/engine/x;->a()F

    move-result v0

    float-to-int v0, v0

    sub-int v0, v3, v0

    const/16 v3, 0x1e

    invoke-direct {v1, v2, v0, v3}, Lcom/creativemobi/engine/x;-><init>(Ljava/lang/String;II)V

    .line 248
    sget-object v0, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    iget-object v2, p0, Lcom/creativemobi/engine/bg;->b:Landroid/graphics/Typeface;

    invoke-virtual {v1, v7, v8, v0, v2}, Lcom/creativemobi/engine/x;->a(IILandroid/graphics/Paint$Align;Landroid/graphics/Typeface;)V

    .line 249
    invoke-virtual {p1, v1}, Lcom/creativemobi/engine/w;->a(Lcom/creativemobi/engine/x;)V

    .line 251
    new-instance v0, Lcom/creativemobi/engine/x;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/creativemobi/engine/bg;->d:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x19a

    const/16 v3, 0x3c

    invoke-direct {v0, v1, v2, v3}, Lcom/creativemobi/engine/x;-><init>(Ljava/lang/String;II)V

    iput-object v0, p0, Lcom/creativemobi/engine/bg;->f:Lcom/creativemobi/engine/x;

    .line 252
    iget-object v0, p0, Lcom/creativemobi/engine/bg;->f:Lcom/creativemobi/engine/x;

    iget v1, p0, Lcom/creativemobi/engine/bg;->d:I

    if-lez v1, :cond_2

    const v1, -0x2676e5

    :goto_2
    sget-object v2, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    iget-object v3, p0, Lcom/creativemobi/engine/bg;->b:Landroid/graphics/Typeface;

    invoke-virtual {v0, v7, v1, v2, v3}, Lcom/creativemobi/engine/x;->a(IILandroid/graphics/Paint$Align;Landroid/graphics/Typeface;)V

    .line 253
    iget-object v0, p0, Lcom/creativemobi/engine/bg;->f:Lcom/creativemobi/engine/x;

    invoke-virtual {p1, v0}, Lcom/creativemobi/engine/w;->a(Lcom/creativemobi/engine/x;)V

    .line 255
    new-instance v0, Lcom/creativemobi/engine/x;

    const-string v1, "respect points: "

    const/16 v2, 0x19a

    iget-object v3, p0, Lcom/creativemobi/engine/bg;->f:Lcom/creativemobi/engine/x;

    invoke-virtual {v3}, Lcom/creativemobi/engine/x;->a()F

    move-result v3

    float-to-int v3, v3

    sub-int/2addr v2, v3

    const/16 v3, 0x3c

    invoke-direct {v0, v1, v2, v3}, Lcom/creativemobi/engine/x;-><init>(Ljava/lang/String;II)V

    iput-object v0, p0, Lcom/creativemobi/engine/bg;->g:Lcom/creativemobi/engine/x;

    .line 256
    iget-object v0, p0, Lcom/creativemobi/engine/bg;->g:Lcom/creativemobi/engine/x;

    sget-object v1, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    iget-object v2, p0, Lcom/creativemobi/engine/bg;->b:Landroid/graphics/Typeface;

    invoke-virtual {v0, v7, v8, v1, v2}, Lcom/creativemobi/engine/x;->a(IILandroid/graphics/Paint$Align;Landroid/graphics/Typeface;)V

    .line 257
    iget-object v0, p0, Lcom/creativemobi/engine/bg;->g:Lcom/creativemobi/engine/x;

    invoke-virtual {p1, v0}, Lcom/creativemobi/engine/w;->a(Lcom/creativemobi/engine/x;)V

    .line 278
    :goto_3
    return-void

    :cond_1
    move v1, v8

    .line 244
    goto :goto_1

    :cond_2
    move v1, v8

    .line 252
    goto :goto_2

    .line 259
    :cond_3
    new-instance v0, Lcom/creativemobi/engine/x;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p3}, Lcom/creativemobi/engine/bl;->i()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x1a4

    const/16 v3, 0x1e

    invoke-direct {v0, v1, v2, v3}, Lcom/creativemobi/engine/x;-><init>(Ljava/lang/String;II)V

    .line 260
    sget-object v1, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    iget-object v2, p0, Lcom/creativemobi/engine/bg;->b:Landroid/graphics/Typeface;

    invoke-virtual {v0, v7, v9, v1, v2}, Lcom/creativemobi/engine/x;->a(IILandroid/graphics/Paint$Align;Landroid/graphics/Typeface;)V

    .line 261
    invoke-virtual {p1, v0}, Lcom/creativemobi/engine/w;->a(Lcom/creativemobi/engine/x;)V

    .line 263
    new-instance v1, Lcom/creativemobi/engine/x;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p3}, Lcom/creativemobi/engine/bl;->h()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x1a4

    invoke-virtual {v0}, Lcom/creativemobi/engine/x;->a()F

    move-result v4

    float-to-int v4, v4

    sub-int/2addr v3, v4

    const/16 v4, 0x1e

    invoke-direct {v1, v2, v3, v4}, Lcom/creativemobi/engine/x;-><init>(Ljava/lang/String;II)V

    .line 264
    sget-object v2, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    iget-object v3, p0, Lcom/creativemobi/engine/bg;->b:Landroid/graphics/Typeface;

    invoke-virtual {v1, v7, v8, v2, v3}, Lcom/creativemobi/engine/x;->a(IILandroid/graphics/Paint$Align;Landroid/graphics/Typeface;)V

    .line 265
    invoke-virtual {p1, v1}, Lcom/creativemobi/engine/w;->a(Lcom/creativemobi/engine/x;)V

    .line 267
    const-string v2, "helmet"

    const-string v3, "graphics/menu/pro_icon_temp.png"

    invoke-virtual {p1, v2, v3}, Lcom/creativemobi/engine/w;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/creativemobi/engine/l;

    .line 268
    const-string v2, "helmet"

    const-string v3, "helmet"

    const/high16 v4, 0x43be0000    # 380.0f

    invoke-virtual {v0}, Lcom/creativemobi/engine/x;->a()F

    move-result v0

    sub-float v0, v4, v0

    invoke-virtual {v1}, Lcom/creativemobi/engine/x;->a()F

    move-result v1

    sub-float/2addr v0, v1

    const/high16 v1, 0x41000000    # 8.0f

    invoke-virtual {p1, v2, v3, v0, v1}, Lcom/creativemobi/engine/w;->a(Ljava/lang/String;Ljava/lang/String;FF)Lcom/creativemobi/engine/cd;

    .line 270
    new-instance v0, Lcom/creativemobi/engine/x;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RP "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/creativemobi/engine/bg;->d:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x19a

    const/16 v3, 0x3c

    invoke-direct {v0, v1, v2, v3}, Lcom/creativemobi/engine/x;-><init>(Ljava/lang/String;II)V

    iput-object v0, p0, Lcom/creativemobi/engine/bg;->f:Lcom/creativemobi/engine/x;

    .line 271
    iget-object v0, p0, Lcom/creativemobi/engine/bg;->f:Lcom/creativemobi/engine/x;

    iget v1, p0, Lcom/creativemobi/engine/bg;->d:I

    if-lez v1, :cond_4

    const v1, -0x2676e5

    :goto_4
    sget-object v2, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    iget-object v3, p0, Lcom/creativemobi/engine/bg;->b:Landroid/graphics/Typeface;

    invoke-virtual {v0, v7, v1, v2, v3}, Lcom/creativemobi/engine/x;->a(IILandroid/graphics/Paint$Align;Landroid/graphics/Typeface;)V

    .line 272
    iget-object v0, p0, Lcom/creativemobi/engine/bg;->f:Lcom/creativemobi/engine/x;

    invoke-virtual {p1, v0}, Lcom/creativemobi/engine/w;->a(Lcom/creativemobi/engine/x;)V

    .line 274
    new-instance v0, Lcom/creativemobi/engine/x;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "$"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/creativemobi/engine/bg;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x17c

    iget-object v3, p0, Lcom/creativemobi/engine/bg;->f:Lcom/creativemobi/engine/x;

    invoke-virtual {v3}, Lcom/creativemobi/engine/x;->a()F

    move-result v3

    float-to-int v3, v3

    sub-int/2addr v2, v3

    const/16 v3, 0x3c

    invoke-direct {v0, v1, v2, v3}, Lcom/creativemobi/engine/x;-><init>(Ljava/lang/String;II)V

    iput-object v0, p0, Lcom/creativemobi/engine/bg;->i:Lcom/creativemobi/engine/x;

    .line 275
    iget-object v0, p0, Lcom/creativemobi/engine/bg;->i:Lcom/creativemobi/engine/x;

    iget v1, p0, Lcom/creativemobi/engine/bg;->c:I

    if-lez v1, :cond_5

    move v1, v9

    :goto_5
    sget-object v2, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    iget-object v3, p0, Lcom/creativemobi/engine/bg;->b:Landroid/graphics/Typeface;

    invoke-virtual {v0, v7, v1, v2, v3}, Lcom/creativemobi/engine/x;->a(IILandroid/graphics/Paint$Align;Landroid/graphics/Typeface;)V

    .line 276
    iget-object v0, p0, Lcom/creativemobi/engine/bg;->i:Lcom/creativemobi/engine/x;

    invoke-virtual {p1, v0}, Lcom/creativemobi/engine/w;->a(Lcom/creativemobi/engine/x;)V

    goto/16 :goto_3

    :cond_4
    move v1, v8

    .line 271
    goto :goto_4

    :cond_5
    move v1, v8

    .line 275
    goto :goto_5
.end method

.method public final a(Lcom/creativemobi/engine/w;)Z
    .locals 1

    .prologue
    .line 289
    const/4 v0, 0x0

    return v0
.end method

.method public final b(Lcom/creativemobi/engine/w;FF)V
    .locals 5

    .prologue
    const/16 v4, 0x3c

    const/4 v3, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 110
    const-string v0, "icon_facebook"

    invoke-virtual {p1, v0, p2, p3}, Lcom/creativemobi/engine/w;->b(Ljava/lang/String;FF)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 111
    const-string v0, "icon_anim_like"

    invoke-virtual {p1, v0}, Lcom/creativemobi/engine/w;->e(Ljava/lang/String;)Lcom/creativemobi/engine/cd;

    move-result-object v0

    .line 112
    invoke-virtual {v0, v1}, Lcom/creativemobi/engine/cd;->a(Z)V

    .line 113
    invoke-virtual {v0, v2, v3, v4, v1}, Lcom/creativemobi/engine/cd;->a(IIIZ)V

    .line 114
    new-instance v1, Lcom/creativemobi/engine/bu;

    invoke-direct {v1, p0}, Lcom/creativemobi/engine/bu;-><init>(Lcom/creativemobi/engine/bg;)V

    invoke-virtual {v0, v1}, Lcom/creativemobi/engine/cd;->a(Lcom/creativemobi/engine/br;)V

    .line 147
    :cond_0
    :goto_0
    return-void

    .line 122
    :cond_1
    const-string v0, "icon_money"

    invoke-virtual {p1, v0, p2, p3}, Lcom/creativemobi/engine/w;->b(Ljava/lang/String;FF)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 123
    const-string v0, "icon_anim_money"

    invoke-virtual {p1, v0}, Lcom/creativemobi/engine/w;->e(Ljava/lang/String;)Lcom/creativemobi/engine/cd;

    move-result-object v0

    .line 124
    invoke-virtual {v0, v1}, Lcom/creativemobi/engine/cd;->a(Z)V

    .line 125
    invoke-virtual {v0, v2, v3, v4, v1}, Lcom/creativemobi/engine/cd;->a(IIIZ)V

    .line 126
    new-instance v1, Lcom/creativemobi/engine/bt;

    invoke-direct {v1, p0}, Lcom/creativemobi/engine/bt;-><init>(Lcom/creativemobi/engine/bg;)V

    invoke-virtual {v0, v1}, Lcom/creativemobi/engine/cd;->a(Lcom/creativemobi/engine/br;)V

    goto :goto_0

    .line 135
    :cond_2
    const-string v0, "icon_awards"

    invoke-virtual {p1, v0, p2, p3}, Lcom/creativemobi/engine/w;->b(Ljava/lang/String;FF)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 136
    const-string v0, "icon_anim_awards"

    invoke-virtual {p1, v0}, Lcom/creativemobi/engine/w;->e(Ljava/lang/String;)Lcom/creativemobi/engine/cd;

    move-result-object v0

    .line 137
    invoke-virtual {v0, v1}, Lcom/creativemobi/engine/cd;->a(Z)V

    .line 138
    invoke-virtual {v0, v2, v3, v4, v1}, Lcom/creativemobi/engine/cd;->a(IIIZ)V

    .line 139
    new-instance v1, Lcom/creativemobi/engine/bs;

    invoke-direct {v1, p0}, Lcom/creativemobi/engine/bs;-><init>(Lcom/creativemobi/engine/bg;)V

    invoke-virtual {v0, v1}, Lcom/creativemobi/engine/cd;->a(Lcom/creativemobi/engine/br;)V

    goto :goto_0
.end method
