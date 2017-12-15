.class public final Lcom/creativemobi/engine/bp;
.super Landroid/view/SurfaceView;
.source "RacingView.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;
.implements Lcom/creativemobi/engine/bl;
.implements Lcom/creativemobi/engine/cc;


# static fields
.field private static A:Ljava/lang/String;

.field private static B:[I

.field private static c:Ljava/lang/String;

.field private static d:Ljava/lang/String;

.field private static e:Ljava/lang/String;

.field private static f:Ljava/lang/String;

.field private static g:I

.field private static y:Ljava/lang/String;

.field private static z:Ljava/lang/String;


# instance fields
.field private C:[I

.field private D:Ljava/lang/String;

.field private E:Ljava/lang/String;

.field private F:Ljava/lang/String;

.field private G:Z

.field private H:[I

.field private I:Ljava/util/ArrayList;

.field private J:[B

.field a:Lcom/creativemobi/engine/y;

.field b:Lcom/creativemobi/engine/w;

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private l:I

.field private m:I

.field private n:I

.field private o:I

.field private p:I

.field private q:I

.field private r:F

.field private s:F

.field private t:I

.field private u:Ljava/util/ArrayList;

.field private v:Ljava/util/ArrayList;

.field private w:[B

.field private x:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 108
    const-string v0, "http://cmobile4.master-code.ru/"

    sput-object v0, Lcom/creativemobi/engine/bp;->c:Ljava/lang/String;

    .line 110
    const-string v0, "http://acm.master-code.ru/"

    sput-object v0, Lcom/creativemobi/engine/bp;->d:Ljava/lang/String;

    .line 111
    const-string v0, "http://cmobile2.master-code.ru/"

    sput-object v0, Lcom/creativemobi/engine/bp;->e:Ljava/lang/String;

    .line 116
    const-string v0, "http://acm.master-code.ru/"

    sput-object v0, Lcom/creativemobi/engine/bp;->f:Ljava/lang/String;

    .line 118
    const/16 v0, 0xa

    sput v0, Lcom/creativemobi/engine/bp;->g:I

    .line 149
    sput-object v1, Lcom/creativemobi/engine/bp;->y:Ljava/lang/String;

    .line 150
    sput-object v1, Lcom/creativemobi/engine/bp;->z:Ljava/lang/String;

    .line 151
    const-string v0, ""

    sput-object v0, Lcom/creativemobi/engine/bp;->A:Ljava/lang/String;

    .line 152
    const/16 v0, 0xb

    new-array v0, v0, [I

    sput-object v0, Lcom/creativemobi/engine/bp;->B:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    .prologue
    const/high16 v1, 0x7fc00000    # NaNf

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 155
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    .line 123
    const/16 v0, 0x3a98

    iput v0, p0, Lcom/creativemobi/engine/bp;->h:I

    .line 124
    const/4 v0, 0x5

    iput v0, p0, Lcom/creativemobi/engine/bp;->i:I

    .line 128
    iput v3, p0, Lcom/creativemobi/engine/bp;->j:I

    .line 129
    iput v3, p0, Lcom/creativemobi/engine/bp;->k:I

    .line 130
    iput v3, p0, Lcom/creativemobi/engine/bp;->l:I

    .line 131
    iput v3, p0, Lcom/creativemobi/engine/bp;->m:I

    .line 132
    iput v3, p0, Lcom/creativemobi/engine/bp;->n:I

    .line 133
    iput v3, p0, Lcom/creativemobi/engine/bp;->o:I

    .line 134
    iput v3, p0, Lcom/creativemobi/engine/bp;->p:I

    .line 135
    iput v3, p0, Lcom/creativemobi/engine/bp;->q:I

    .line 136
    iput v1, p0, Lcom/creativemobi/engine/bp;->r:F

    .line 137
    iput v1, p0, Lcom/creativemobi/engine/bp;->s:F

    .line 139
    const/4 v0, -0x1

    iput v0, p0, Lcom/creativemobi/engine/bp;->t:I

    .line 140
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/creativemobi/engine/bp;->u:Ljava/util/ArrayList;

    .line 141
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/creativemobi/engine/bp;->v:Ljava/util/ArrayList;

    .line 144
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/creativemobi/engine/bp;->x:Landroid/os/Handler;

    .line 327
    const/16 v0, 0x14

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/creativemobi/engine/bp;->C:[I

    .line 359
    const-string v0, "save.dat"

    iput-object v0, p0, Lcom/creativemobi/engine/bp;->D:Ljava/lang/String;

    .line 360
    const-string v0, "save2.dat"

    iput-object v0, p0, Lcom/creativemobi/engine/bp;->E:Ljava/lang/String;

    .line 362
    iget-object v0, p0, Lcom/creativemobi/engine/bp;->D:Ljava/lang/String;

    iput-object v0, p0, Lcom/creativemobi/engine/bp;->F:Ljava/lang/String;

    .line 363
    iput-boolean v4, p0, Lcom/creativemobi/engine/bp;->G:Z

    .line 778
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/creativemobi/engine/bp;->H:[I

    .line 861
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/creativemobi/engine/bp;->I:Ljava/util/ArrayList;

    .line 156
    invoke-virtual {p0}, Lcom/creativemobi/engine/bp;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 159
    :try_start_0
    invoke-virtual {p0}, Lcom/creativemobi/engine/bp;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/creativemobi/engine/bp;->c(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 164
    :goto_0
    invoke-direct {p0}, Lcom/creativemobi/engine/bp;->E()V

    .line 167
    :try_start_1
    invoke-virtual {p0}, Lcom/creativemobi/engine/bp;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/creativemobi/engine/ac;->b(Landroid/content/Context;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_7

    .line 173
    :goto_1
    :try_start_2
    invoke-virtual {p0}, Lcom/creativemobi/engine/bp;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "useFirstFileName"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/creativemobi/engine/ac;->b(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/creativemobi/engine/bp;->G:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 176
    :try_start_3
    invoke-direct {p0}, Lcom/creativemobi/engine/bp;->A()Z
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    move-result v0

    move v1, v3

    .line 180
    :goto_2
    if-nez v0, :cond_0

    .line 181
    :try_start_4
    iget-boolean v0, p0, Lcom/creativemobi/engine/bp;->G:Z

    if-nez v0, :cond_5

    move v0, v4

    :goto_3
    iput-boolean v0, p0, Lcom/creativemobi/engine/bp;->G:Z

    .line 182
    invoke-direct {p0}, Lcom/creativemobi/engine/bp;->A()Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_6

    :cond_0
    move v0, v1

    .line 196
    :goto_4
    :try_start_5
    invoke-direct {p0}, Lcom/creativemobi/engine/bp;->C()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    .line 202
    :goto_5
    new-instance v1, Lcom/creativemobi/engine/bg;

    invoke-direct {v1}, Lcom/creativemobi/engine/bg;-><init>()V

    iput-object v1, p0, Lcom/creativemobi/engine/bp;->a:Lcom/creativemobi/engine/y;

    .line 204
    invoke-static {v3}, Lcom/creativemobi/DragRacing/menus/MainMenu;->b(Z)V

    .line 206
    invoke-virtual {p0}, Lcom/creativemobi/engine/bp;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/creativemobi/engine/ac;->j(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    if-eqz v0, :cond_7

    .line 208
    :cond_1
    invoke-virtual {p0}, Lcom/creativemobi/engine/bp;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/creativemobi/engine/bp;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/creativemobi/engine/bp;->y:Ljava/lang/String;

    .line 210
    if-eqz v0, :cond_2

    :try_start_6
    invoke-virtual {p0}, Lcom/creativemobi/engine/bp;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/creativemobi/engine/ac;->k(Landroid/content/Context;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    .line 223
    :cond_2
    :goto_6
    sget-object v0, Lcom/creativemobi/engine/bp;->A:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_3

    .line 224
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/creativemobi/engine/am;

    invoke-direct {v1, p0}, Lcom/creativemobi/engine/am;-><init>(Lcom/creativemobi/engine/bp;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 233
    :cond_3
    sget-object v0, Lcom/creativemobi/engine/bp;->A:Ljava/lang/String;

    if-nez v0, :cond_4

    const-string v0, ""

    sput-object v0, Lcom/creativemobi/engine/bp;->A:Ljava/lang/String;

    .line 235
    :cond_4
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/creativemobi/engine/bc;

    invoke-direct {v1, p0}, Lcom/creativemobi/engine/bc;-><init>(Lcom/creativemobi/engine/bp;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 236
    return-void

    .line 160
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 178
    :catch_1
    move-exception v0

    move v0, v3

    move v1, v4

    goto :goto_2

    :cond_5
    move v0, v3

    .line 181
    goto :goto_3

    .line 185
    :catch_2
    move-exception v0

    move v1, v3

    .line 186
    :goto_7
    iget-boolean v2, p0, Lcom/creativemobi/engine/bp;->G:Z

    if-nez v2, :cond_6

    move v2, v4

    :goto_8
    iput-boolean v2, p0, Lcom/creativemobi/engine/bp;->G:Z

    .line 188
    :try_start_7
    invoke-direct {p0}, Lcom/creativemobi/engine/bp;->A()Z

    .line 189
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    move v0, v1

    .line 192
    goto :goto_4

    :cond_6
    move v2, v3

    .line 186
    goto :goto_8

    .line 190
    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v0, v1

    goto :goto_4

    .line 198
    :catch_4
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5

    .line 214
    :cond_7
    invoke-virtual {p0}, Lcom/creativemobi/engine/bp;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android_id"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/creativemobi/engine/bp;->y:Ljava/lang/String;

    .line 215
    sget-object v0, Lcom/creativemobi/engine/bp;->A:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_2

    .line 216
    sget-object v0, Lcom/creativemobi/engine/bp;->A:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/creativemobi/engine/bp;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f060020

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/creativemobi/engine/bp;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v0, v1, v2, v3}, Lcom/creativemobi/engine/bp;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Z)I

    .line 217
    invoke-virtual {p0}, Lcom/creativemobi/engine/bp;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/creativemobi/engine/bp;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/creativemobi/engine/bp;->y:Ljava/lang/String;

    .line 218
    invoke-static {}, Lcom/creativemobi/engine/bp;->q()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/creativemobi/engine/bp;->A:Ljava/lang/String;

    .line 219
    invoke-virtual {p0}, Lcom/creativemobi/engine/bp;->p()V

    goto/16 :goto_6

    .line 212
    :catch_5
    move-exception v0

    goto/16 :goto_6

    .line 185
    :catch_6
    move-exception v0

    goto :goto_7

    :catch_7
    move-exception v0

    goto/16 :goto_1
.end method

.method private A()Z
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 244
    iget-boolean v0, p0, Lcom/creativemobi/engine/bp;->G:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/creativemobi/engine/bp;->D:Ljava/lang/String;

    .line 245
    :goto_0
    invoke-virtual {p0}, Lcom/creativemobi/engine/bp;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v0

    .line 246
    invoke-virtual {v0}, Ljava/io/FileInputStream;->available()I

    move-result v1

    new-array v1, v1, [B

    .line 247
    array-length v2, v1

    invoke-virtual {v0, v1, v6, v2}, Ljava/io/FileInputStream;->read([BII)I

    .line 248
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    .line 249
    invoke-virtual {p0}, Lcom/creativemobi/engine/bp;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/creativemobi/engine/ac;->l(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    invoke-static {v0}, Lcom/creativemobi/engine/aa;->a(Ljava/lang/String;)[B

    move-result-object v0

    .line 250
    :goto_1
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 251
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v2

    const/16 v3, 0xa

    if-ge v2, v3, :cond_1

    move v0, v6

    .line 266
    :goto_2
    return v0

    .line 244
    :cond_0
    iget-object v0, p0, Lcom/creativemobi/engine/bp;->E:Ljava/lang/String;

    goto :goto_0

    .line 254
    :cond_1
    :try_start_0
    invoke-direct {p0, v1}, Lcom/creativemobi/engine/bp;->a(Ljava/io/ByteArrayInputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 266
    const/4 v0, 0x1

    goto :goto_2

    .line 255
    :catch_0
    move-exception v1

    .line 256
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 257
    const-string v3, "device"

    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    const-string v3, "version"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    const-string v3, ""

    move-object v4, v3

    move v3, v6

    .line 260
    :goto_3
    array-length v5, v0

    if-ge v3, v5, :cond_2

    .line 261
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-byte v5, v0, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 260
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 262
    :cond_2
    const-string v0, "data"

    invoke-virtual {v2, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " in readPlayerData"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/flurry/android/v;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 264
    throw v1

    :cond_3
    move-object v0, v1

    goto/16 :goto_1
.end method

.method private static B()V
    .locals 1

    .prologue
    .line 275
    sget-object v0, Lcom/creativemobi/engine/bp;->z:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/creativemobi/engine/bp;->F()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/creativemobi/engine/bp;->z:Ljava/lang/String;

    .line 276
    :cond_0
    return-void
.end method

.method private C()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 346
    const-string v0, "save.dat"

    .line 347
    invoke-virtual {p0}, Lcom/creativemobi/engine/bp;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v0

    .line 348
    invoke-virtual {v0}, Ljava/io/FileInputStream;->available()I

    move-result v1

    new-array v1, v1, [B

    .line 349
    array-length v2, v1

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/FileInputStream;->read([BII)I

    .line 350
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    .line 352
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 353
    new-instance v1, Ljava/io/DataInputStream;

    invoke-direct {v1, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    move v0, v3

    .line 354
    :goto_0
    iget-object v2, p0, Lcom/creativemobi/engine/bp;->C:[I

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 355
    iget-object v2, p0, Lcom/creativemobi/engine/bp;->C:[I

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    aput v3, v2, v0

    .line 354
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 357
    :cond_0
    return-void
.end method

.method private D()V
    .locals 7

    .prologue
    const/4 v6, -0x1

    const/4 v5, 0x0

    .line 366
    iget-boolean v0, p0, Lcom/creativemobi/engine/bp;->G:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/creativemobi/engine/bp;->D:Ljava/lang/String;

    iput-object v0, p0, Lcom/creativemobi/engine/bp;->F:Ljava/lang/String;

    .line 368
    :goto_0
    invoke-virtual {p0}, Lcom/creativemobi/engine/bp;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "useFirstFileName"

    iget-boolean v2, p0, Lcom/creativemobi/engine/bp;->G:Z

    invoke-static {v0, v1, v2}, Lcom/creativemobi/engine/ac;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 369
    iget-boolean v0, p0, Lcom/creativemobi/engine/bp;->G:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcom/creativemobi/engine/bp;->G:Z

    .line 371
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    const/16 v0, 0x1000

    invoke-direct {v1, v0}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 374
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 375
    iget-object v0, p0, Lcom/creativemobi/engine/bp;->u:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    int-to-byte v0, v0

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->write(I)V

    .line 376
    iget-object v0, p0, Lcom/creativemobi/engine/bp;->u:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/creativemobi/engine/cg;

    .line 377
    invoke-virtual {v0, v2}, Lcom/creativemobi/engine/cg;->b(Ljava/io/DataOutputStream;)V

    goto :goto_2

    .line 367
    :cond_0
    iget-object v0, p0, Lcom/creativemobi/engine/bp;->E:Ljava/lang/String;

    iput-object v0, p0, Lcom/creativemobi/engine/bp;->F:Ljava/lang/String;

    goto :goto_0

    :cond_1
    move v0, v5

    .line 369
    goto :goto_1

    .line 380
    :cond_2
    iget v0, p0, Lcom/creativemobi/engine/bp;->h:I

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 381
    iget v0, p0, Lcom/creativemobi/engine/bp;->i:I

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 382
    iget v0, p0, Lcom/creativemobi/engine/bp;->t:I

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 384
    iget v0, p0, Lcom/creativemobi/engine/bp;->j:I

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 385
    iget v0, p0, Lcom/creativemobi/engine/bp;->k:I

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 386
    iget v0, p0, Lcom/creativemobi/engine/bp;->l:I

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 387
    iget v0, p0, Lcom/creativemobi/engine/bp;->m:I

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 388
    iget v0, p0, Lcom/creativemobi/engine/bp;->n:I

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 389
    iget v0, p0, Lcom/creativemobi/engine/bp;->o:I

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 390
    iget v0, p0, Lcom/creativemobi/engine/bp;->p:I

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 391
    iget v0, p0, Lcom/creativemobi/engine/bp;->q:I

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 392
    iget v0, p0, Lcom/creativemobi/engine/bp;->r:F

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeFloat(F)V

    .line 393
    iget v0, p0, Lcom/creativemobi/engine/bp;->s:F

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeFloat(F)V

    .line 394
    sget-object v0, Lcom/creativemobi/engine/bp;->A:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 395
    sget-object v0, Lcom/creativemobi/engine/bp;->A:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    move v0, v5

    .line 397
    :goto_3
    const/16 v3, 0xa

    if-ge v0, v3, :cond_3

    .line 398
    sget-object v3, Lcom/creativemobi/engine/bp;->B:[I

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 397
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 400
    :cond_3
    iget-object v0, p0, Lcom/creativemobi/engine/bp;->u:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/creativemobi/engine/cg;

    .line 401
    invoke-virtual {v0, v2}, Lcom/creativemobi/engine/cg;->a(Ljava/io/DataOutputStream;)V

    goto :goto_4

    .line 403
    :cond_4
    invoke-virtual {v2, v6}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 405
    sget-object v0, Lcom/creativemobi/engine/bp;->z:Ljava/lang/String;

    if-nez v0, :cond_6

    invoke-virtual {v2, v6}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 410
    :goto_5
    iget-object v0, p0, Lcom/creativemobi/engine/bp;->u:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_5
    :goto_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/creativemobi/engine/cg;

    .line 411
    iget v4, v0, Lcom/creativemobi/engine/cg;->g:F

    invoke-static {v4}, Ljava/lang/Float;->isNaN(F)Z

    move-result v4

    if-nez v4, :cond_5

    iget v4, v0, Lcom/creativemobi/engine/cg;->a:I

    int-to-byte v4, v4

    invoke-virtual {v2, v4}, Ljava/io/DataOutputStream;->write(I)V

    iget v4, v0, Lcom/creativemobi/engine/cg;->g:F

    invoke-virtual {v2, v4}, Ljava/io/DataOutputStream;->writeFloat(F)V

    iget v4, v0, Lcom/creativemobi/engine/cg;->h:F

    invoke-virtual {v2, v4}, Ljava/io/DataOutputStream;->writeFloat(F)V

    iget v0, v0, Lcom/creativemobi/engine/cg;->i:F

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeFloat(F)V

    goto :goto_6

    .line 407
    :cond_6
    sget-object v0, Lcom/creativemobi/engine/bp;->z:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    goto :goto_5

    .line 413
    :cond_7
    invoke-virtual {v2, v6}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 415
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V

    .line 417
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 418
    invoke-static {v0}, Lcom/creativemobi/engine/aa;->a([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 420
    invoke-virtual {p0}, Lcom/creativemobi/engine/bp;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/creativemobi/engine/bp;->F:Ljava/lang/String;

    invoke-virtual {v1, v2, v5}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v1

    .line 421
    array-length v2, v0

    invoke-virtual {v1, v0, v5, v2}, Ljava/io/FileOutputStream;->write([BII)V

    .line 422
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 424
    invoke-virtual {p0}, Lcom/creativemobi/engine/bp;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/creativemobi/engine/ac;->i(Landroid/content/Context;)V

    .line 425
    invoke-virtual {p0}, Lcom/creativemobi/engine/bp;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/creativemobi/engine/ac;->a(Landroid/content/Context;)V

    .line 426
    return-void
.end method

.method private E()V
    .locals 5

    .prologue
    .line 497
    :try_start_0
    invoke-virtual {p0}, Lcom/creativemobi/engine/bp;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "presets.dat"

    invoke-virtual {v0, v1}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v0

    .line 498
    invoke-virtual {v0}, Ljava/io/FileInputStream;->available()I

    move-result v1

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/creativemobi/engine/bp;->w:[B

    .line 499
    iget-object v1, p0, Lcom/creativemobi/engine/bp;->w:[B

    invoke-virtual {v0, v1}, Ljava/io/FileInputStream;->read([B)I

    .line 500
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    .line 502
    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lcom/creativemobi/engine/bp;->w:[B

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 504
    new-instance v1, Ljava/io/DataInputStream;

    invoke-direct {v1, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 505
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    .line 506
    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 507
    new-instance v3, Lcom/creativemobi/engine/cg;

    invoke-direct {v3}, Lcom/creativemobi/engine/cg;-><init>()V

    .line 508
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readByte()B

    move-result v4

    iput v4, v3, Lcom/creativemobi/engine/cg;->b:I

    .line 509
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readByte()B

    move-result v4

    iput v4, v3, Lcom/creativemobi/engine/cg;->a:I

    .line 510
    invoke-virtual {v3, v1}, Lcom/creativemobi/engine/cg;->a(Ljava/io/DataInputStream;)V

    .line 511
    iget-object v4, p0, Lcom/creativemobi/engine/bp;->v:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 506
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 514
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/creativemobi/engine/bp;->w:[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 518
    :goto_1
    return-void

    .line 515
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private static F()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1004
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/creativemobi/engine/bp;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "?general&users&op=getId&password=%1$s"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1005
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    sget-object v3, Lcom/creativemobi/engine/bp;->y:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1007
    const/4 v1, 0x0

    .line 1010
    :try_start_0
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 1011
    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 1012
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    .line 1014
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    .line 1015
    const/16 v3, 0xc8

    if-ne v2, v3, :cond_1

    invoke-static {v0}, Lcom/creativemobi/engine/bp;->b(Ljava/net/HttpURLConnection;)Ljava/lang/String;

    move-result-object v1

    .line 1021
    :cond_0
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 1025
    :goto_0
    sput-object v0, Lcom/creativemobi/engine/bp;->z:Ljava/lang/String;

    .line 1026
    :goto_1
    return-object v0

    .line 1016
    :cond_1
    const/16 v3, 0x3e5

    if-ne v2, v3, :cond_0

    .line 1017
    :try_start_1
    sget-object v0, Lcom/creativemobi/engine/bp;->e:Ljava/lang/String;

    sput-object v0, Lcom/creativemobi/engine/bp;->d:Ljava/lang/String;

    .line 1018
    invoke-static {}, Lcom/creativemobi/engine/bp;->F()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_1

    .line 1022
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v1

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;I)I
    .locals 5

    .prologue
    const/16 v4, 0x64

    .line 1106
    invoke-static {}, Lcom/creativemobi/engine/bp;->B()V

    .line 1107
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/creativemobi/engine/bp;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "?gameId=1001&op=getRate&level=%1$d&uid=%2$s"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1108
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    sget-object v3, Lcom/creativemobi/engine/bp;->z:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1110
    const/4 v1, 0x0

    .line 1112
    :try_start_0
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 1113
    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 1114
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    .line 1116
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    .line 1117
    const/16 v3, 0xc8

    if-ne v2, v3, :cond_0

    .line 1118
    invoke-static {v0}, Lcom/creativemobi/engine/bp;->b(Ljava/net/HttpURLConnection;)Ljava/lang/String;

    move-result-object v1

    .line 1120
    :cond_0
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 1126
    :goto_0
    if-eqz v0, :cond_2

    :try_start_1
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    .line 1130
    :goto_1
    if-ne v0, v4, :cond_1

    invoke-static {p0, p1}, Lcom/creativemobi/engine/ac;->b(Landroid/content/Context;I)I

    move-result v0

    .line 1131
    :cond_1
    return v0

    .line 1121
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v1

    goto :goto_0

    :catch_1
    move-exception v0

    :cond_2
    move v0, v4

    goto :goto_1
.end method

.method static synthetic a(Lcom/creativemobi/engine/bp;I)I
    .locals 1

    .prologue
    .line 42
    iget v0, p0, Lcom/creativemobi/engine/bp;->h:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/creativemobi/engine/bp;->h:I

    return v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Z)I
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1031
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/creativemobi/engine/bp;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "?general&users&op=registration&username=%1$s&password=%2$s&os=%3$s"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1032
    new-array v1, v6, [Ljava/lang/Object;

    aput-object p0, v1, v3

    sget-object v2, Lcom/creativemobi/engine/bp;->y:Ljava/lang/String;

    aput-object v2, v1, v4

    aput-object p1, v1, v5

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1033
    if-nez p3, :cond_0

    .line 1035
    invoke-static {p2}, Lcom/creativemobi/engine/bp;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 1036
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/creativemobi/engine/bp;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "?general&users&op=registration&username=%1$s&password=%2$s&os=%3$s&oldPassword=%4$s"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1037
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v3

    aput-object v0, v2, v4

    aput-object p1, v2, v5

    sget-object v0, Lcom/creativemobi/engine/bp;->y:Ljava/lang/String;

    aput-object v0, v2, v6

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1040
    :cond_0
    const/16 v1, 0x20

    const/16 v2, 0x5f

    :try_start_0
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    .line 1044
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 1045
    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 1046
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    .line 1048
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    .line 1050
    const/16 v2, 0xc8

    if-ne v1, v2, :cond_3

    .line 1051
    invoke-static {v0}, Lcom/creativemobi/engine/bp;->b(Ljava/net/HttpURLConnection;)Ljava/lang/String;

    move-result-object v2

    .line 1052
    const/4 v3, 0x0

    sput-object v3, Lcom/creativemobi/engine/bp;->z:Ljava/lang/String;

    .line 1053
    invoke-static {}, Lcom/creativemobi/engine/bp;->B()V

    .line 1054
    const-string v3, "Error"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_1

    const/16 v0, 0x32c

    .line 1068
    :goto_0
    return v0

    .line 1055
    :cond_1
    invoke-static {p2}, Lcom/creativemobi/engine/ac;->k(Landroid/content/Context;)V

    .line 1063
    :cond_2
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    move v0, v1

    .line 1065
    goto :goto_0

    .line 1056
    :cond_3
    const/16 v2, 0x3e5

    if-ne v1, v2, :cond_4

    .line 1057
    sget-object v0, Lcom/creativemobi/engine/bp;->e:Ljava/lang/String;

    sput-object v0, Lcom/creativemobi/engine/bp;->d:Ljava/lang/String;

    .line 1058
    invoke-static {p0, p1, p2, p3}, Lcom/creativemobi/engine/bp;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Z)I

    move-result v0

    goto :goto_0

    .line 1059
    :cond_4
    const/16 v2, 0x32b

    if-ne v1, v2, :cond_2

    if-nez p3, :cond_2

    .line 1060
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1, p2, p3}, Lcom/creativemobi/engine/bp;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Z)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 1068
    :catch_0
    move-exception v0

    const/4 v0, -0x1

    goto :goto_0
.end method

.method private static a(IIIJ)Ljava/lang/String;
    .locals 4

    .prologue
    .line 1324
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/creativemobi/engine/bp;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "?gameId=1001&op=regT&level=%1$d&distance=%2$d&password=%3$s&name=%4$s&type=%5$d&typeData=%6$d"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1325
    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    sget-object v3, Lcom/creativemobi/engine/bp;->y:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    sget-object v3, Lcom/creativemobi/engine/bp;->A:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x5

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1327
    const/4 v1, 0x0

    .line 1329
    :try_start_0
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 1330
    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p0

    check-cast p0, Ljava/net/HttpURLConnection;

    .line 1331
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->connect()V

    .line 1333
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    .line 1334
    const/16 v2, 0xc8

    if-ne v0, v2, :cond_0

    invoke-static {p0}, Lcom/creativemobi/engine/bp;->b(Ljava/net/HttpURLConnection;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1335
    :goto_0
    :try_start_1
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1339
    :goto_1
    return-object v0

    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_1

    :catch_1
    move-exception v1

    goto :goto_1

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method public static a(IJ)Ljava/lang/String;
    .locals 2

    .prologue
    .line 1316
    const/16 v0, 0xa

    const/4 v1, 0x1

    invoke-static {v0, p0, v1, p1, p2}, Lcom/creativemobi/engine/bp;->a(IIIJ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Ljava/net/HttpURLConnection;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    invoke-static {p0}, Lcom/creativemobi/engine/bp;->b(Ljava/net/HttpURLConnection;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(II[B)V
    .locals 2

    .prologue
    .line 1390
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/creativemobi/engine/az;

    invoke-direct {v1, p0, p1, p2}, Lcom/creativemobi/engine/az;-><init>(II[B)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1403
    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 5

    .prologue
    .line 270
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/creativemobi/engine/bp;->y:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v1

    const-wide v3, 0x412e848000000000L    # 1000000.0

    mul-double/2addr v1, v3

    double-to-int v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/creativemobi/engine/bp;->y:Ljava/lang/String;

    .line 271
    const-string v0, "PASSWORD"

    sget-object v1, Lcom/creativemobi/engine/bp;->y:Ljava/lang/String;

    invoke-static {p0, v0, v1}, Lcom/creativemobi/engine/ac;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    return-void
.end method

.method private a(Ljava/io/ByteArrayInputStream;)V
    .locals 7

    .prologue
    const/4 v6, -0x1

    const/4 v5, 0x0

    .line 429
    new-instance v0, Ljava/io/DataInputStream;

    invoke-direct {v0, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 430
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readByte()B

    move-result v1

    .line 431
    iget-object v2, p0, Lcom/creativemobi/engine/bp;->u:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    move v2, v5

    .line 433
    :goto_0
    if-ge v2, v1, :cond_0

    .line 434
    new-instance v3, Lcom/creativemobi/engine/cg;

    invoke-direct {v3}, Lcom/creativemobi/engine/cg;-><init>()V

    .line 435
    invoke-virtual {v3, v0}, Lcom/creativemobi/engine/cg;->c(Ljava/io/DataInputStream;)V

    .line 436
    iget-object v4, p0, Lcom/creativemobi/engine/bp;->u:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 433
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 439
    :cond_0
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    iput v1, p0, Lcom/creativemobi/engine/bp;->h:I

    .line 440
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    iput v1, p0, Lcom/creativemobi/engine/bp;->i:I

    .line 441
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readByte()B

    move-result v1

    iput v1, p0, Lcom/creativemobi/engine/bp;->t:I

    .line 443
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    iput v1, p0, Lcom/creativemobi/engine/bp;->j:I

    .line 444
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    iput v1, p0, Lcom/creativemobi/engine/bp;->k:I

    .line 445
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    iput v1, p0, Lcom/creativemobi/engine/bp;->l:I

    .line 446
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    iput v1, p0, Lcom/creativemobi/engine/bp;->m:I

    .line 447
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    iput v1, p0, Lcom/creativemobi/engine/bp;->n:I

    .line 448
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    iput v1, p0, Lcom/creativemobi/engine/bp;->o:I

    .line 449
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    iput v1, p0, Lcom/creativemobi/engine/bp;->p:I

    .line 450
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    iput v1, p0, Lcom/creativemobi/engine/bp;->q:I

    .line 451
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readFloat()F

    move-result v1

    iput v1, p0, Lcom/creativemobi/engine/bp;->r:F

    .line 452
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readFloat()F

    move-result v1

    iput v1, p0, Lcom/creativemobi/engine/bp;->s:F

    .line 454
    invoke-virtual {v0}, Ljava/io/DataInputStream;->available()I

    move-result v1

    if-lez v1, :cond_2

    .line 455
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readShort()S

    move-result v1

    .line 456
    new-array v2, v1, [B

    .line 457
    invoke-virtual {v0, v2, v5, v1}, Ljava/io/DataInputStream;->read([BII)I

    .line 458
    sget-object v1, Lcom/creativemobi/engine/bp;->A:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    sput-object v1, Lcom/creativemobi/engine/bp;->A:Ljava/lang/String;

    :cond_1
    move v1, v5

    .line 460
    :goto_1
    const/16 v2, 0xa

    if-ge v1, v2, :cond_2

    .line 461
    sget-object v2, Lcom/creativemobi/engine/bp;->B:[I

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    aput v3, v2, v1

    .line 460
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 464
    :cond_2
    invoke-virtual {v0}, Ljava/io/DataInputStream;->available()I

    move-result v1

    if-lez v1, :cond_4

    .line 466
    :goto_2
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readByte()B

    move-result v1

    .line 467
    if-eq v1, v6, :cond_4

    .line 468
    invoke-direct {p0, v1}, Lcom/creativemobi/engine/bp;->i(I)Lcom/creativemobi/engine/cg;

    move-result-object v1

    .line 469
    if-eqz v1, :cond_3

    invoke-virtual {v1, v0}, Lcom/creativemobi/engine/cg;->a(Ljava/io/DataInputStream;)V

    goto :goto_2

    .line 470
    :cond_3
    new-instance v1, Lcom/creativemobi/engine/cg;

    invoke-direct {v1}, Lcom/creativemobi/engine/cg;-><init>()V

    invoke-virtual {v1, v0}, Lcom/creativemobi/engine/cg;->a(Ljava/io/DataInputStream;)V

    goto :goto_2

    .line 474
    :cond_4
    invoke-virtual {v0}, Ljava/io/DataInputStream;->available()I

    move-result v1

    if-lez v1, :cond_5

    .line 475
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    .line 479
    :cond_5
    invoke-virtual {v0}, Ljava/io/DataInputStream;->available()I

    move-result v1

    if-lez v1, :cond_7

    .line 481
    :goto_3
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readByte()B

    move-result v1

    .line 482
    if-eq v1, v6, :cond_7

    .line 483
    invoke-direct {p0, v1}, Lcom/creativemobi/engine/bp;->i(I)Lcom/creativemobi/engine/cg;

    move-result-object v1

    .line 484
    if-eqz v1, :cond_6

    invoke-virtual {v1, v0}, Lcom/creativemobi/engine/cg;->b(Ljava/io/DataInputStream;)V

    goto :goto_3

    .line 485
    :cond_6
    new-instance v1, Lcom/creativemobi/engine/cg;

    invoke-direct {v1}, Lcom/creativemobi/engine/cg;-><init>()V

    invoke-virtual {v1, v0}, Lcom/creativemobi/engine/cg;->b(Ljava/io/DataInputStream;)V

    goto :goto_3

    .line 489
    :cond_7
    sget-object v0, Lcom/creativemobi/engine/bp;->A:Ljava/lang/String;

    if-eqz v0, :cond_8

    sget-object v0, Lcom/creativemobi/engine/bp;->A:Ljava/lang/String;

    const-string v1, "Error"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 490
    const-string v0, ""

    sput-object v0, Lcom/creativemobi/engine/bp;->A:Ljava/lang/String;

    .line 491
    const/4 v0, 0x0

    sput-object v0, Lcom/creativemobi/engine/bp;->z:Ljava/lang/String;

    .line 493
    :cond_8
    return-void
.end method

.method public static a(Ljava/lang/String;III)V
    .locals 4

    .prologue
    .line 1234
    invoke-static {}, Lcom/creativemobi/engine/bp;->B()V

    .line 1235
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/creativemobi/engine/bp;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "?gameId=1001&op=setTResult&tid=%1$s&time=%2$d&carN=%3$d&password=%4$s&rate=%5$d&uid=%6$s"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1236
    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    sget-object v3, Lcom/creativemobi/engine/bp;->y:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x4

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x5

    sget-object v3, Lcom/creativemobi/engine/bp;->z:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1239
    :try_start_0
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 1240
    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p0

    check-cast p0, Ljava/net/HttpURLConnection;

    .line 1242
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->connect()V

    .line 1243
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    .line 1245
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1249
    :goto_0
    return-void

    .line 1246
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic a(Ljava/lang/String;[B)Z
    .locals 1

    .prologue
    .line 42
    invoke-static {p0, p1}, Lcom/creativemobi/engine/bp;->b(Ljava/lang/String;[B)Z

    move-result v0

    return v0
.end method

.method static synthetic b(Lcom/creativemobi/engine/bp;I)I
    .locals 1

    .prologue
    .line 42
    iget v0, p0, Lcom/creativemobi/engine/bp;->i:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/creativemobi/engine/bp;->i:I

    return v0
.end method

.method public static b(Ljava/lang/String;)I
    .locals 4

    .prologue
    .line 948
    invoke-static {}, Lcom/creativemobi/engine/bp;->B()V

    .line 949
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/creativemobi/engine/bp;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "?general&users&op=setName&id=%1$s&password=%2$s&name=%3$s&uid=%4$s"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 950
    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    sget-object v3, Lcom/creativemobi/engine/bp;->z:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    sget-object v3, Lcom/creativemobi/engine/bp;->y:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    aput-object p0, v1, v2

    const/4 v2, 0x3

    sget-object v3, Lcom/creativemobi/engine/bp;->z:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 953
    const/16 v1, 0x20

    const/16 v2, 0x5f

    :try_start_0
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    .line 954
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 955
    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 956
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    .line 958
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    .line 959
    const/16 v2, 0xc8

    if-ne v1, v2, :cond_0

    .line 960
    invoke-static {v0}, Lcom/creativemobi/engine/bp;->b(Ljava/net/HttpURLConnection;)Ljava/lang/String;

    move-result-object v2

    .line 961
    const-string v3, "Error"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_2

    const/16 v0, 0x336

    .line 973
    :goto_0
    return v0

    .line 962
    :cond_0
    const/16 v2, 0x3e5

    if-ne v1, v2, :cond_2

    .line 963
    sget-object v0, Lcom/creativemobi/engine/bp;->d:Ljava/lang/String;

    sget-object v2, Lcom/creativemobi/engine/bp;->e:Ljava/lang/String;

    if-ne v0, v2, :cond_1

    move v0, v1

    goto :goto_0

    .line 964
    :cond_1
    sget-object v0, Lcom/creativemobi/engine/bp;->e:Ljava/lang/String;

    sput-object v0, Lcom/creativemobi/engine/bp;->d:Ljava/lang/String;

    .line 965
    invoke-static {p0}, Lcom/creativemobi/engine/bp;->b(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 968
    :cond_2
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 970
    goto :goto_0

    .line 973
    :catch_0
    move-exception v0

    const/4 v0, -0x1

    goto :goto_0
.end method

.method private static b(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 239
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    .line 240
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static b(Ljava/net/HttpURLConnection;)Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1252
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 1255
    const/16 v1, 0x200

    new-array v1, v1, [B

    move v2, v4

    .line 1260
    :cond_0
    array-length v3, v1

    sub-int/2addr v3, v2

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    .line 1261
    if-lez v3, :cond_1

    add-int/2addr v2, v3

    .line 1262
    :cond_1
    if-gtz v3, :cond_0

    .line 1263
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1, v4, v2}, Ljava/lang/String;-><init>([BII)V

    .line 1264
    return-object v0
.end method

.method private b(Lcom/creativemobi/engine/y;Z)V
    .locals 2

    .prologue
    .line 547
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/creativemobi/engine/ak;

    invoke-direct {v1, p0, p1, p2}, Lcom/creativemobi/engine/ak;-><init>(Lcom/creativemobi/engine/bp;Lcom/creativemobi/engine/y;Z)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 567
    return-void
.end method

.method private static b(Ljava/lang/String;[B)Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1371
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 1374
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p0

    check-cast p0, Ljava/net/HttpURLConnection;

    .line 1375
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 1376
    const-string v0, "Content-Type"

    const-string v1, "application/octet-stream"

    invoke-virtual {p0, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1377
    const-string v0, "Content-Length"

    array-length v1, p1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1378
    const-string v0, "POST"

    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 1379
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->connect()V

    .line 1380
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    .line 1381
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    .line 1382
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1383
    const/16 v1, 0xc8

    if-ne v0, v1, :cond_0

    move v0, v2

    .line 1386
    :goto_0
    return v0

    :catch_0
    move-exception v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private c(Landroid/content/Context;)V
    .locals 5

    .prologue
    .line 866
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const v1, 0x7f06001d

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 867
    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v1

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/creativemobi/engine/bp;->J:[B

    .line 868
    iget-object v1, p0, Lcom/creativemobi/engine/bp;->J:[B

    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I

    .line 869
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 871
    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lcom/creativemobi/engine/bp;->J:[B

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 873
    new-instance v1, Ljava/io/DataInputStream;

    invoke-direct {v1, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 874
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readByte()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readByte()B

    move-result v2

    shl-int/lit8 v2, v2, 0x8

    add-int/2addr v0, v2

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readByte()B

    move-result v2

    shl-int/lit8 v2, v2, 0x10

    add-int/2addr v0, v2

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readByte()B

    move-result v2

    shl-int/lit8 v2, v2, 0x18

    add-int/2addr v0, v2

    .line 875
    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 876
    invoke-static {v1, v2}, Lcom/creativemobi/engine/m;->a(Ljava/io/DataInputStream;I)Lcom/creativemobi/engine/m;

    move-result-object v3

    .line 877
    iget-object v4, p0, Lcom/creativemobi/engine/bp;->I:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 875
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 880
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 883
    :cond_0
    return-void
.end method

.method public static c(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 1184
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/creativemobi/engine/bb;

    invoke-direct {v1, p0}, Lcom/creativemobi/engine/bb;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1206
    return-void
.end method

.method public static d(Ljava/lang/String;)I
    .locals 5

    .prologue
    const/4 v4, -0x1

    .line 1209
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/creativemobi/engine/bp;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "?gameId=1001&op=statusT&tid=%1$s"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1210
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1212
    const/4 v1, 0x0

    .line 1214
    :try_start_0
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 1215
    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p0

    check-cast p0, Ljava/net/HttpURLConnection;

    .line 1216
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->connect()V

    .line 1218
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    .line 1219
    const/16 v2, 0xc8

    if-ne v0, v2, :cond_2

    invoke-static {p0}, Lcom/creativemobi/engine/bp;->b(Ljava/net/HttpURLConnection;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 1220
    :goto_0
    :try_start_1
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 1222
    if-eqz v0, :cond_0

    const-string v1, "getTournamentStatus"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getTournamentStatus result"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 1225
    :cond_0
    :goto_1
    if-nez v0, :cond_1

    move v0, v4

    .line 1229
    :goto_2
    return v0

    .line 1227
    :cond_1
    :try_start_2
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result v0

    goto :goto_2

    .line 1229
    :catch_0
    move-exception v0

    move v0, v4

    goto :goto_2

    :catch_1
    move-exception v0

    move-object v0, v1

    goto :goto_1

    :catch_2
    move-exception v1

    goto :goto_1

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method public static e(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 1268
    invoke-static {}, Lcom/creativemobi/engine/bp;->B()V

    .line 1269
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/creativemobi/engine/bp;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "?gameId=1001&op=getTTypeData&tid=%1$s&password=%2$s&uid=%3$s"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1270
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    sget-object v3, Lcom/creativemobi/engine/bp;->y:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    sget-object v3, Lcom/creativemobi/engine/bp;->z:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1272
    const/4 v1, 0x0

    .line 1274
    :try_start_0
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 1275
    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p0

    check-cast p0, Ljava/net/HttpURLConnection;

    .line 1276
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->connect()V

    .line 1278
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    .line 1279
    const/16 v2, 0xc8

    if-ne v0, v2, :cond_1

    invoke-static {p0}, Lcom/creativemobi/engine/bp;->b(Ljava/net/HttpURLConnection;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1281
    :goto_0
    if-eqz v0, :cond_0

    :try_start_1
    const-string v1, "getTournamentResult"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getTournamentResult result"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1283
    :cond_0
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1287
    :goto_1
    return-object v0

    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_1

    :catch_1
    move-exception v1

    goto :goto_1

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public static f(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 1291
    invoke-static {}, Lcom/creativemobi/engine/bp;->B()V

    .line 1292
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/creativemobi/engine/bp;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "?gameId=1001&op=getTResult&tid=%1$s&password=%2$s&uid=%3$s"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1293
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    sget-object v3, Lcom/creativemobi/engine/bp;->y:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    sget-object v3, Lcom/creativemobi/engine/bp;->z:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1295
    const/4 v1, 0x0

    .line 1297
    :try_start_0
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 1298
    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p0

    check-cast p0, Ljava/net/HttpURLConnection;

    .line 1299
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->connect()V

    .line 1301
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    .line 1302
    const/16 v2, 0xc8

    if-ne v0, v2, :cond_1

    invoke-static {p0}, Lcom/creativemobi/engine/bp;->b(Ljava/net/HttpURLConnection;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1304
    :goto_0
    if-eqz v0, :cond_0

    :try_start_1
    const-string v1, "getTournamentResult"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getTournamentResult result"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1306
    :cond_0
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1310
    :goto_1
    return-object v0

    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_1

    :catch_1
    move-exception v1

    goto :goto_1

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public static f(II)V
    .locals 4

    .prologue
    .line 1137
    invoke-static {}, Lcom/creativemobi/engine/bp;->B()V

    .line 1138
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/creativemobi/engine/bp;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "?gameId=1001&op=setRate&level=%1$d&name=%2$s&password=%3$s&rate=%4$d&uid=%5$s"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1139
    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    sget-object v3, Lcom/creativemobi/engine/bp;->A:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    sget-object v3, Lcom/creativemobi/engine/bp;->y:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    sget-object v3, Lcom/creativemobi/engine/bp;->z:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1141
    :try_start_0
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 1145
    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p0

    check-cast p0, Ljava/net/HttpURLConnection;

    .line 1146
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->connect()V

    .line 1148
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    .line 1149
    const/16 v1, 0xc8

    if-ne v0, v1, :cond_0

    .line 1150
    invoke-static {p0}, Lcom/creativemobi/engine/bp;->b(Ljava/net/HttpURLConnection;)Ljava/lang/String;

    .line 1153
    :cond_0
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1157
    :goto_0
    return-void

    .line 1154
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static g(II)Ljava/lang/String;
    .locals 3

    .prologue
    .line 1320
    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    invoke-static {p0, p1, v0, v1, v2}, Lcom/creativemobi/engine/bp;->a(IIIJ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static h(I)Ljava/lang/String;
    .locals 5

    .prologue
    .line 1160
    invoke-static {}, Lcom/creativemobi/engine/bp;->B()V

    .line 1161
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/creativemobi/engine/bp;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "?gameId=1001&op=getRating&level=%1$d&id=%2$s&password=%3$s&uid=%4$s&megaRacers=0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1162
    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    sget-object v3, Lcom/creativemobi/engine/bp;->z:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    sget-object v3, Lcom/creativemobi/engine/bp;->y:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    sget-object v3, Lcom/creativemobi/engine/bp;->z:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1164
    const/4 v1, 0x0

    .line 1167
    :try_start_0
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 1168
    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p0

    check-cast p0, Ljava/net/HttpURLConnection;

    .line 1169
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->connect()V

    .line 1171
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    .line 1172
    const/16 v2, 0xc8

    if-ne v0, v2, :cond_0

    .line 1173
    invoke-static {p0}, Lcom/creativemobi/engine/bp;->b(Ljava/net/HttpURLConnection;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1176
    :goto_0
    :try_start_1
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1180
    :goto_1
    return-object v0

    .line 1177
    :catch_0
    move-exception v0

    :goto_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v1

    goto :goto_1

    :catch_1
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    goto :goto_2

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method static synthetic h(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 42
    sput-object p0, Lcom/creativemobi/engine/bp;->A:Ljava/lang/String;

    return-object p0
.end method

.method public static h(II)[B
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1468
    const-string v0, "http://acm.master-code.ru/?gameId=1001&op=2&level=%1$d&distance=%2$d"

    .line 1470
    new-array v1, v5, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1472
    invoke-static {v0}, Lcom/creativemobi/engine/bp;->j(Ljava/lang/String;)[B

    move-result-object v0

    .line 1473
    if-nez v0, :cond_0

    .line 1474
    const-string v0, "http://cmobile.master-code.ru/?gameId=1001&op=2&level=%1$d&distance=%2$d"

    .line 1475
    new-array v1, v5, [Ljava/lang/Object;

    sget v2, Lcom/creativemobi/engine/bp;->g:I

    add-int/2addr v2, p0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1476
    invoke-static {v0}, Lcom/creativemobi/engine/bp;->j(Ljava/lang/String;)[B

    move-result-object v0

    .line 1478
    :cond_0
    return-object v0
.end method

.method private i(I)Lcom/creativemobi/engine/cg;
    .locals 2

    .prologue
    .line 722
    iget-object v0, p0, Lcom/creativemobi/engine/bp;->u:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/creativemobi/engine/cg;

    .line 723
    iget v1, p0, Lcom/creativemobi/engine/cg;->a:I

    if-ne v1, p1, :cond_0

    move-object v0, p0

    .line 724
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private i(II)Lcom/creativemobi/engine/m;
    .locals 4

    .prologue
    .line 781
    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lcom/creativemobi/engine/bp;->J:[B

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 782
    new-instance v1, Ljava/io/DataInputStream;

    invoke-direct {v1, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 783
    int-to-long v2, p2

    invoke-virtual {v1, v2, v3}, Ljava/io/DataInputStream;->skip(J)J

    .line 784
    invoke-static {v1, p1}, Lcom/creativemobi/engine/m;->a(Ljava/io/DataInputStream;I)Lcom/creativemobi/engine/m;

    move-result-object v0

    return-object v0
.end method

.method private static i(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .prologue
    .line 1082
    invoke-static {}, Lcom/creativemobi/engine/bp;->B()V

    .line 1083
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "?gameId=1001&op=regStatus"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1084
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1086
    const/4 v1, 0x0

    .line 1089
    :try_start_0
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 1090
    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p0

    check-cast p0, Ljava/net/HttpURLConnection;

    .line 1091
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->connect()V

    .line 1093
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    .line 1094
    const/16 v2, 0xc8

    if-ne v0, v2, :cond_0

    .line 1095
    invoke-static {p0}, Lcom/creativemobi/engine/bp;->b(Ljava/net/HttpURLConnection;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1096
    :try_start_1
    const-string v1, "getServerStatus"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getServerStatus "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1098
    :goto_0
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1102
    :goto_1
    return-object v0

    .line 1097
    :cond_0
    :try_start_2
    const-string v2, "getServerStatus"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getServerStatus "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-object v0, v1

    goto :goto_0

    .line 1099
    :catch_0
    move-exception v0

    :goto_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v1

    goto :goto_1

    :catch_1
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    goto :goto_2
.end method

.method private j(I)Lcom/creativemobi/engine/cg;
    .locals 2

    .prologue
    .line 763
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/creativemobi/engine/bp;->u:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 764
    iget-object v0, p0, Lcom/creativemobi/engine/bp;->u:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/creativemobi/engine/cg;

    iget v0, v0, Lcom/creativemobi/engine/cg;->a:I

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lcom/creativemobi/engine/bp;->u:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/creativemobi/engine/cg;

    move-object v0, p0

    .line 765
    :goto_1
    return-object v0

    .line 763
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 765
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private static j(Ljava/lang/String;)[B
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1438
    .line 1439
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 1443
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p0

    check-cast p0, Ljava/net/HttpURLConnection;

    .line 1444
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->connect()V

    .line 1446
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    .line 1447
    const/16 v1, 0xc8

    if-eq v0, v1, :cond_0

    move-object v0, v4

    .line 1464
    :goto_0
    return-object v0

    .line 1449
    :cond_0
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 1450
    const/4 v1, 0x0

    .line 1451
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v2

    .line 1453
    const/16 v3, 0x12c

    if-le v2, v3, :cond_1

    move-object v0, v4

    goto :goto_0

    .line 1454
    :cond_1
    new-array v2, v2, [B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1457
    :cond_2
    :try_start_1
    array-length v3, v2

    sub-int/2addr v3, v1

    invoke-virtual {v0, v2, v1, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    .line 1458
    add-int/2addr v1, v3

    .line 1459
    if-lez v3, :cond_3

    array-length v3, v2

    sub-int/2addr v3, v1

    if-gtz v3, :cond_2

    .line 1461
    :cond_3
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v0, v2

    .line 1463
    goto :goto_0

    :catch_0
    move-exception v0

    move-object v0, v4

    goto :goto_0

    :catch_1
    move-exception v0

    move-object v0, v2

    goto :goto_0
.end method

.method public static q()Ljava/lang/String;
    .locals 4

    .prologue
    .line 977
    invoke-static {}, Lcom/creativemobi/engine/bp;->B()V

    .line 978
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/creativemobi/engine/bp;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "?general&users&op=getName&password=%1$s&uid=%2$s"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 979
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    sget-object v3, Lcom/creativemobi/engine/bp;->y:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    sget-object v3, Lcom/creativemobi/engine/bp;->z:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 981
    const-string v1, ""

    .line 983
    :try_start_0
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 984
    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 985
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    .line 987
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    .line 988
    const/16 v3, 0xc8

    if-ne v2, v3, :cond_0

    .line 989
    invoke-static {v0}, Lcom/creativemobi/engine/bp;->b(Ljava/net/HttpURLConnection;)Ljava/lang/String;

    move-result-object v1

    .line 990
    const-string v2, "Error"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_1

    const-string v0, ""

    .line 1000
    :goto_0
    return-object v0

    .line 991
    :cond_0
    const/16 v3, 0x3e5

    if-ne v2, v3, :cond_1

    .line 992
    sget-object v0, Lcom/creativemobi/engine/bp;->e:Ljava/lang/String;

    sput-object v0, Lcom/creativemobi/engine/bp;->d:Ljava/lang/String;

    .line 993
    invoke-static {}, Lcom/creativemobi/engine/bp;->q()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 996
    :cond_1
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 999
    goto :goto_0

    .line 997
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v1

    goto :goto_0
.end method

.method public static r()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1073
    const-string v0, "http://acm.master-code.ru/"

    invoke-static {v0}, Lcom/creativemobi/engine/bp;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 1074
    if-nez v0, :cond_3

    .line 1075
    const-string v1, "http://cmt.master-code.ru/"

    invoke-static {v1}, Lcom/creativemobi/engine/bp;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 1076
    if-eqz v1, :cond_0

    const-string v2, "http://cmt.master-code.ru/"

    sput-object v2, Lcom/creativemobi/engine/bp;->f:Ljava/lang/String;

    .line 1078
    :cond_0
    :goto_0
    if-nez v1, :cond_1

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_2
    move v0, v3

    goto :goto_1

    :cond_3
    move v1, v3

    goto :goto_0
.end method

.method public static s()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1562
    sget-object v0, Lcom/creativemobi/engine/bp;->A:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic t()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/creativemobi/engine/bp;->A:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic u()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/creativemobi/engine/bp;->d:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic v()V
    .locals 0

    .prologue
    .line 42
    invoke-static {}, Lcom/creativemobi/engine/bp;->B()V

    return-void
.end method

.method static synthetic w()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/creativemobi/engine/bp;->z:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic x()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/creativemobi/engine/bp;->y:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic y()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/creativemobi/engine/bp;->f:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic z()I
    .locals 1

    .prologue
    .line 42
    sget v0, Lcom/creativemobi/engine/bp;->g:I

    return v0
.end method


# virtual methods
.method public final a()Lcom/creativemobi/engine/cg;
    .locals 4

    .prologue
    .line 280
    iget-object v0, p0, Lcom/creativemobi/engine/bp;->u:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/creativemobi/engine/cg;

    .line 281
    iget v2, v0, Lcom/creativemobi/engine/cg;->a:I

    iget v3, p0, Lcom/creativemobi/engine/bp;->t:I

    if-ne v2, v3, :cond_0

    .line 282
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Lcom/creativemobi/engine/w;I)Lcom/creativemobi/engine/m;
    .locals 8

    .prologue
    .line 789
    const/4 v0, 0x0

    .line 790
    new-instance v1, Ljava/io/ByteArrayInputStream;

    iget-object v2, p0, Lcom/creativemobi/engine/bp;->J:[B

    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 791
    new-instance v2, Ljava/io/DataInputStream;

    invoke-direct {v2, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 792
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readByte()B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readByte()B

    move-result v4

    shl-int/lit8 v4, v4, 0x8

    add-int/2addr v3, v4

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readByte()B

    move-result v4

    shl-int/lit8 v4, v4, 0x10

    add-int/2addr v3, v4

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readByte()B

    move-result v4

    shl-int/lit8 v4, v4, 0x18

    add-int/2addr v3, v4

    .line 793
    iget-object v4, p0, Lcom/creativemobi/engine/bp;->H:[I

    if-nez v4, :cond_0

    new-array v4, v3, [I

    iput-object v4, p0, Lcom/creativemobi/engine/bp;->H:[I

    .line 794
    :cond_0
    iget-object v4, p0, Lcom/creativemobi/engine/bp;->H:[I

    aget v4, v4, p2

    if-lez v4, :cond_5

    iget-object v0, p0, Lcom/creativemobi/engine/bp;->H:[I

    aget v0, v0, p2

    invoke-direct {p0, p2, v0}, Lcom/creativemobi/engine/bp;->i(II)Lcom/creativemobi/engine/m;

    move-result-object v0

    move-object v7, v0

    .line 804
    :goto_0
    invoke-direct {p0, p2}, Lcom/creativemobi/engine/bp;->j(I)Lcom/creativemobi/engine/cg;

    move-result-object v0

    .line 806
    if-eqz p1, :cond_4

    .line 807
    invoke-virtual {v7}, Lcom/creativemobi/engine/m;->t()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/creativemobi/engine/w;->d(Ljava/lang/String;)Lcom/creativemobi/engine/l;

    move-result-object v1

    if-nez v1, :cond_1

    .line 808
    if-eqz v0, :cond_7

    iget v1, v0, Lcom/creativemobi/engine/cg;->g:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_7

    .line 809
    invoke-virtual {v7}, Lcom/creativemobi/engine/m;->t()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "graphics/cars/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v7}, Lcom/creativemobi/engine/m;->t()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".png"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iget v4, v0, Lcom/creativemobi/engine/cg;->g:F

    iget v5, v0, Lcom/creativemobi/engine/cg;->h:F

    iget v6, v0, Lcom/creativemobi/engine/cg;->i:F

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Lcom/creativemobi/engine/w;->b(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap$Config;FFF)Lcom/creativemobi/engine/l;

    .line 815
    :cond_1
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7}, Lcom/creativemobi/engine/m;->t()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_Details"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/creativemobi/engine/w;->d(Ljava/lang/String;)Lcom/creativemobi/engine/l;

    move-result-object v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7}, Lcom/creativemobi/engine/m;->t()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_Details"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "graphics/cars/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v7}, Lcom/creativemobi/engine/m;->t()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_Detail.png"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {p1, v0, v1, v2}, Lcom/creativemobi/engine/w;->a(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap$Config;)Lcom/creativemobi/engine/l;

    .line 817
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7}, Lcom/creativemobi/engine/m;->t()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_Disk"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/creativemobi/engine/w;->d(Ljava/lang/String;)Lcom/creativemobi/engine/l;

    move-result-object v0

    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7}, Lcom/creativemobi/engine/m;->t()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_Disk"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "graphics/cars/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v7}, Lcom/creativemobi/engine/m;->t()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_Disk.png"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {p1, v0, v1, v2}, Lcom/creativemobi/engine/w;->a(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap$Config;)Lcom/creativemobi/engine/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/creativemobi/engine/l;->c()V

    .line 819
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7}, Lcom/creativemobi/engine/m;->t()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_Wheel"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/creativemobi/engine/w;->d(Ljava/lang/String;)Lcom/creativemobi/engine/l;

    move-result-object v0

    if-nez v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7}, Lcom/creativemobi/engine/m;->t()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_Wheel"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "graphics/cars/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v7}, Lcom/creativemobi/engine/m;->t()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_Wheel.png"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {p1, v0, v1, v2}, Lcom/creativemobi/engine/w;->a(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap$Config;)Lcom/creativemobi/engine/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/creativemobi/engine/l;->c()V

    .line 822
    :cond_4
    return-object v7

    .line 795
    :cond_5
    const/4 v4, 0x0

    :goto_2
    if-ge v4, v3, :cond_8

    .line 796
    iget-object v5, p0, Lcom/creativemobi/engine/bp;->H:[I

    iget-object v6, p0, Lcom/creativemobi/engine/bp;->J:[B

    array-length v6, v6

    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v7

    sub-int/2addr v6, v7

    aput v6, v5, v4

    .line 797
    invoke-static {v2, v4}, Lcom/creativemobi/engine/m;->a(Ljava/io/DataInputStream;I)Lcom/creativemobi/engine/m;

    move-result-object v5

    .line 798
    if-ne v4, p2, :cond_6

    move-object v7, v5

    .line 800
    goto/16 :goto_0

    .line 795
    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 811
    :cond_7
    invoke-virtual {v7}, Lcom/creativemobi/engine/m;->t()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "graphics/cars/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v7}, Lcom/creativemobi/engine/m;->t()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ".png"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v7}, Lcom/creativemobi/engine/m;->P()F

    move-result v4

    invoke-virtual {v7}, Lcom/creativemobi/engine/m;->Q()F

    move-result v5

    invoke-virtual {v7}, Lcom/creativemobi/engine/m;->R()F

    move-result v6

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Lcom/creativemobi/engine/w;->b(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap$Config;FFF)Lcom/creativemobi/engine/l;

    goto/16 :goto_1

    :cond_8
    move-object v7, v0

    goto/16 :goto_0
.end method

.method public final a(FF)V
    .locals 2

    .prologue
    .line 294
    iget-object v0, p0, Lcom/creativemobi/engine/bp;->a:Lcom/creativemobi/engine/y;

    iget-object v1, p0, Lcom/creativemobi/engine/bp;->b:Lcom/creativemobi/engine/w;

    invoke-interface {v0, v1, p1, p2}, Lcom/creativemobi/engine/y;->b(Lcom/creativemobi/engine/w;FF)V

    .line 295
    return-void
.end method

.method public final a(I)V
    .locals 2

    .prologue
    .line 299
    iget-object v0, p0, Lcom/creativemobi/engine/bp;->a:Lcom/creativemobi/engine/y;

    iget-object v1, p0, Lcom/creativemobi/engine/bp;->b:Lcom/creativemobi/engine/w;

    invoke-interface {v0, v1, p1}, Lcom/creativemobi/engine/y;->a(Lcom/creativemobi/engine/w;I)V

    .line 300
    return-void
.end method

.method public final a(II)V
    .locals 4

    .prologue
    .line 661
    iget v0, p0, Lcom/creativemobi/engine/bp;->h:I

    add-int/2addr v0, p2

    iput v0, p0, Lcom/creativemobi/engine/bp;->h:I

    .line 662
    const/4 v1, 0x0

    .line 663
    iget-object v0, p0, Lcom/creativemobi/engine/bp;->u:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/creativemobi/engine/cg;

    .line 664
    iget v3, v0, Lcom/creativemobi/engine/cg;->a:I

    if-ne v3, p1, :cond_0

    .line 669
    :goto_0
    iget-object v1, p0, Lcom/creativemobi/engine/bp;->u:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 671
    invoke-virtual {p0}, Lcom/creativemobi/engine/bp;->p()V

    .line 672
    return-void

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public final a(IIII)V
    .locals 5

    .prologue
    .line 676
    invoke-static {}, Lcom/creativemobi/DragRacing/menus/MainMenu;->b()Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    move v1, v0

    .line 678
    :goto_0
    const/4 v2, 0x0

    .line 679
    iget-object v0, p0, Lcom/creativemobi/engine/bp;->u:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/creativemobi/engine/cg;

    .line 680
    iget v4, v0, Lcom/creativemobi/engine/cg;->a:I

    if-ne v4, p1, :cond_0

    .line 685
    :goto_1
    iget v2, p0, Lcom/creativemobi/engine/bp;->m:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/creativemobi/engine/bp;->m:I

    .line 686
    iget-object v0, v0, Lcom/creativemobi/engine/cg;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Point;

    iget v3, v0, Landroid/graphics/Point;->x:I

    if-ne v3, p2, :cond_1

    iget v2, v0, Landroid/graphics/Point;->y:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Landroid/graphics/Point;->y:I

    .line 687
    :cond_2
    iget v0, p0, Lcom/creativemobi/engine/bp;->h:I

    sub-int/2addr v0, p3

    iput v0, p0, Lcom/creativemobi/engine/bp;->h:I

    .line 688
    iget v0, p0, Lcom/creativemobi/engine/bp;->i:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/creativemobi/engine/bp;->i:I

    .line 689
    invoke-virtual {p0}, Lcom/creativemobi/engine/bp;->p()V

    .line 690
    return-void

    :cond_3
    move-object v0, v2

    goto :goto_1

    :cond_4
    move v1, p4

    goto :goto_0
.end method

.method public final a(IIIIF)V
    .locals 5

    .prologue
    const/16 v1, 0x190

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1640
    if-ne v1, p2, :cond_2

    .line 1642
    iget v0, p0, Lcom/creativemobi/engine/bp;->r:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_1

    iput p5, p0, Lcom/creativemobi/engine/bp;->r:F

    .line 1648
    :cond_0
    :goto_0
    iget v0, p0, Lcom/creativemobi/engine/bp;->q:I

    add-int/2addr v0, p2

    iput v0, p0, Lcom/creativemobi/engine/bp;->q:I

    .line 1649
    iget v0, p0, Lcom/creativemobi/engine/bp;->p:I

    add-int/2addr v0, p4

    iput v0, p0, Lcom/creativemobi/engine/bp;->p:I

    .line 1652
    if-eq p2, v1, :cond_8

    add-int/lit8 v0, p1, 0xa

    .line 1655
    :goto_1
    iget-object v1, p0, Lcom/creativemobi/engine/bp;->C:[I

    aget v1, v1, v0

    if-nez v1, :cond_4

    .line 1656
    iget-object v1, p0, Lcom/creativemobi/engine/bp;->C:[I

    aput p3, v1, v0

    move v0, v2

    .line 1665
    :goto_2
    if-eqz v0, :cond_6

    .line 1667
    :try_start_0
    const-string v0, "results.dat"

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    const/16 v2, 0x400

    invoke-direct {v1, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    :goto_3
    iget-object v4, p0, Lcom/creativemobi/engine/bp;->C:[I

    array-length v4, v4

    if-ge v3, v4, :cond_5

    iget-object v4, p0, Lcom/creativemobi/engine/bp;->C:[I

    aget v4, v4, v3

    invoke-virtual {v2, v4}, Ljava/io/DataOutputStream;->writeInt(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 1643
    :cond_1
    iget v0, p0, Lcom/creativemobi/engine/bp;->r:F

    cmpg-float v0, p5, v0

    if-gez v0, :cond_0

    iput p5, p0, Lcom/creativemobi/engine/bp;->r:F

    goto :goto_0

    .line 1645
    :cond_2
    iget v0, p0, Lcom/creativemobi/engine/bp;->s:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_3

    iput p5, p0, Lcom/creativemobi/engine/bp;->s:F

    goto :goto_0

    .line 1646
    :cond_3
    iget v0, p0, Lcom/creativemobi/engine/bp;->s:F

    cmpg-float v0, p5, v0

    if-gez v0, :cond_0

    iput p5, p0, Lcom/creativemobi/engine/bp;->s:F

    goto :goto_0

    .line 1659
    :cond_4
    iget-object v1, p0, Lcom/creativemobi/engine/bp;->C:[I

    aget v1, v1, v0

    if-le v1, p3, :cond_7

    .line 1660
    iget-object v1, p0, Lcom/creativemobi/engine/bp;->C:[I

    aput p3, v1, v0

    move v0, v2

    .line 1661
    goto :goto_2

    .line 1667
    :cond_5
    :try_start_1
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-virtual {p0}, Lcom/creativemobi/engine/bp;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v0

    const/4 v2, 0x0

    array-length v3, v1

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/FileOutputStream;->write([BII)V

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1672
    :goto_4
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/creativemobi/engine/aw;

    invoke-direct {v1, p0}, Lcom/creativemobi/engine/aw;-><init>(Lcom/creativemobi/engine/bp;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1680
    :cond_6
    return-void

    :catch_0
    move-exception v0

    goto :goto_4

    :cond_7
    move v0, v3

    goto :goto_2

    :cond_8
    move v0, p1

    goto :goto_1
.end method

.method public final a(J)V
    .locals 2

    .prologue
    .line 310
    iget-object v0, p0, Lcom/creativemobi/engine/bp;->a:Lcom/creativemobi/engine/y;

    iget-object v1, p0, Lcom/creativemobi/engine/bp;->b:Lcom/creativemobi/engine/w;

    invoke-interface {v0, v1, p1, p2}, Lcom/creativemobi/engine/y;->a(Lcom/creativemobi/engine/w;J)V

    .line 311
    return-void
.end method

.method public final a(Lcom/creativemobi/engine/cg;)V
    .locals 3

    .prologue
    .line 1582
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/creativemobi/engine/bp;->u:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 1583
    iget-object v0, p0, Lcom/creativemobi/engine/bp;->u:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/creativemobi/engine/cg;

    iget v0, v0, Lcom/creativemobi/engine/cg;->a:I

    iget v2, p1, Lcom/creativemobi/engine/cg;->a:I

    if-ne v0, v2, :cond_1

    .line 1584
    iget-object v0, p0, Lcom/creativemobi/engine/bp;->u:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1585
    iget-object v0, p0, Lcom/creativemobi/engine/bp;->u:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1586
    invoke-virtual {p0}, Lcom/creativemobi/engine/bp;->p()V

    .line 1590
    :cond_0
    return-void

    .line 1582
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public final a(Lcom/creativemobi/engine/m;I)V
    .locals 4

    .prologue
    .line 643
    invoke-static {}, Lcom/creativemobi/DragRacing/menus/MainMenu;->b()Z

    .line 647
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1}, Lcom/creativemobi/engine/m;->B()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/creativemobi/engine/bp;->b(Lcom/creativemobi/engine/w;I)Lcom/creativemobi/engine/m;

    move-result-object v0

    .line 648
    iget-object v1, p0, Lcom/creativemobi/engine/bp;->u:Ljava/util/ArrayList;

    new-instance v2, Lcom/creativemobi/engine/cg;

    invoke-virtual {v0}, Lcom/creativemobi/engine/m;->B()I

    move-result v3

    invoke-virtual {v0}, Lcom/creativemobi/engine/m;->c()Ljava/util/ArrayList;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Lcom/creativemobi/engine/cg;-><init>(ILjava/util/ArrayList;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 649
    iget v0, p0, Lcom/creativemobi/engine/bp;->h:I

    sub-int/2addr v0, p2

    iput v0, p0, Lcom/creativemobi/engine/bp;->h:I

    .line 650
    iget v0, p0, Lcom/creativemobi/engine/bp;->i:I

    const/4 v1, 0x0

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/creativemobi/engine/bp;->i:I

    .line 651
    iget v0, p0, Lcom/creativemobi/engine/bp;->l:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/creativemobi/engine/bp;->l:I

    .line 652
    invoke-virtual {p0}, Lcom/creativemobi/engine/bp;->p()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 656
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final a(Lcom/creativemobi/engine/y;Z)V
    .locals 2

    .prologue
    .line 593
    :try_start_0
    iget-object v0, p0, Lcom/creativemobi/engine/bp;->b:Lcom/creativemobi/engine/w;

    new-instance v1, Lcom/creativemobi/engine/aj;

    invoke-direct {v1, p0}, Lcom/creativemobi/engine/aj;-><init>(Lcom/creativemobi/engine/bp;)V

    invoke-virtual {v0, v1}, Lcom/creativemobi/engine/w;->a(Lcom/creativemobi/engine/cc;)V

    .line 623
    iget-object v0, p0, Lcom/creativemobi/engine/bp;->b:Lcom/creativemobi/engine/w;

    invoke-virtual {v0}, Lcom/creativemobi/engine/w;->d()V

    .line 625
    invoke-direct {p0, p1, p2}, Lcom/creativemobi/engine/bp;->b(Lcom/creativemobi/engine/y;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 628
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 1548
    invoke-virtual {p0}, Lcom/creativemobi/engine/bp;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020004

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/creativemobi/engine/bp;->a(Ljava/lang/String;Landroid/graphics/drawable/Drawable;I)V

    .line 1549
    return-void
.end method

.method public final a(Ljava/lang/String;Landroid/graphics/drawable/Drawable;I)V
    .locals 4

    .prologue
    const v3, 0x7f080010

    .line 1527
    invoke-virtual {p0}, Lcom/creativemobi/engine/bp;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 1528
    const v1, 0x7f030004

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 1529
    const v0, 0x7f080011

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1530
    if-eqz p2, :cond_0

    .line 1531
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1536
    :goto_0
    iget-object v0, p0, Lcom/creativemobi/engine/bp;->x:Landroid/os/Handler;

    new-instance v2, Lcom/creativemobi/engine/ax;

    invoke-direct {v2, p0, p3, v1}, Lcom/creativemobi/engine/ax;-><init>(Lcom/creativemobi/engine/bp;ILandroid/view/View;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1545
    return-void

    .line 1533
    :cond_0
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v2, 0x7f020001

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method public final a(ZIIIIF)V
    .locals 1

    .prologue
    .line 1615
    iget v0, p0, Lcom/creativemobi/engine/bp;->j:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/creativemobi/engine/bp;->j:I

    .line 1616
    if-eqz p1, :cond_0

    iget v0, p0, Lcom/creativemobi/engine/bp;->k:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/creativemobi/engine/bp;->k:I

    .line 1617
    :cond_0
    iget v0, p0, Lcom/creativemobi/engine/bp;->o:I

    add-int/2addr v0, p2

    iput v0, p0, Lcom/creativemobi/engine/bp;->o:I

    .line 1618
    iget v0, p0, Lcom/creativemobi/engine/bp;->h:I

    add-int/2addr v0, p2

    iput v0, p0, Lcom/creativemobi/engine/bp;->h:I

    .line 1620
    iget v0, p0, Lcom/creativemobi/engine/bp;->n:I

    add-int/2addr v0, p3

    iput v0, p0, Lcom/creativemobi/engine/bp;->n:I

    .line 1621
    iget v0, p0, Lcom/creativemobi/engine/bp;->i:I

    add-int/2addr v0, p3

    iput v0, p0, Lcom/creativemobi/engine/bp;->i:I

    .line 1623
    const/16 v0, 0x190

    if-ne v0, p4, :cond_3

    .line 1625
    iget v0, p0, Lcom/creativemobi/engine/bp;->r:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_2

    iput p6, p0, Lcom/creativemobi/engine/bp;->r:F

    .line 1632
    :cond_1
    :goto_0
    iget v0, p0, Lcom/creativemobi/engine/bp;->q:I

    add-int/2addr v0, p4

    iput v0, p0, Lcom/creativemobi/engine/bp;->q:I

    .line 1633
    iget v0, p0, Lcom/creativemobi/engine/bp;->p:I

    add-int/2addr v0, p5

    iput v0, p0, Lcom/creativemobi/engine/bp;->p:I

    .line 1635
    invoke-virtual {p0}, Lcom/creativemobi/engine/bp;->p()V

    .line 1636
    return-void

    .line 1626
    :cond_2
    iget v0, p0, Lcom/creativemobi/engine/bp;->r:F

    cmpg-float v0, p6, v0

    if-gez v0, :cond_1

    iput p6, p0, Lcom/creativemobi/engine/bp;->r:F

    goto :goto_0

    .line 1628
    :cond_3
    iget v0, p0, Lcom/creativemobi/engine/bp;->s:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_4

    iput p6, p0, Lcom/creativemobi/engine/bp;->s:F

    goto :goto_0

    .line 1629
    :cond_4
    iget v0, p0, Lcom/creativemobi/engine/bp;->s:F

    cmpg-float v0, p6, v0

    if-gez v0, :cond_1

    iput p6, p0, Lcom/creativemobi/engine/bp;->s:F

    goto :goto_0
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 747
    iget v0, p0, Lcom/creativemobi/engine/bp;->h:I

    return v0
.end method

.method public final b(Lcom/creativemobi/engine/w;I)Lcom/creativemobi/engine/m;
    .locals 8

    .prologue
    .line 827
    const/4 v0, 0x0

    .line 828
    new-instance v1, Ljava/io/ByteArrayInputStream;

    iget-object v2, p0, Lcom/creativemobi/engine/bp;->J:[B

    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 829
    new-instance v2, Ljava/io/DataInputStream;

    invoke-direct {v2, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 830
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readByte()B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readByte()B

    move-result v4

    shl-int/lit8 v4, v4, 0x8

    add-int/2addr v3, v4

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readByte()B

    move-result v4

    shl-int/lit8 v4, v4, 0x10

    add-int/2addr v3, v4

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readByte()B

    move-result v4

    shl-int/lit8 v4, v4, 0x18

    add-int/2addr v3, v4

    .line 831
    iget-object v4, p0, Lcom/creativemobi/engine/bp;->H:[I

    if-nez v4, :cond_0

    new-array v4, v3, [I

    iput-object v4, p0, Lcom/creativemobi/engine/bp;->H:[I

    .line 832
    :cond_0
    iget-object v4, p0, Lcom/creativemobi/engine/bp;->H:[I

    aget v4, v4, p2

    if-lez v4, :cond_5

    iget-object v0, p0, Lcom/creativemobi/engine/bp;->H:[I

    aget v0, v0, p2

    invoke-direct {p0, p2, v0}, Lcom/creativemobi/engine/bp;->i(II)Lcom/creativemobi/engine/m;

    move-result-object v0

    move-object v7, v0

    .line 843
    :goto_0
    if-eqz p1, :cond_4

    .line 844
    invoke-virtual {v7}, Lcom/creativemobi/engine/m;->t()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/creativemobi/engine/w;->d(Ljava/lang/String;)Lcom/creativemobi/engine/l;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {v7}, Lcom/creativemobi/engine/m;->t()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "graphics/cars/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v7}, Lcom/creativemobi/engine/m;->t()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ".png"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v7}, Lcom/creativemobi/engine/m;->P()F

    move-result v4

    invoke-virtual {v7}, Lcom/creativemobi/engine/m;->Q()F

    move-result v5

    invoke-virtual {v7}, Lcom/creativemobi/engine/m;->R()F

    move-result v6

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Lcom/creativemobi/engine/w;->b(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap$Config;FFF)Lcom/creativemobi/engine/l;

    .line 846
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7}, Lcom/creativemobi/engine/m;->t()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_Details"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/creativemobi/engine/w;->d(Ljava/lang/String;)Lcom/creativemobi/engine/l;

    move-result-object v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7}, Lcom/creativemobi/engine/m;->t()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_Details"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "graphics/cars/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v7}, Lcom/creativemobi/engine/m;->t()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_Detail.png"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-virtual {p1, v0, v1, v2}, Lcom/creativemobi/engine/w;->a(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap$Config;)Lcom/creativemobi/engine/l;

    .line 848
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7}, Lcom/creativemobi/engine/m;->t()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_Disk"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/creativemobi/engine/w;->d(Ljava/lang/String;)Lcom/creativemobi/engine/l;

    move-result-object v0

    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7}, Lcom/creativemobi/engine/m;->t()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_Disk"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "graphics/cars/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v7}, Lcom/creativemobi/engine/m;->t()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_Disk.png"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-virtual {p1, v0, v1, v2}, Lcom/creativemobi/engine/w;->a(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap$Config;)Lcom/creativemobi/engine/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/creativemobi/engine/l;->c()V

    .line 850
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7}, Lcom/creativemobi/engine/m;->t()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_Wheel"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/creativemobi/engine/w;->d(Ljava/lang/String;)Lcom/creativemobi/engine/l;

    move-result-object v0

    if-nez v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7}, Lcom/creativemobi/engine/m;->t()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_Wheel"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "graphics/cars/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v7}, Lcom/creativemobi/engine/m;->t()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_Wheel.png"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-virtual {p1, v0, v1, v2}, Lcom/creativemobi/engine/w;->a(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap$Config;)Lcom/creativemobi/engine/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/creativemobi/engine/l;->c()V

    .line 853
    :cond_4
    return-object v7

    .line 834
    :cond_5
    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_7

    .line 835
    iget-object v5, p0, Lcom/creativemobi/engine/bp;->H:[I

    iget-object v6, p0, Lcom/creativemobi/engine/bp;->J:[B

    array-length v6, v6

    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v7

    sub-int/2addr v6, v7

    aput v6, v5, v4

    .line 836
    invoke-static {v2, v4}, Lcom/creativemobi/engine/m;->a(Ljava/io/DataInputStream;I)Lcom/creativemobi/engine/m;

    move-result-object v5

    .line 837
    if-ne v4, p2, :cond_6

    move-object v7, v5

    .line 839
    goto/16 :goto_0

    .line 834
    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_7
    move-object v7, v0

    goto/16 :goto_0
.end method

.method public final b(FF)V
    .locals 2

    .prologue
    .line 288
    iget-object v0, p0, Lcom/creativemobi/engine/bp;->a:Lcom/creativemobi/engine/y;

    iget-object v1, p0, Lcom/creativemobi/engine/bp;->b:Lcom/creativemobi/engine/w;

    invoke-interface {v0, v1, p1, p2}, Lcom/creativemobi/engine/y;->a(Lcom/creativemobi/engine/w;FF)V

    .line 289
    return-void
.end method

.method public final b(I)V
    .locals 1

    .prologue
    .line 304
    iget-object v0, p0, Lcom/creativemobi/engine/bp;->a:Lcom/creativemobi/engine/y;

    invoke-interface {v0, p1}, Lcom/creativemobi/engine/y;->a(I)V

    .line 305
    return-void
.end method

.method public final b(II)V
    .locals 2

    .prologue
    .line 694
    invoke-static {}, Lcom/creativemobi/DragRacing/menus/MainMenu;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 696
    :goto_0
    iget v1, p0, Lcom/creativemobi/engine/bp;->h:I

    sub-int/2addr v1, p1

    iput v1, p0, Lcom/creativemobi/engine/bp;->h:I

    .line 697
    iget v1, p0, Lcom/creativemobi/engine/bp;->i:I

    sub-int v0, v1, v0

    iput v0, p0, Lcom/creativemobi/engine/bp;->i:I

    .line 698
    invoke-virtual {p0}, Lcom/creativemobi/engine/bp;->p()V

    .line 699
    return-void

    :cond_0
    move v0, p2

    goto :goto_0
.end method

.method public final c()I
    .locals 1

    .prologue
    .line 752
    invoke-static {}, Lcom/creativemobi/DragRacing/menus/MainMenu;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7fffffff

    .line 753
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/creativemobi/engine/bp;->i:I

    goto :goto_0
.end method

.method public final c(I)V
    .locals 2

    .prologue
    .line 703
    invoke-static {}, Lcom/creativemobi/DragRacing/menus/MainMenu;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 705
    :goto_0
    iget v1, p0, Lcom/creativemobi/engine/bp;->i:I

    sub-int v0, v1, v0

    iput v0, p0, Lcom/creativemobi/engine/bp;->i:I

    .line 706
    invoke-virtual {p0}, Lcom/creativemobi/engine/bp;->p()V

    .line 707
    return-void

    :cond_0
    move v0, p1

    goto :goto_0
.end method

.method public final c(II)V
    .locals 4

    .prologue
    .line 710
    const/4 v1, 0x0

    .line 711
    iget-object v0, p0, Lcom/creativemobi/engine/bp;->u:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/creativemobi/engine/cg;

    .line 712
    iget v3, v0, Lcom/creativemobi/engine/cg;->a:I

    if-ne v3, p1, :cond_0

    .line 717
    :goto_0
    iget-object v0, v0, Lcom/creativemobi/engine/cg;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Point;

    iget v2, v0, Landroid/graphics/Point;->x:I

    if-ne v2, p2, :cond_1

    iget v1, v0, Landroid/graphics/Point;->y:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Point;->y:I

    .line 718
    :cond_2
    invoke-virtual {p0}, Lcom/creativemobi/engine/bp;->p()V

    .line 719
    return-void

    :cond_3
    move-object v0, v1

    goto :goto_0
.end method

.method public final d()Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 759
    iget-object v0, p0, Lcom/creativemobi/engine/bp;->u:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final d(I)V
    .locals 0

    .prologue
    .line 774
    iput p1, p0, Lcom/creativemobi/engine/bp;->t:I

    .line 775
    invoke-virtual {p0}, Lcom/creativemobi/engine/bp;->p()V

    .line 776
    return-void
.end method

.method public final d(II)V
    .locals 1

    .prologue
    .line 1603
    iget v0, p0, Lcom/creativemobi/engine/bp;->o:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/creativemobi/engine/bp;->o:I

    .line 1604
    iget v0, p0, Lcom/creativemobi/engine/bp;->h:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/creativemobi/engine/bp;->h:I

    .line 1606
    iget v0, p0, Lcom/creativemobi/engine/bp;->n:I

    add-int/2addr v0, p2

    iput v0, p0, Lcom/creativemobi/engine/bp;->n:I

    .line 1607
    iget v0, p0, Lcom/creativemobi/engine/bp;->i:I

    add-int/2addr v0, p2

    iput v0, p0, Lcom/creativemobi/engine/bp;->i:I

    .line 1609
    invoke-virtual {p0}, Lcom/creativemobi/engine/bp;->p()V

    .line 1610
    return-void
.end method

.method public final e()Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 858
    iget-object v0, p0, Lcom/creativemobi/engine/bp;->I:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final e(I)V
    .locals 1

    .prologue
    .line 1514
    invoke-static {}, Lcom/creativemobi/DragRacing/menus/MainMenu;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1517
    :goto_0
    return-void

    .line 1515
    :cond_0
    iget v0, p0, Lcom/creativemobi/engine/bp;->i:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/creativemobi/engine/bp;->i:I

    .line 1516
    invoke-virtual {p0}, Lcom/creativemobi/engine/bp;->p()V

    goto :goto_0
.end method

.method public final e(II)V
    .locals 1

    .prologue
    .line 1692
    sget-object v0, Lcom/creativemobi/engine/bp;->B:[I

    aput p2, v0, p1

    .line 1693
    invoke-virtual {p0}, Lcom/creativemobi/engine/bp;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/creativemobi/engine/ac;->b(Landroid/content/Context;II)V

    .line 1694
    return-void
.end method

.method public final f()Lcom/creativemobi/engine/bo;
    .locals 2

    .prologue
    .line 1483
    new-instance v0, Lcom/creativemobi/engine/bo;

    invoke-direct {v0}, Lcom/creativemobi/engine/bo;-><init>()V

    .line 1484
    iget v1, p0, Lcom/creativemobi/engine/bp;->j:I

    iput v1, v0, Lcom/creativemobi/engine/bo;->a:I

    .line 1485
    iget v1, p0, Lcom/creativemobi/engine/bp;->k:I

    iput v1, v0, Lcom/creativemobi/engine/bo;->b:I

    .line 1487
    iget v1, p0, Lcom/creativemobi/engine/bp;->l:I

    iput v1, v0, Lcom/creativemobi/engine/bo;->c:I

    .line 1488
    iget v1, p0, Lcom/creativemobi/engine/bp;->m:I

    iput v1, v0, Lcom/creativemobi/engine/bo;->d:I

    .line 1490
    iget v1, p0, Lcom/creativemobi/engine/bp;->n:I

    iput v1, v0, Lcom/creativemobi/engine/bo;->e:I

    .line 1491
    iget v1, p0, Lcom/creativemobi/engine/bp;->o:I

    iput v1, v0, Lcom/creativemobi/engine/bo;->f:I

    .line 1493
    iget v1, p0, Lcom/creativemobi/engine/bp;->p:I

    iput v1, v0, Lcom/creativemobi/engine/bo;->g:I

    .line 1495
    iget v1, p0, Lcom/creativemobi/engine/bp;->q:I

    iput v1, v0, Lcom/creativemobi/engine/bo;->h:I

    .line 1497
    iget v1, p0, Lcom/creativemobi/engine/bp;->r:F

    iput v1, v0, Lcom/creativemobi/engine/bo;->i:F

    .line 1498
    iget v1, p0, Lcom/creativemobi/engine/bp;->s:F

    iput v1, v0, Lcom/creativemobi/engine/bo;->j:F

    .line 1501
    const/4 v1, 0x0

    iput v1, v0, Lcom/creativemobi/engine/bo;->k:I

    .line 1502
    return-object v0
.end method

.method public final f(I)V
    .locals 1

    .prologue
    .line 1522
    iget v0, p0, Lcom/creativemobi/engine/bp;->i:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/creativemobi/engine/bp;->i:I

    .line 1523
    invoke-virtual {p0}, Lcom/creativemobi/engine/bp;->p()V

    .line 1524
    return-void
.end method

.method public final g(I)I
    .locals 1

    .prologue
    .line 1598
    invoke-virtual {p0}, Lcom/creativemobi/engine/bp;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/creativemobi/engine/ac;->b(Landroid/content/Context;I)I

    move-result v0

    return v0
.end method

.method public final g()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 1508
    iget-object v0, p0, Lcom/creativemobi/engine/bp;->x:Landroid/os/Handler;

    return-object v0
.end method

.method public final g(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1556
    sput-object p1, Lcom/creativemobi/engine/bp;->A:Ljava/lang/String;

    .line 1557
    invoke-virtual {p0}, Lcom/creativemobi/engine/bp;->p()V

    .line 1558
    return-void
.end method

.method public final h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1568
    sget-object v0, Lcom/creativemobi/engine/bp;->A:Ljava/lang/String;

    return-object v0
.end method

.method public final i()I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1573
    move v1, v0

    .line 1574
    :goto_0
    sget-object v2, Lcom/creativemobi/engine/bp;->B:[I

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 1575
    invoke-virtual {p0}, Lcom/creativemobi/engine/bp;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/creativemobi/engine/ac;->b(Landroid/content/Context;I)I

    move-result v2

    add-int/2addr v1, v2

    .line 1574
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1576
    :cond_0
    return v1
.end method

.method public final j()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1684
    sget-object v0, Lcom/creativemobi/engine/bp;->A:Ljava/lang/String;

    if-nez v0, :cond_0

    move v0, v2

    .line 1686
    :goto_0
    return v0

    .line 1685
    :cond_0
    sget-object v0, Lcom/creativemobi/engine/bp;->A:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x4

    if-ge v0, v1, :cond_1

    move v0, v2

    goto :goto_0

    .line 1686
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final k()Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 769
    iget-object v0, p0, Lcom/creativemobi/engine/bp;->v:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final l()Ljava/lang/Thread;
    .locals 1

    .prologue
    .line 576
    iget-object v0, p0, Lcom/creativemobi/engine/bp;->b:Lcom/creativemobi/engine/w;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/creativemobi/engine/bp;->b:Lcom/creativemobi/engine/w;

    invoke-virtual {v0}, Lcom/creativemobi/engine/w;->h()Ljava/lang/Thread;

    move-result-object v0

    .line 577
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final m()Lcom/creativemobi/engine/w;
    .locals 1

    .prologue
    .line 581
    iget-object v0, p0, Lcom/creativemobi/engine/bp;->b:Lcom/creativemobi/engine/w;

    return-object v0
.end method

.method public final n()V
    .locals 1

    .prologue
    .line 585
    iget-object v0, p0, Lcom/creativemobi/engine/bp;->b:Lcom/creativemobi/engine/w;

    invoke-virtual {v0}, Lcom/creativemobi/engine/w;->j()V

    .line 586
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/creativemobi/engine/bp;->b:Lcom/creativemobi/engine/w;

    .line 587
    return-void
.end method

.method public final o()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 631
    iget-object v0, p0, Lcom/creativemobi/engine/bp;->a:Lcom/creativemobi/engine/y;

    instance-of v0, v0, Lcom/creativemobi/engine/bg;

    if-eqz v0, :cond_0

    .line 632
    const/4 v0, 0x1

    .line 638
    :goto_0
    return v0

    .line 634
    :cond_0
    iget-object v0, p0, Lcom/creativemobi/engine/bp;->a:Lcom/creativemobi/engine/y;

    iget-object v1, p0, Lcom/creativemobi/engine/bp;->b:Lcom/creativemobi/engine/w;

    invoke-interface {v0, v1}, Lcom/creativemobi/engine/y;->a(Lcom/creativemobi/engine/w;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v2

    goto :goto_0

    .line 636
    :cond_1
    new-instance v0, Lcom/creativemobi/engine/bg;

    invoke-direct {v0}, Lcom/creativemobi/engine/bg;-><init>()V

    invoke-virtual {p0, v0, v2}, Lcom/creativemobi/engine/bp;->a(Lcom/creativemobi/engine/y;Z)V

    .line 637
    invoke-static {v2}, Lcom/creativemobi/DragRacing/menus/MainMenu;->b(Z)V

    move v0, v2

    .line 638
    goto :goto_0
.end method

.method public final p()V
    .locals 7

    .prologue
    const/4 v5, 0x0

    .line 728
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    const/16 v0, 0x800

    invoke-direct {v1, v0}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    :try_start_0
    iget-object v0, p0, Lcom/creativemobi/engine/bp;->v:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    move v3, v5

    :goto_0
    iget-object v0, p0, Lcom/creativemobi/engine/bp;->v:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v3, v0, :cond_0

    iget-object v0, p0, Lcom/creativemobi/engine/bp;->v:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/creativemobi/engine/cg;

    iget v4, v0, Lcom/creativemobi/engine/cg;->b:I

    int-to-byte v4, v4

    invoke-virtual {v2, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    invoke-virtual {v0, v2}, Lcom/creativemobi/engine/cg;->a(Ljava/io/DataOutputStream;)V

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-virtual {p0}, Lcom/creativemobi/engine/bp;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "presets.dat"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v1

    const/4 v2, 0x0

    array-length v3, v0

    invoke-virtual {v1, v0, v2, v3}, Ljava/io/FileOutputStream;->write([BII)V

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    move v0, v5

    move v1, v5

    .line 733
    :goto_2
    if-nez v0, :cond_1

    const/4 v0, 0x3

    if-ge v1, v0, :cond_1

    .line 735
    add-int/lit8 v0, v1, 0x1

    .line 736
    const/4 v1, 0x1

    .line 737
    :try_start_1
    invoke-direct {p0}, Lcom/creativemobi/engine/bp;->D()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move v6, v1

    move v1, v0

    move v0, v6

    .line 741
    goto :goto_2

    .line 728
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 738
    :catch_1
    move-exception v1

    .line 740
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    move v1, v0

    move v0, v5

    .line 741
    goto :goto_2

    .line 742
    :cond_1
    return-void
.end method

.method public final surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    .prologue
    .line 317
    return-void
.end method

.method public final surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 2

    .prologue
    .line 322
    iget-object v0, p0, Lcom/creativemobi/engine/bp;->b:Lcom/creativemobi/engine/w;

    if-nez v0, :cond_0

    .line 323
    iget-object v0, p0, Lcom/creativemobi/engine/bp;->a:Lcom/creativemobi/engine/y;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/creativemobi/engine/bp;->b(Lcom/creativemobi/engine/y;Z)V

    .line 325
    :goto_0
    return-void

    .line 324
    :cond_0
    iget-object v0, p0, Lcom/creativemobi/engine/bp;->b:Lcom/creativemobi/engine/w;

    invoke-virtual {v0}, Lcom/creativemobi/engine/w;->g()V

    goto :goto_0
.end method

.method public final surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1

    .prologue
    .line 572
    iget-object v0, p0, Lcom/creativemobi/engine/bp;->b:Lcom/creativemobi/engine/w;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/creativemobi/engine/bp;->b:Lcom/creativemobi/engine/w;

    invoke-virtual {v0}, Lcom/creativemobi/engine/w;->f()V

    .line 573
    :cond_0
    return-void
.end method
