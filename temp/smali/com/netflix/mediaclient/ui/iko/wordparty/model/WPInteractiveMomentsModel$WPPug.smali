.class Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPPug;
.super Ljava/lang/Object;
.source "WPInteractiveMomentsModel.java"


# instance fields
.field private autoOptIn:Z

.field private endTimeMS:I

.field private startTimeMS:I

.field private states:Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPItemStates;

.field final synthetic this$0:Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel;

.field private trackingInfo:Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPPugNotificationTrackingInfo;

.field private type:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel;)V
    .locals 0

    .prologue
    .line 793
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPPug;->this$0:Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$1800(Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPPug;)Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPItemStates;
    .locals 1

    .prologue
    .line 793
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPPug;->states:Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPItemStates;

    return-object v0
.end method

.method static synthetic access$200(Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPPug;)Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPPugNotificationTrackingInfo;
    .locals 1

    .prologue
    .line 793
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPPug;->trackingInfo:Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPPugNotificationTrackingInfo;

    return-object v0
.end method

.method static synthetic access$600(Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPPug;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 793
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPPug;->type:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPPug;)I
    .locals 1

    .prologue
    .line 793
    iget v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPPug;->startTimeMS:I

    return v0
.end method

.method static synthetic access$800(Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPPug;)I
    .locals 1

    .prologue
    .line 793
    iget v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPPug;->endTimeMS:I

    return v0
.end method

.method static synthetic access$900(Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPPug;)Z
    .locals 1

    .prologue
    .line 793
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPPug;->autoOptIn:Z

    return v0
.end method
