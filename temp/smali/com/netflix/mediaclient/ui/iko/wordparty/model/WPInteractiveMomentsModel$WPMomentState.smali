.class Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPMomentState;
.super Ljava/lang/Object;
.source "WPInteractiveMomentsModel.java"


# instance fields
.field private VO:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPAudio;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel;


# direct methods
.method private constructor <init>(Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel;)V
    .locals 0

    .prologue
    .line 862
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPMomentState;->this$0:Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$2900(Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPMomentState;)Ljava/util/List;
    .locals 1

    .prologue
    .line 862
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/model/WPInteractiveMomentsModel$WPMomentState;->VO:Ljava/util/List;

    return-object v0
.end method
