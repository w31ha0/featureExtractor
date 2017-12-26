.class public abstract Lcom/wordloco/wordchallenge/d/f;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:[Lcom/wordloco/wordchallenge/b/c;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/16 v9, 0x43

    const/16 v8, 0x38

    const/16 v7, 0x35

    const/16 v6, 0x64

    .line 23
    const/16 v0, 0xe

    new-array v0, v0, [Lcom/wordloco/wordchallenge/b/c;

    const/4 v1, 0x0

    .line 24
    new-instance v2, Lcom/wordloco/wordchallenge/b/c;

    const-string v3, "ws.letras"

    const-string v4, "wordsearch"

    invoke-direct {v2, v3, v4, v8, v6}, Lcom/wordloco/wordchallenge/b/c;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    .line 25
    new-instance v2, Lcom/wordloco/wordchallenge/b/c;

    const-string v3, "pic.search"

    const-string v4, "picsearch"

    invoke-direct {v2, v3, v4, v8, v6}, Lcom/wordloco/wordchallenge/b/c;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/4 v1, 0x2

    .line 26
    new-instance v2, Lcom/wordloco/wordchallenge/b/c;

    const-string v3, "com.theangrykraken.picsword"

    const-string v4, "4pics"

    const/16 v5, 0x3b

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/wordloco/wordchallenge/b/c;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/4 v1, 0x3

    .line 27
    new-instance v2, Lcom/wordloco/wordchallenge/b/c;

    const-string v3, "com.theangrykraken.wordmonster"

    const-string v4, "wordmonster"

    const/16 v5, 0x47

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/wordloco/wordchallenge/b/c;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/4 v1, 0x4

    .line 29
    new-instance v2, Lcom/wordloco/wordchallenge/b/c;

    const-string v3, "com.theangrykraken.colorsflood"

    const-string v4, "colorsflood"

    invoke-direct {v2, v3, v4, v9, v6}, Lcom/wordloco/wordchallenge/b/c;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/4 v1, 0x5

    .line 31
    new-instance v2, Lcom/wordloco/wordchallenge/b/c;

    const-string v3, "com.theangrykraken.pixelite"

    const-string v4, "pixelite"

    invoke-direct {v2, v3, v4, v9, v6}, Lcom/wordloco/wordchallenge/b/c;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/4 v1, 0x6

    .line 32
    new-instance v2, Lcom/wordloco/wordchallenge/b/c;

    const-string v3, "com.theangrykraken.questionmonster"

    .line 33
    const-string v4, "questionmonster"

    const/16 v5, 0x50

    .line 32
    invoke-direct {v2, v3, v4, v5, v6}, Lcom/wordloco/wordchallenge/b/c;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/4 v1, 0x7

    .line 34
    new-instance v2, Lcom/wordloco/wordchallenge/b/c;

    const-string v3, "com.wordloco.wordchallenge"

    const-string v4, "wordchallenge"

    invoke-direct {v2, v3, v4, v8, v6}, Lcom/wordloco/wordchallenge/b/c;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x8

    .line 36
    new-instance v2, Lcom/wordloco/wordchallenge/b/c;

    const-string v3, "com.bigbrainkraken.tictactoe"

    const-string v4, "tictactoe"

    invoke-direct {v2, v3, v4, v7, v6}, Lcom/wordloco/wordchallenge/b/c;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0x9

    .line 37
    new-instance v2, Lcom/wordloco/wordchallenge/b/c;

    const-string v3, "com.bigbrainkraken.logicpuzzles"

    const-string v4, "logicpuzzle"

    invoke-direct {v2, v3, v4, v7, v6}, Lcom/wordloco/wordchallenge/b/c;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0xa

    .line 39
    new-instance v2, Lcom/wordloco/wordchallenge/b/c;

    const-string v3, "com.thehealthykraken.blue_light_filter"

    const-string v4, "filter"

    invoke-direct {v2, v3, v4, v7, v6}, Lcom/wordloco/wordchallenge/b/c;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0xb

    .line 41
    new-instance v2, Lcom/wordloco/wordchallenge/b/c;

    const-string v3, "com.wordgametrivia.fourpic"

    const-string v4, "4pictures"

    invoke-direct {v2, v3, v4, v7, v6}, Lcom/wordloco/wordchallenge/b/c;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0xc

    .line 42
    new-instance v2, Lcom/wordloco/wordchallenge/b/c;

    const-string v3, "com.bigbrainkraken.Word_Search_Math"

    .line 43
    const-string v4, "wordsearchmath"

    .line 42
    invoke-direct {v2, v3, v4, v7, v6}, Lcom/wordloco/wordchallenge/b/c;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v2, v0, v1

    const/16 v1, 0xd

    .line 44
    new-instance v2, Lcom/wordloco/wordchallenge/b/c;

    const-string v3, "com.wordgametrivia.guesspic"

    const-string v4, "onepic"

    invoke-direct {v2, v3, v4, v7, v6}, Lcom/wordloco/wordchallenge/b/c;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    aput-object v2, v0, v1

    .line 23
    sput-object v0, Lcom/wordloco/wordchallenge/d/f;->a:[Lcom/wordloco/wordchallenge/b/c;

    .line 44
    return-void
.end method

.method public static a(Landroid/app/Activity;)V
    .locals 9

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x1

    const v8, 0x7f0600a8

    .line 47
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/wordloco/wordchallenge/d/b;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 50
    new-instance v5, Ljava/util/Random;

    invoke-direct {v5}, Ljava/util/Random;-><init>()V

    .line 51
    sget-object v0, Lcom/wordloco/wordchallenge/d/f;->a:[Lcom/wordloco/wordchallenge/b/c;

    array-length v0, v0

    invoke-virtual {v5, v0}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    move v1, v0

    move v0, v2

    .line 52
    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/wordloco/wordchallenge/d/f;->b(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 53
    if-eqz v0, :cond_2

    .line 135
    :cond_0
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 136
    const-string v1, "------------ RANDOM INTERNAL AD ----------------"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 138
    :cond_1
    return-void

    .line 54
    :cond_2
    sget-object v3, Lcom/wordloco/wordchallenge/d/f;->a:[Lcom/wordloco/wordchallenge/b/c;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Lcom/wordloco/wordchallenge/b/c;->c()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 56
    sget-object v3, Lcom/wordloco/wordchallenge/d/f;->a:[Lcom/wordloco/wordchallenge/b/c;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Lcom/wordloco/wordchallenge/b/c;->a()Ljava/lang/String;

    move-result-object v3

    .line 55
    invoke-static {p0, v3}, Lcom/wordloco/wordchallenge/d/f;->a(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v3

    .line 56
    if-nez v3, :cond_3

    .line 57
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    sget-object v6, Lcom/wordloco/wordchallenge/d/f;->a:[Lcom/wordloco/wordchallenge/b/c;

    aget-object v6, v6, v1

    invoke-virtual {v6}, Lcom/wordloco/wordchallenge/b/c;->a()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 58
    const-string v6, " - SHOW AD"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 57
    invoke-virtual {v0, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 60
    sget-object v0, Lcom/wordloco/wordchallenge/d/f;->a:[Lcom/wordloco/wordchallenge/b/c;

    aget-object v0, v0, v1

    invoke-virtual {v0, v2}, Lcom/wordloco/wordchallenge/b/c;->a(Z)V

    .line 62
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 64
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "internal_ad_"

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 65
    sget-object v6, Lcom/wordloco/wordchallenge/d/f;->a:[Lcom/wordloco/wordchallenge/b/c;

    aget-object v6, v6, v1

    invoke-virtual {v6}, Lcom/wordloco/wordchallenge/b/c;->b()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 64
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 66
    const-string v6, "drawable"

    .line 67
    const-string v7, "com.wordloco.wordchallenge"

    .line 63
    invoke-virtual {v0, v3, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 69
    invoke-virtual {p0, v8}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 71
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 70
    invoke-virtual {v3, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 75
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 77
    sget-object v3, Lcom/wordloco/wordchallenge/d/f;->a:[Lcom/wordloco/wordchallenge/b/c;

    aget-object v3, v3, v1

    .line 78
    invoke-virtual {v3}, Lcom/wordloco/wordchallenge/b/c;->d()I

    move-result v3

    int-to-float v3, v3

    .line 79
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 80
    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    .line 76
    invoke-static {v4, v3, v6}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v3

    float-to-int v3, v3

    .line 82
    sget-object v6, Lcom/wordloco/wordchallenge/d/f;->a:[Lcom/wordloco/wordchallenge/b/c;

    aget-object v6, v6, v1

    .line 83
    invoke-virtual {v6}, Lcom/wordloco/wordchallenge/b/c;->e()I

    move-result v6

    int-to-float v6, v6

    .line 84
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 85
    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    .line 81
    invoke-static {v4, v6, v7}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v6

    float-to-int v6, v6

    .line 75
    invoke-direct {v0, v3, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 86
    const/16 v3, 0xc

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 88
    const/16 v3, 0x12c

    iput v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 89
    const/16 v3, 0xb

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 91
    invoke-virtual {p0, v8}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 92
    invoke-virtual {v3, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 97
    invoke-virtual {p0, v8}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 96
    check-cast v0, Landroid/widget/ImageView;

    .line 97
    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 96
    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    .line 98
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 102
    invoke-virtual {p0, v8}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 103
    new-instance v3, Lcom/wordloco/wordchallenge/d/g;

    invoke-direct {v3, p0, v1}, Lcom/wordloco/wordchallenge/d/g;-><init>(Landroid/app/Activity;I)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    invoke-virtual {p0, v8}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    move v3, v4

    .line 128
    :goto_1
    if-nez v3, :cond_5

    .line 129
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    sget-object v7, Lcom/wordloco/wordchallenge/d/f;->a:[Lcom/wordloco/wordchallenge/b/c;

    aget-object v1, v7, v1

    invoke-virtual {v1}, Lcom/wordloco/wordchallenge/b/c;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v6, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 130
    const-string v1, " - NOT AVAILABLE"

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 129
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 131
    sget-object v0, Lcom/wordloco/wordchallenge/d/f;->a:[Lcom/wordloco/wordchallenge/b/c;

    array-length v0, v0

    invoke-virtual {v5, v0}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    move v1, v0

    move v0, v3

    goto/16 :goto_0

    .line 123
    :cond_3
    sget-object v3, Lcom/wordloco/wordchallenge/d/f;->a:[Lcom/wordloco/wordchallenge/b/c;

    aget-object v3, v3, v1

    invoke-virtual {v3, v4}, Lcom/wordloco/wordchallenge/b/c;->b(Z)V

    .line 124
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    sget-object v7, Lcom/wordloco/wordchallenge/d/f;->a:[Lcom/wordloco/wordchallenge/b/c;

    aget-object v7, v7, v1

    invoke-virtual {v7}, Lcom/wordloco/wordchallenge/b/c;->a()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 125
    const-string v7, " - SET INSTALLED TRUE"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 124
    invoke-virtual {v3, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_4
    move v3, v0

    goto :goto_1

    :cond_5
    move v0, v3

    goto/16 :goto_0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 141
    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lcom/wordloco/wordchallenge/d/f;->a:[Lcom/wordloco/wordchallenge/b/c;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 144
    return-void

    .line 142
    :cond_0
    sget-object v1, Lcom/wordloco/wordchallenge/d/f;->a:[Lcom/wordloco/wordchallenge/b/c;

    aget-object v1, v1, v0

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/wordloco/wordchallenge/b/c;->a(Z)V

    .line 141
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static a(Landroid/app/Activity;Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 157
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 160
    const/16 v1, 0x80

    .line 159
    :try_start_0
    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 164
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 161
    :catch_0
    move-exception v0

    .line 162
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a()[Lcom/wordloco/wordchallenge/b/c;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/wordloco/wordchallenge/d/f;->a:[Lcom/wordloco/wordchallenge/b/c;

    return-object v0
.end method

.method public static b(Landroid/content/Context;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 147
    move v1, v0

    .line 148
    :goto_0
    sget-object v2, Lcom/wordloco/wordchallenge/d/f;->a:[Lcom/wordloco/wordchallenge/b/c;

    array-length v2, v2

    if-lt v0, v2, :cond_0

    .line 152
    return v1

    .line 149
    :cond_0
    sget-object v2, Lcom/wordloco/wordchallenge/d/f;->a:[Lcom/wordloco/wordchallenge/b/c;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/wordloco/wordchallenge/b/c;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/wordloco/wordchallenge/d/i;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 150
    const/4 v1, 0x1

    .line 148
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
