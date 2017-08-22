.class public final Lcom/mopub/common/MoPubReward;
.super Ljava/lang/Object;
.source "MoPubReward.java"


# static fields
.field public static final DEFAULT_REWARD_AMOUNT:I = 0x0

.field public static final NO_REWARD_AMOUNT:I = -0x7b

.field public static final NO_REWARD_LABEL:Ljava/lang/String; = ""


# instance fields
.field private final mAmount:I

.field private final mLabel:Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mSuccess:Z


# direct methods
.method private constructor <init>(ZLjava/lang/String;I)V
    .locals 0
    .param p1, "success"    # Z
    .param p2, "label"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "amount"    # I

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-boolean p1, p0, Lcom/mopub/common/MoPubReward;->mSuccess:Z

    .line 32
    iput-object p2, p0, Lcom/mopub/common/MoPubReward;->mLabel:Ljava/lang/String;

    .line 33
    iput p3, p0, Lcom/mopub/common/MoPubReward;->mAmount:I

    .line 34
    return-void
.end method

.method public static failure()Lcom/mopub/common/MoPubReward;
    .locals 3
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 38
    new-instance v0, Lcom/mopub/common/MoPubReward;

    const-string v1, ""

    invoke-direct {v0, v2, v1, v2}, Lcom/mopub/common/MoPubReward;-><init>(ZLjava/lang/String;I)V

    return-object v0
.end method

.method public static success(Ljava/lang/String;I)Lcom/mopub/common/MoPubReward;
    .locals 2
    .param p0, "rewardLabel"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "amount"    # I
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 43
    new-instance v0, Lcom/mopub/common/MoPubReward;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0, p1}, Lcom/mopub/common/MoPubReward;-><init>(ZLjava/lang/String;I)V

    return-object v0
.end method


# virtual methods
.method public final getAmount()I
    .locals 1

    .prologue
    .line 56
    iget v0, p0, Lcom/mopub/common/MoPubReward;->mAmount:I

    return v0
.end method

.method public final getLabel()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 52
    iget-object v0, p0, Lcom/mopub/common/MoPubReward;->mLabel:Ljava/lang/String;

    return-object v0
.end method

.method public final isSuccessful()Z
    .locals 1

    .prologue
    .line 47
    iget-boolean v0, p0, Lcom/mopub/common/MoPubReward;->mSuccess:Z

    return v0
.end method
