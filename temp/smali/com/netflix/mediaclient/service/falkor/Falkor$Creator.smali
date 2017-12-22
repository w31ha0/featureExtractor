.class public Lcom/netflix/mediaclient/service/falkor/Falkor$Creator;
.super Ljava/lang/Object;
.source "Falkor.java"


# static fields
.field public static final BillboardSummary:Lcom/netflix/falkor/Func;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/netflix/falkor/Func",
            "<",
            "Lcom/netflix/model/leafs/originals/BillboardSummary;",
            ">;"
        }
    .end annotation
.end field

.field public static final ListOfMoviesSummary:Lcom/netflix/falkor/Func;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/netflix/falkor/Func",
            "<",
            "Lcom/netflix/model/leafs/ListOfMoviesSummary;",
            ">;"
        }
    .end annotation
.end field

.field public static final LoLoMoSummary:Lcom/netflix/falkor/Func;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/netflix/falkor/Func",
            "<",
            "Lcom/netflix/model/leafs/LoLoMoSummary;",
            ">;"
        }
    .end annotation
.end field

.field public static final MementoVideoSwatch:Lcom/netflix/falkor/Func;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/netflix/falkor/Func",
            "<",
            "Lcom/netflix/model/branches/MementoVideoSwatch;",
            ">;"
        }
    .end annotation
.end field

.field public static final Ref:Lcom/netflix/falkor/Func;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/netflix/falkor/Func",
            "<",
            "Lcom/netflix/falkor/Ref;",
            ">;"
        }
    .end annotation
.end field

.field public static SearchTrackableListSummary:Lcom/netflix/falkor/Func;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/netflix/falkor/Func",
            "<",
            "Lcom/netflix/model/leafs/SearchTrackableListSummary;",
            ">;"
        }
    .end annotation
.end field

.field public static final SummarizedListOfLoLoMoSummaryRefs:Lcom/netflix/falkor/Func;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/netflix/falkor/Func",
            "<",
            "Lcom/netflix/model/branches/SummarizedList",
            "<",
            "Lcom/netflix/falkor/Ref;",
            "Lcom/netflix/model/leafs/LoLoMoSummary;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final SummarizedListOfMovieRefs:Lcom/netflix/falkor/Func;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/netflix/falkor/Func",
            "<",
            "Lcom/netflix/model/branches/SummarizedList",
            "<",
            "Lcom/netflix/falkor/Ref;",
            "Lcom/netflix/model/leafs/ListOfMoviesSummary;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final SummarizedListOfSearchResults:Lcom/netflix/falkor/Func;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/netflix/falkor/Func",
            "<",
            "Lcom/netflix/model/branches/SummarizedList",
            "<",
            "Lcom/netflix/falkor/Ref;",
            "Lcom/netflix/model/leafs/SearchTrackableListSummary;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final TrackableListSummary:Lcom/netflix/falkor/Func;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/netflix/falkor/Func",
            "<",
            "Lcom/netflix/model/leafs/TrackableListSummary;",
            ">;"
        }
    .end annotation
.end field

.field public static final UnsummarizedListOfRef:Lcom/netflix/falkor/Func;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/netflix/falkor/Func",
            "<",
            "Lcom/netflix/model/branches/UnsummarizedList",
            "<",
            "Lcom/netflix/falkor/Ref;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 121
    new-instance v0, Lcom/netflix/mediaclient/service/falkor/Falkor$Creator$1;

    invoke-direct {v0}, Lcom/netflix/mediaclient/service/falkor/Falkor$Creator$1;-><init>()V

    sput-object v0, Lcom/netflix/mediaclient/service/falkor/Falkor$Creator;->Ref:Lcom/netflix/falkor/Func;

    .line 128
    new-instance v0, Lcom/netflix/mediaclient/service/falkor/Falkor$Creator$2;

    invoke-direct {v0}, Lcom/netflix/mediaclient/service/falkor/Falkor$Creator$2;-><init>()V

    sput-object v0, Lcom/netflix/mediaclient/service/falkor/Falkor$Creator;->TrackableListSummary:Lcom/netflix/falkor/Func;

    .line 135
    new-instance v0, Lcom/netflix/mediaclient/service/falkor/Falkor$Creator$3;

    invoke-direct {v0}, Lcom/netflix/mediaclient/service/falkor/Falkor$Creator$3;-><init>()V

    sput-object v0, Lcom/netflix/mediaclient/service/falkor/Falkor$Creator;->UnsummarizedListOfRef:Lcom/netflix/falkor/Func;

    .line 142
    new-instance v0, Lcom/netflix/mediaclient/service/falkor/Falkor$Creator$4;

    invoke-direct {v0}, Lcom/netflix/mediaclient/service/falkor/Falkor$Creator$4;-><init>()V

    sput-object v0, Lcom/netflix/mediaclient/service/falkor/Falkor$Creator;->ListOfMoviesSummary:Lcom/netflix/falkor/Func;

    .line 149
    new-instance v0, Lcom/netflix/mediaclient/service/falkor/Falkor$Creator$5;

    invoke-direct {v0}, Lcom/netflix/mediaclient/service/falkor/Falkor$Creator$5;-><init>()V

    sput-object v0, Lcom/netflix/mediaclient/service/falkor/Falkor$Creator;->SummarizedListOfMovieRefs:Lcom/netflix/falkor/Func;

    .line 157
    new-instance v0, Lcom/netflix/mediaclient/service/falkor/Falkor$Creator$6;

    invoke-direct {v0}, Lcom/netflix/mediaclient/service/falkor/Falkor$Creator$6;-><init>()V

    sput-object v0, Lcom/netflix/mediaclient/service/falkor/Falkor$Creator;->LoLoMoSummary:Lcom/netflix/falkor/Func;

    .line 164
    new-instance v0, Lcom/netflix/mediaclient/service/falkor/Falkor$Creator$7;

    invoke-direct {v0}, Lcom/netflix/mediaclient/service/falkor/Falkor$Creator$7;-><init>()V

    sput-object v0, Lcom/netflix/mediaclient/service/falkor/Falkor$Creator;->SummarizedListOfLoLoMoSummaryRefs:Lcom/netflix/falkor/Func;

    .line 172
    new-instance v0, Lcom/netflix/mediaclient/service/falkor/Falkor$Creator$8;

    invoke-direct {v0}, Lcom/netflix/mediaclient/service/falkor/Falkor$Creator$8;-><init>()V

    sput-object v0, Lcom/netflix/mediaclient/service/falkor/Falkor$Creator;->SummarizedListOfSearchResults:Lcom/netflix/falkor/Func;

    .line 191
    new-instance v0, Lcom/netflix/mediaclient/service/falkor/Falkor$Creator$10;

    invoke-direct {v0}, Lcom/netflix/mediaclient/service/falkor/Falkor$Creator$10;-><init>()V

    sput-object v0, Lcom/netflix/mediaclient/service/falkor/Falkor$Creator;->MementoVideoSwatch:Lcom/netflix/falkor/Func;

    .line 198
    new-instance v0, Lcom/netflix/mediaclient/service/falkor/Falkor$Creator$11;

    invoke-direct {v0}, Lcom/netflix/mediaclient/service/falkor/Falkor$Creator$11;-><init>()V

    sput-object v0, Lcom/netflix/mediaclient/service/falkor/Falkor$Creator;->SearchTrackableListSummary:Lcom/netflix/falkor/Func;

    .line 302
    new-instance v0, Lcom/netflix/mediaclient/service/falkor/Falkor$Creator$22;

    invoke-direct {v0}, Lcom/netflix/mediaclient/service/falkor/Falkor$Creator$22;-><init>()V

    sput-object v0, Lcom/netflix/mediaclient/service/falkor/Falkor$Creator;->BillboardSummary:Lcom/netflix/falkor/Func;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static FalkorActorStill(Lcom/netflix/falkor/ModelProxy;)Lcom/netflix/falkor/Func;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/falkor/ModelProxy",
            "<+",
            "Lcom/netflix/falkor/BranchNode;",
            ">;)",
            "Lcom/netflix/falkor/Func",
            "<",
            "Lcom/netflix/model/branches/FalkorActorStill;",
            ">;"
        }
    .end annotation

    .prologue
    .line 252
    new-instance v0, Lcom/netflix/mediaclient/service/falkor/Falkor$Creator$17;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/service/falkor/Falkor$Creator$17;-><init>(Lcom/netflix/falkor/ModelProxy;)V

    return-object v0
.end method

.method public static FalkorBillboardData()Lcom/netflix/falkor/Func;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/netflix/falkor/Func",
            "<",
            "Lcom/netflix/model/branches/FalkorBillboardData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 310
    new-instance v0, Lcom/netflix/mediaclient/service/falkor/Falkor$Creator$23;

    invoke-direct {v0}, Lcom/netflix/mediaclient/service/falkor/Falkor$Creator$23;-><init>()V

    return-object v0
.end method

.method public static FalkorEpisode(Lcom/netflix/falkor/ModelProxy;)Lcom/netflix/falkor/Func;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/falkor/ModelProxy",
            "<+",
            "Lcom/netflix/falkor/BranchNode;",
            ">;)",
            "Lcom/netflix/falkor/Func",
            "<",
            "Lcom/netflix/model/branches/FalkorEpisode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 225
    new-instance v0, Lcom/netflix/mediaclient/service/falkor/Falkor$Creator$14;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/service/falkor/Falkor$Creator$14;-><init>(Lcom/netflix/falkor/ModelProxy;)V

    return-object v0
.end method

.method public static FalkorEvidenceList(Lcom/netflix/falkor/ModelProxy;)Lcom/netflix/falkor/Func;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/falkor/ModelProxy",
            "<+",
            "Lcom/netflix/falkor/BranchNode;",
            ">;)",
            "Lcom/netflix/falkor/Func",
            "<",
            "Lcom/netflix/model/branches/FalkorEvidenceList",
            "<",
            "Lcom/netflix/falkor/Ref;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 216
    new-instance v0, Lcom/netflix/mediaclient/service/falkor/Falkor$Creator$13;

    invoke-direct {v0}, Lcom/netflix/mediaclient/service/falkor/Falkor$Creator$13;-><init>()V

    return-object v0
.end method

.method public static FalkorKidsCharacter(Lcom/netflix/falkor/ModelProxy;)Lcom/netflix/falkor/Func;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/falkor/ModelProxy",
            "<+",
            "Lcom/netflix/falkor/BranchNode;",
            ">;)",
            "Lcom/netflix/falkor/Func",
            "<",
            "Lcom/netflix/model/branches/FalkorKidsCharacter;",
            ">;"
        }
    .end annotation

    .prologue
    .line 269
    new-instance v0, Lcom/netflix/mediaclient/service/falkor/Falkor$Creator$19;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/service/falkor/Falkor$Creator$19;-><init>(Lcom/netflix/falkor/ModelProxy;)V

    return-object v0
.end method

.method public static FalkorPerson(Lcom/netflix/falkor/ModelProxy;)Lcom/netflix/falkor/Func;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/falkor/ModelProxy",
            "<+",
            "Lcom/netflix/falkor/BranchNode;",
            ">;)",
            "Lcom/netflix/falkor/Func",
            "<",
            "Lcom/netflix/model/branches/FalkorPerson;",
            ">;"
        }
    .end annotation

    .prologue
    .line 243
    new-instance v0, Lcom/netflix/mediaclient/service/falkor/Falkor$Creator$16;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/service/falkor/Falkor$Creator$16;-><init>(Lcom/netflix/falkor/ModelProxy;)V

    return-object v0
.end method

.method public static FalkorScene(Lcom/netflix/falkor/ModelProxy;)Lcom/netflix/falkor/Func;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/falkor/ModelProxy",
            "<+",
            "Lcom/netflix/falkor/BranchNode;",
            ">;)",
            "Lcom/netflix/falkor/Func",
            "<",
            "Lcom/netflix/model/branches/FalkorScene;",
            ">;"
        }
    .end annotation

    .prologue
    .line 319
    new-instance v0, Lcom/netflix/mediaclient/service/falkor/Falkor$Creator$24;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/service/falkor/Falkor$Creator$24;-><init>(Lcom/netflix/falkor/ModelProxy;)V

    return-object v0
.end method

.method public static FalkorSeason(Lcom/netflix/falkor/ModelProxy;)Lcom/netflix/falkor/Func;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/falkor/ModelProxy",
            "<+",
            "Lcom/netflix/falkor/BranchNode;",
            ">;)",
            "Lcom/netflix/falkor/Func",
            "<",
            "Lcom/netflix/model/branches/FalkorSeason;",
            ">;"
        }
    .end annotation

    .prologue
    .line 234
    new-instance v0, Lcom/netflix/mediaclient/service/falkor/Falkor$Creator$15;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/service/falkor/Falkor$Creator$15;-><init>(Lcom/netflix/falkor/ModelProxy;)V

    return-object v0
.end method

.method public static FalkorSocialNotifications(Lcom/netflix/falkor/ModelProxy;)Lcom/netflix/falkor/Func;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/falkor/ModelProxy",
            "<+",
            "Lcom/netflix/falkor/BranchNode;",
            ">;)",
            "Lcom/netflix/falkor/Func",
            "<",
            "Lcom/netflix/model/branches/FalkorIrisNotification;",
            ">;"
        }
    .end annotation

    .prologue
    .line 278
    new-instance v0, Lcom/netflix/mediaclient/service/falkor/Falkor$Creator$20;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/service/falkor/Falkor$Creator$20;-><init>(Lcom/netflix/falkor/ModelProxy;)V

    return-object v0
.end method

.method public static FalkorSocialNotificationsList(Lcom/netflix/falkor/ModelProxy;)Lcom/netflix/model/branches/SummarizedList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/falkor/ModelProxy",
            "<+",
            "Lcom/netflix/falkor/BranchNode;",
            ">;)",
            "Lcom/netflix/model/branches/SummarizedList",
            "<",
            "Lcom/netflix/falkor/Ref;",
            "Lcom/netflix/model/leafs/social/IrisNotificationsListSummary;",
            ">;"
        }
    .end annotation

    .prologue
    .line 298
    new-instance v0, Lcom/netflix/model/branches/SummarizedList;

    sget-object v1, Lcom/netflix/mediaclient/service/falkor/Falkor$Creator;->Ref:Lcom/netflix/falkor/Func;

    .line 299
    invoke-static {p0}, Lcom/netflix/mediaclient/service/falkor/Falkor$Creator;->FalkorSocialNotificationsListSummary(Lcom/netflix/falkor/ModelProxy;)Lcom/netflix/falkor/Func;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/netflix/model/branches/SummarizedList;-><init>(Lcom/netflix/falkor/Func;Lcom/netflix/falkor/Func;)V

    .line 298
    return-object v0
.end method

.method public static FalkorSocialNotificationsListSummary(Lcom/netflix/falkor/ModelProxy;)Lcom/netflix/falkor/Func;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/falkor/ModelProxy",
            "<+",
            "Lcom/netflix/falkor/BranchNode;",
            ">;)",
            "Lcom/netflix/falkor/Func",
            "<",
            "Lcom/netflix/model/leafs/social/IrisNotificationsListSummary;",
            ">;"
        }
    .end annotation

    .prologue
    .line 288
    new-instance v0, Lcom/netflix/mediaclient/service/falkor/Falkor$Creator$21;

    invoke-direct {v0}, Lcom/netflix/mediaclient/service/falkor/Falkor$Creator$21;-><init>()V

    return-object v0
.end method

.method public static FalkorSuggestion(Lcom/netflix/falkor/ModelProxy;)Lcom/netflix/falkor/Func;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/falkor/ModelProxy",
            "<+",
            "Lcom/netflix/falkor/BranchNode;",
            ">;)",
            "Lcom/netflix/falkor/Func",
            "<",
            "Lcom/netflix/model/branches/FalkorSuggestion;",
            ">;"
        }
    .end annotation

    .prologue
    .line 261
    new-instance v0, Lcom/netflix/mediaclient/service/falkor/Falkor$Creator$18;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/service/falkor/Falkor$Creator$18;-><init>(Lcom/netflix/falkor/ModelProxy;)V

    return-object v0
.end method

.method public static FalkorVideo(Lcom/netflix/falkor/ModelProxy;)Lcom/netflix/falkor/Func;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/falkor/ModelProxy",
            "<+",
            "Lcom/netflix/falkor/BranchNode;",
            ">;)",
            "Lcom/netflix/falkor/Func",
            "<",
            "Lcom/netflix/model/branches/FalkorVideo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 207
    new-instance v0, Lcom/netflix/mediaclient/service/falkor/Falkor$Creator$12;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/service/falkor/Falkor$Creator$12;-><init>(Lcom/netflix/falkor/ModelProxy;)V

    return-object v0
.end method

.method public static PostPlayExperienceMap(Lcom/netflix/falkor/ModelProxy;)Lcom/netflix/falkor/Func;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/falkor/ModelProxy",
            "<+",
            "Lcom/netflix/falkor/BranchNode;",
            ">;)",
            "Lcom/netflix/falkor/Func",
            "<",
            "Lcom/netflix/model/branches/PostPlayExperienceMap;",
            ">;"
        }
    .end annotation

    .prologue
    .line 183
    new-instance v0, Lcom/netflix/mediaclient/service/falkor/Falkor$Creator$9;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/service/falkor/Falkor$Creator$9;-><init>(Lcom/netflix/falkor/ModelProxy;)V

    return-object v0
.end method
