.class public final enum Lcom/facebook/widget/LikeView$Style;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/facebook/widget/LikeView$Style;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum BOX_COUNT:Lcom/facebook/widget/LikeView$Style;

.field public static final enum BUTTON:Lcom/facebook/widget/LikeView$Style;

.field static DEFAULT:Lcom/facebook/widget/LikeView$Style;

.field private static final synthetic ENUM$VALUES:[Lcom/facebook/widget/LikeView$Style;

.field public static final enum STANDARD:Lcom/facebook/widget/LikeView$Style;


# instance fields
.field private intValue:I

.field private stringValue:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 52
    new-instance v0, Lcom/facebook/widget/LikeView$Style;

    const-string v1, "STANDARD"

    .line 58
    const-string v2, "standard"

    invoke-direct {v0, v1, v3, v2, v3}, Lcom/facebook/widget/LikeView$Style;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/facebook/widget/LikeView$Style;->STANDARD:Lcom/facebook/widget/LikeView$Style;

    .line 60
    new-instance v0, Lcom/facebook/widget/LikeView$Style;

    const-string v1, "BUTTON"

    .line 63
    const-string v2, "button"

    invoke-direct {v0, v1, v4, v2, v4}, Lcom/facebook/widget/LikeView$Style;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/facebook/widget/LikeView$Style;->BUTTON:Lcom/facebook/widget/LikeView$Style;

    .line 65
    new-instance v0, Lcom/facebook/widget/LikeView$Style;

    const-string v1, "BOX_COUNT"

    .line 69
    const-string v2, "box_count"

    invoke-direct {v0, v1, v5, v2, v5}, Lcom/facebook/widget/LikeView$Style;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/facebook/widget/LikeView$Style;->BOX_COUNT:Lcom/facebook/widget/LikeView$Style;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/facebook/widget/LikeView$Style;

    sget-object v1, Lcom/facebook/widget/LikeView$Style;->STANDARD:Lcom/facebook/widget/LikeView$Style;

    aput-object v1, v0, v3

    sget-object v1, Lcom/facebook/widget/LikeView$Style;->BUTTON:Lcom/facebook/widget/LikeView$Style;

    aput-object v1, v0, v4

    sget-object v1, Lcom/facebook/widget/LikeView$Style;->BOX_COUNT:Lcom/facebook/widget/LikeView$Style;

    aput-object v1, v0, v5

    sput-object v0, Lcom/facebook/widget/LikeView$Style;->ENUM$VALUES:[Lcom/facebook/widget/LikeView$Style;

    .line 71
    sget-object v0, Lcom/facebook/widget/LikeView$Style;->STANDARD:Lcom/facebook/widget/LikeView$Style;

    sput-object v0, Lcom/facebook/widget/LikeView$Style;->DEFAULT:Lcom/facebook/widget/LikeView$Style;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 0

    .prologue
    .line 85
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 86
    iput-object p3, p0, Lcom/facebook/widget/LikeView$Style;->stringValue:Ljava/lang/String;

    .line 87
    iput p4, p0, Lcom/facebook/widget/LikeView$Style;->intValue:I

    .line 88
    return-void
.end method

.method static synthetic access$2(Lcom/facebook/widget/LikeView$Style;)I
    .locals 1

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/facebook/widget/LikeView$Style;->getValue()I

    move-result v0

    return v0
.end method

.method static fromInt(I)Lcom/facebook/widget/LikeView$Style;
    .locals 5

    .prologue
    .line 74
    invoke-static {}, Lcom/facebook/widget/LikeView$Style;->values()[Lcom/facebook/widget/LikeView$Style;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-lt v1, v3, :cond_1

    .line 80
    const/4 v0, 0x0

    :cond_0
    return-object v0

    .line 74
    :cond_1
    aget-object v0, v2, v1

    .line 75
    invoke-direct {v0}, Lcom/facebook/widget/LikeView$Style;->getValue()I

    move-result v4

    if-eq v4, p0, :cond_0

    .line 74
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method private getValue()I
    .locals 1

    .prologue
    .line 96
    iget v0, p0, Lcom/facebook/widget/LikeView$Style;->intValue:I

    return v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/widget/LikeView$Style;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/facebook/widget/LikeView$Style;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/facebook/widget/LikeView$Style;

    return-object v0
.end method

.method public static values()[Lcom/facebook/widget/LikeView$Style;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/facebook/widget/LikeView$Style;->ENUM$VALUES:[Lcom/facebook/widget/LikeView$Style;

    array-length v1, v0

    new-array v2, v1, [Lcom/facebook/widget/LikeView$Style;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/facebook/widget/LikeView$Style;->stringValue:Ljava/lang/String;

    return-object v0
.end method
