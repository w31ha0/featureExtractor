.class public final enum Lcom/facebook/widget/LikeView$AuxiliaryViewPosition;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/facebook/widget/LikeView$AuxiliaryViewPosition;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum BOTTOM:Lcom/facebook/widget/LikeView$AuxiliaryViewPosition;

.field static DEFAULT:Lcom/facebook/widget/LikeView$AuxiliaryViewPosition;

.field private static final synthetic ENUM$VALUES:[Lcom/facebook/widget/LikeView$AuxiliaryViewPosition;

.field public static final enum INLINE:Lcom/facebook/widget/LikeView$AuxiliaryViewPosition;

.field public static final enum TOP:Lcom/facebook/widget/LikeView$AuxiliaryViewPosition;


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

    .line 156
    new-instance v0, Lcom/facebook/widget/LikeView$AuxiliaryViewPosition;

    const-string v1, "BOTTOM"

    .line 162
    const-string v2, "bottom"

    invoke-direct {v0, v1, v3, v2, v3}, Lcom/facebook/widget/LikeView$AuxiliaryViewPosition;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/facebook/widget/LikeView$AuxiliaryViewPosition;->BOTTOM:Lcom/facebook/widget/LikeView$AuxiliaryViewPosition;

    .line 164
    new-instance v0, Lcom/facebook/widget/LikeView$AuxiliaryViewPosition;

    const-string v1, "INLINE"

    .line 170
    const-string v2, "inline"

    invoke-direct {v0, v1, v4, v2, v4}, Lcom/facebook/widget/LikeView$AuxiliaryViewPosition;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/facebook/widget/LikeView$AuxiliaryViewPosition;->INLINE:Lcom/facebook/widget/LikeView$AuxiliaryViewPosition;

    .line 172
    new-instance v0, Lcom/facebook/widget/LikeView$AuxiliaryViewPosition;

    const-string v1, "TOP"

    .line 176
    const-string v2, "top"

    invoke-direct {v0, v1, v5, v2, v5}, Lcom/facebook/widget/LikeView$AuxiliaryViewPosition;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/facebook/widget/LikeView$AuxiliaryViewPosition;->TOP:Lcom/facebook/widget/LikeView$AuxiliaryViewPosition;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/facebook/widget/LikeView$AuxiliaryViewPosition;

    sget-object v1, Lcom/facebook/widget/LikeView$AuxiliaryViewPosition;->BOTTOM:Lcom/facebook/widget/LikeView$AuxiliaryViewPosition;

    aput-object v1, v0, v3

    sget-object v1, Lcom/facebook/widget/LikeView$AuxiliaryViewPosition;->INLINE:Lcom/facebook/widget/LikeView$AuxiliaryViewPosition;

    aput-object v1, v0, v4

    sget-object v1, Lcom/facebook/widget/LikeView$AuxiliaryViewPosition;->TOP:Lcom/facebook/widget/LikeView$AuxiliaryViewPosition;

    aput-object v1, v0, v5

    sput-object v0, Lcom/facebook/widget/LikeView$AuxiliaryViewPosition;->ENUM$VALUES:[Lcom/facebook/widget/LikeView$AuxiliaryViewPosition;

    .line 178
    sget-object v0, Lcom/facebook/widget/LikeView$AuxiliaryViewPosition;->BOTTOM:Lcom/facebook/widget/LikeView$AuxiliaryViewPosition;

    sput-object v0, Lcom/facebook/widget/LikeView$AuxiliaryViewPosition;->DEFAULT:Lcom/facebook/widget/LikeView$AuxiliaryViewPosition;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 0

    .prologue
    .line 192
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 193
    iput-object p3, p0, Lcom/facebook/widget/LikeView$AuxiliaryViewPosition;->stringValue:Ljava/lang/String;

    .line 194
    iput p4, p0, Lcom/facebook/widget/LikeView$AuxiliaryViewPosition;->intValue:I

    .line 195
    return-void
.end method

.method static synthetic access$2(Lcom/facebook/widget/LikeView$AuxiliaryViewPosition;)I
    .locals 1

    .prologue
    .line 202
    invoke-direct {p0}, Lcom/facebook/widget/LikeView$AuxiliaryViewPosition;->getValue()I

    move-result v0

    return v0
.end method

.method static fromInt(I)Lcom/facebook/widget/LikeView$AuxiliaryViewPosition;
    .locals 5

    .prologue
    .line 181
    invoke-static {}, Lcom/facebook/widget/LikeView$AuxiliaryViewPosition;->values()[Lcom/facebook/widget/LikeView$AuxiliaryViewPosition;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-lt v1, v3, :cond_1

    .line 187
    const/4 v0, 0x0

    :cond_0
    return-object v0

    .line 181
    :cond_1
    aget-object v0, v2, v1

    .line 182
    invoke-direct {v0}, Lcom/facebook/widget/LikeView$AuxiliaryViewPosition;->getValue()I

    move-result v4

    if-eq v4, p0, :cond_0

    .line 181
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method private getValue()I
    .locals 1

    .prologue
    .line 203
    iget v0, p0, Lcom/facebook/widget/LikeView$AuxiliaryViewPosition;->intValue:I

    return v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/widget/LikeView$AuxiliaryViewPosition;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/facebook/widget/LikeView$AuxiliaryViewPosition;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/facebook/widget/LikeView$AuxiliaryViewPosition;

    return-object v0
.end method

.method public static values()[Lcom/facebook/widget/LikeView$AuxiliaryViewPosition;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/facebook/widget/LikeView$AuxiliaryViewPosition;->ENUM$VALUES:[Lcom/facebook/widget/LikeView$AuxiliaryViewPosition;

    array-length v1, v0

    new-array v2, v1, [Lcom/facebook/widget/LikeView$AuxiliaryViewPosition;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lcom/facebook/widget/LikeView$AuxiliaryViewPosition;->stringValue:Ljava/lang/String;

    return-object v0
.end method
