.class public Lcom/vailsys/whistleengine/WhistleEngineThresholds$Threshold;
.super Ljava/lang/Object;
.source "WhistleEngineThresholds.java"


# instance fields
.field private red:I

.field final synthetic this$0:Lcom/vailsys/whistleengine/WhistleEngineThresholds;

.field private yellow:I


# direct methods
.method public constructor <init>(Lcom/vailsys/whistleengine/WhistleEngineThresholds;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 76
    iput-object p1, p0, Lcom/vailsys/whistleengine/WhistleEngineThresholds$Threshold;->this$0:Lcom/vailsys/whistleengine/WhistleEngineThresholds;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    invoke-direct {p0, v0}, Lcom/vailsys/whistleengine/WhistleEngineThresholds$Threshold;->setYellow(I)V

    .line 78
    invoke-direct {p0, v0}, Lcom/vailsys/whistleengine/WhistleEngineThresholds$Threshold;->setRed(I)V

    .line 79
    return-void
.end method

.method static synthetic access$000(Lcom/vailsys/whistleengine/WhistleEngineThresholds$Threshold;I)V
    .locals 0

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/vailsys/whistleengine/WhistleEngineThresholds$Threshold;->setYellow(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/vailsys/whistleengine/WhistleEngineThresholds$Threshold;I)V
    .locals 0

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/vailsys/whistleengine/WhistleEngineThresholds$Threshold;->setRed(I)V

    return-void
.end method

.method private setRed(I)V
    .locals 0

    .prologue
    .line 98
    iput p1, p0, Lcom/vailsys/whistleengine/WhistleEngineThresholds$Threshold;->red:I

    .line 99
    return-void
.end method

.method private setYellow(I)V
    .locals 0

    .prologue
    .line 88
    iput p1, p0, Lcom/vailsys/whistleengine/WhistleEngineThresholds$Threshold;->yellow:I

    .line 89
    return-void
.end method


# virtual methods
.method public getRed()I
    .locals 1

    .prologue
    .line 93
    iget v0, p0, Lcom/vailsys/whistleengine/WhistleEngineThresholds$Threshold;->red:I

    return v0
.end method

.method public getYellow()I
    .locals 1

    .prologue
    .line 83
    iget v0, p0, Lcom/vailsys/whistleengine/WhistleEngineThresholds$Threshold;->yellow:I

    return v0
.end method
