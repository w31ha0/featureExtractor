.class Lvpadn/n$b;
.super Ljava/lang/Object;
.source "NativeToJsMessageQueue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvpadn/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# instance fields
.field final a:Ljava/lang/String;

.field final b:Lvpadn/w;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 404
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 405
    if-nez p1, :cond_0

    .line 406
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 408
    :cond_0
    iput-object p1, p0, Lvpadn/n$b;->a:Ljava/lang/String;

    .line 409
    const/4 v0, 0x0

    iput-object v0, p0, Lvpadn/n$b;->b:Lvpadn/w;

    .line 410
    return-void
.end method

.method constructor <init>(Lvpadn/w;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 411
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 412
    if-eqz p2, :cond_0

    if-nez p1, :cond_1

    .line 413
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 415
    :cond_1
    iput-object p2, p0, Lvpadn/n$b;->a:Ljava/lang/String;

    .line 416
    iput-object p1, p0, Lvpadn/n$b;->b:Lvpadn/w;

    .line 417
    return-void
.end method


# virtual methods
.method a()I
    .locals 2

    .prologue
    .line 420
    iget-object v0, p0, Lvpadn/n$b;->b:Lvpadn/w;

    if-nez v0, :cond_0

    .line 421
    iget-object v0, p0, Lvpadn/n$b;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 443
    :goto_0
    return v0

    .line 423
    :cond_0
    iget-object v0, p0, Lvpadn/n$b;->b:Lvpadn/w;

    invoke-virtual {v0}, Lvpadn/w;->a()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    .line 424
    add-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lvpadn/n$b;->a:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    .line 425
    iget-object v1, p0, Lvpadn/n$b;->b:Lvpadn/w;

    invoke-virtual {v1}, Lvpadn/w;->b()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 441
    :pswitch_0
    iget-object v1, p0, Lvpadn/n$b;->b:Lvpadn/w;

    invoke-virtual {v1}, Lvpadn/w;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0

    .line 428
    :pswitch_1
    add-int/lit8 v0, v0, 0x1

    .line 429
    goto :goto_0

    .line 431
    :pswitch_2
    iget-object v1, p0, Lvpadn/n$b;->b:Lvpadn/w;

    invoke-virtual {v1}, Lvpadn/w;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    .line 432
    goto :goto_0

    .line 434
    :pswitch_3
    iget-object v1, p0, Lvpadn/n$b;->b:Lvpadn/w;

    invoke-virtual {v1}, Lvpadn/w;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    .line 435
    goto :goto_0

    .line 437
    :pswitch_4
    iget-object v1, p0, Lvpadn/n$b;->b:Lvpadn/w;

    invoke-virtual {v1}, Lvpadn/w;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    .line 438
    goto :goto_0

    .line 425
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_4
    .end packed-switch
.end method

.method a(Ljava/lang/StringBuilder;)V
    .locals 6

    .prologue
    const/16 v5, 0x20

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 447
    iget-object v0, p0, Lvpadn/n$b;->b:Lvpadn/w;

    if-nez v0, :cond_0

    .line 448
    const/16 v0, 0x4a

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lvpadn/n$b;->a:Ljava/lang/String;

    .line 449
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 486
    :goto_0
    return-void

    .line 452
    :cond_0
    iget-object v0, p0, Lvpadn/n$b;->b:Lvpadn/w;

    invoke-virtual {v0}, Lvpadn/w;->a()I

    move-result v3

    .line 453
    sget-object v0, Lvpadn/w$a;->a:Lvpadn/w$a;

    invoke-virtual {v0}, Lvpadn/w$a;->ordinal()I

    move-result v0

    if-ne v3, v0, :cond_2

    move v0, v1

    .line 454
    :goto_1
    sget-object v4, Lvpadn/w$a;->b:Lvpadn/w$a;

    invoke-virtual {v4}, Lvpadn/w$a;->ordinal()I

    move-result v4

    if-ne v3, v4, :cond_3

    .line 455
    :goto_2
    iget-object v4, p0, Lvpadn/n$b;->b:Lvpadn/w;

    invoke-virtual {v4}, Lvpadn/w;->e()Z

    move-result v4

    .line 457
    if-nez v0, :cond_1

    if-eqz v1, :cond_4

    :cond_1
    const/16 v0, 0x53

    :goto_3
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz v4, :cond_5

    const/16 v0, 0x31

    .line 458
    :goto_4
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 459
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 460
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lvpadn/n$b;->a:Ljava/lang/String;

    .line 461
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 462
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 463
    iget-object v0, p0, Lvpadn/n$b;->b:Lvpadn/w;

    invoke-virtual {v0}, Lvpadn/w;->b()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 484
    :pswitch_0
    iget-object v0, p0, Lvpadn/n$b;->b:Lvpadn/w;

    invoke-virtual {v0}, Lvpadn/w;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    move v0, v2

    .line 453
    goto :goto_1

    :cond_3
    move v1, v2

    .line 454
    goto :goto_2

    .line 457
    :cond_4
    const/16 v0, 0x46

    goto :goto_3

    :cond_5
    const/16 v0, 0x30

    goto :goto_4

    .line 465
    :pswitch_1
    iget-object v0, p0, Lvpadn/n$b;->b:Lvpadn/w;

    invoke-virtual {v0}, Lvpadn/w;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 468
    :pswitch_2
    const/16 v0, 0x4e

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 471
    :pswitch_3
    const/16 v0, 0x6e

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lvpadn/n$b;->b:Lvpadn/w;

    .line 472
    invoke-virtual {v1}, Lvpadn/w;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 475
    :pswitch_4
    const/16 v0, 0x73

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 476
    iget-object v0, p0, Lvpadn/n$b;->b:Lvpadn/w;

    invoke-virtual {v0}, Lvpadn/w;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 479
    :pswitch_5
    const/16 v0, 0x41

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 480
    iget-object v0, p0, Lvpadn/n$b;->b:Lvpadn/w;

    invoke-virtual {v0}, Lvpadn/w;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 463
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_5
    .end packed-switch
.end method

.method b(Ljava/lang/StringBuilder;)V
    .locals 4

    .prologue
    .line 489
    iget-object v0, p0, Lvpadn/n$b;->b:Lvpadn/w;

    if-nez v0, :cond_0

    .line 490
    iget-object v0, p0, Lvpadn/n$b;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 506
    :goto_0
    return-void

    .line 492
    :cond_0
    iget-object v0, p0, Lvpadn/n$b;->b:Lvpadn/w;

    invoke-virtual {v0}, Lvpadn/w;->a()I

    move-result v1

    .line 493
    sget-object v0, Lvpadn/w$a;->b:Lvpadn/w$a;

    invoke-virtual {v0}, Lvpadn/w$a;->ordinal()I

    move-result v0

    if-eq v1, v0, :cond_1

    sget-object v0, Lvpadn/w$a;->a:Lvpadn/w$a;

    invoke-virtual {v0}, Lvpadn/w$a;->ordinal()I

    move-result v0

    if-ne v1, v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    .line 494
    :goto_1
    const-string v2, "cordova.callbackFromNative(\'"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lvpadn/n$b;->a:Ljava/lang/String;

    .line 495
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\',"

    .line 496
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 497
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ","

    .line 498
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 499
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    .line 500
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lvpadn/n$b;->b:Lvpadn/w;

    .line 501
    invoke-virtual {v1}, Lvpadn/w;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    .line 502
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lvpadn/n$b;->b:Lvpadn/w;

    .line 503
    invoke-virtual {v1}, Lvpadn/w;->e()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ");"

    .line 504
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 493
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method
