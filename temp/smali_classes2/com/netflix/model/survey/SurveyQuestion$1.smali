.class final Lcom/netflix/model/survey/SurveyQuestion$1;
.super Ljava/lang/Object;
.source "SurveyQuestion.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/netflix/model/survey/SurveyQuestion;
    .locals 1

    .prologue
    .line 117
    new-instance v0, Lcom/netflix/model/survey/SurveyQuestion;

    invoke-direct {v0, p1}, Lcom/netflix/model/survey/SurveyQuestion;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 115
    invoke-virtual {p0, p1}, Lcom/netflix/model/survey/SurveyQuestion$1;->createFromParcel(Landroid/os/Parcel;)Lcom/netflix/model/survey/SurveyQuestion;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/netflix/model/survey/SurveyQuestion;
    .locals 1

    .prologue
    .line 121
    new-array v0, p1, [Lcom/netflix/model/survey/SurveyQuestion;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 115
    invoke-virtual {p0, p1}, Lcom/netflix/model/survey/SurveyQuestion$1;->newArray(I)[Lcom/netflix/model/survey/SurveyQuestion;

    move-result-object v0

    return-object v0
.end method
