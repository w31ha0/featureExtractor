.class Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPMomentTrackingInfo;
.super Ljava/lang/Object;
.source "WPInteractiveMomentsModel.java"


# instance fields
.field private expectedVideoOffset:I

.field private momentId:Ljava/lang/String;

.field final synthetic this$0:Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel;


# direct methods
.method private constructor <init>(Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel;)V
    .locals 0

    .prologue
    .line 830
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPMomentTrackingInfo;->this$0:Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPMomentTrackingInfo;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 830
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPMomentTrackingInfo;->momentId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPMomentTrackingInfo;)I
    .locals 1

    .prologue
    .line 830
    iget v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPMomentTrackingInfo;->expectedVideoOffset:I

    return v0
.end method
