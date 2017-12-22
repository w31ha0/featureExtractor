.class public Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;
.super Ljava/lang/Object;
.source "UserProfile.java"


# instance fields
.field private avatarUrl:Ljava/lang/String;

.field private email:Ljava/lang/String;

.field public enumType:Lcom/netflix/mediaclient/servicemgr/interface_/user/ProfileType;

.field private experienceType:Ljava/lang/String;

.field private firstName:Ljava/lang/String;

.field private geoCountry:Ljava/lang/String;

.field private isAutoPlayEnabled:Z

.field private isIqEnabled:Z

.field private isPrimaryProfile:Z

.field public languages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Language;",
            ">;"
        }
    .end annotation
.end field

.field private maturityLevel:I

.field private profileGuid:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "profileId"
    .end annotation
.end field

.field private profileName:Ljava/lang/String;

.field private profileToken:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "userId"
    .end annotation
.end field

.field private reqCountry:Ljava/lang/String;

.field final synthetic this$0:Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;)V
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;->this$0:Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;->email:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$002(Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;->email:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;->profileName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;->avatarUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;->avatarUrl:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$102(Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;->profileName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;->geoCountry:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;->geoCountry:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;->reqCountry:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;->reqCountry:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;->firstName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$202(Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;->firstName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;)Z
    .locals 1

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;->isIqEnabled:Z

    return v0
.end method

.method static synthetic access$302(Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;Z)Z
    .locals 0

    .prologue
    .line 46
    iput-boolean p1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;->isIqEnabled:Z

    return p1
.end method

.method static synthetic access$400(Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;)Z
    .locals 1

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;->isPrimaryProfile:Z

    return v0
.end method

.method static synthetic access$402(Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;Z)Z
    .locals 0

    .prologue
    .line 46
    iput-boolean p1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;->isPrimaryProfile:Z

    return p1
.end method

.method static synthetic access$500(Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;)Z
    .locals 1

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;->isAutoPlayEnabled:Z

    return v0
.end method

.method static synthetic access$502(Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;Z)Z
    .locals 0

    .prologue
    .line 46
    iput-boolean p1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;->isAutoPlayEnabled:Z

    return p1
.end method

.method static synthetic access$600(Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;)I
    .locals 1

    .prologue
    .line 46
    iget v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;->maturityLevel:I

    return v0
.end method

.method static synthetic access$602(Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;I)I
    .locals 0

    .prologue
    .line 46
    iput p1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;->maturityLevel:I

    return p1
.end method

.method static synthetic access$700(Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;->experienceType:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$702(Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;->experienceType:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$800(Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;->profileToken:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$802(Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;->profileToken:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$900(Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;->profileGuid:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$902(Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/UserProfile$Summary;->profileGuid:Ljava/lang/String;

    return-object p1
.end method
