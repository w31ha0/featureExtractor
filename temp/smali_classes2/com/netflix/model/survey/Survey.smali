.class public Lcom/netflix/model/survey/Survey;
.super Ljava/lang/Object;
.source "Survey.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Lcom/netflix/mediaclient/servicemgr/interface_/JsonMerger;
.implements Lcom/netflix/mediaclient/servicemgr/interface_/JsonPopulator;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;

.field public static final TAG:Ljava/lang/String; = "Survey"


# instance fields
.field questions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/netflix/model/survey/SurveyQuestion;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 80
    new-instance v0, Lcom/netflix/model/survey/Survey$1;

    invoke-direct {v0}, Lcom/netflix/model/survey/Survey$1;-><init>()V

    sput-object v0, Lcom/netflix/model/survey/Survey;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/netflix/model/survey/Survey;->questions:Ljava/util/ArrayList;

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/netflix/model/survey/Survey;->questions:Ljava/util/ArrayList;

    .line 56
    iget-object v0, p0, Lcom/netflix/model/survey/Survey;->questions:Ljava/util/ArrayList;

    sget-object v1, Lcom/netflix/model/survey/SurveyQuestion;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    .line 57
    return-void
.end method

.method public constructor <init>(Lcom/google/gson/JsonElement;)V
    .locals 2

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/netflix/model/survey/Survey;->questions:Ljava/util/ArrayList;

    .line 37
    invoke-virtual {p0, p1}, Lcom/netflix/model/survey/Survey;->populate(Lcom/google/gson/JsonElement;)V

    .line 38
    return-void
.end method

.method public static createTestSurvey()Lcom/netflix/model/survey/Survey;
    .locals 3

    .prologue
    .line 42
    new-instance v0, Lcom/netflix/model/survey/Survey;

    invoke-direct {v0}, Lcom/netflix/model/survey/Survey;-><init>()V

    .line 43
    new-instance v1, Lcom/netflix/model/survey/SurveyQuestion;

    invoke-direct {v1}, Lcom/netflix/model/survey/SurveyQuestion;-><init>()V

    .line 44
    const-string/jumbo v2, "CA"

    iput-object v2, v1, Lcom/netflix/model/survey/SurveyQuestion;->id:Ljava/lang/String;

    .line 45
    const-string/jumbo v2, "Question 1 of 1"

    iput-object v2, v1, Lcom/netflix/model/survey/SurveyQuestion;->header:Ljava/lang/String;

    .line 46
    const-string/jumbo v2, "How much do you agree:"

    iput-object v2, v1, Lcom/netflix/model/survey/SurveyQuestion;->title:Ljava/lang/String;

    .line 47
    const-string/jumbo v2, "Netflix provides exactly what I\'m looking for"

    iput-object v2, v1, Lcom/netflix/model/survey/SurveyQuestion;->body:Ljava/lang/String;

    .line 48
    const-string/jumbo v2, "Strongly Agree"

    iput-object v2, v1, Lcom/netflix/model/survey/SurveyQuestion;->agree:Ljava/lang/String;

    .line 49
    const-string/jumbo v2, "Strongly Disagree"

    iput-object v2, v1, Lcom/netflix/model/survey/SurveyQuestion;->disagree:Ljava/lang/String;

    .line 50
    const-string/jumbo v2, "Skip"

    iput-object v2, v1, Lcom/netflix/model/survey/SurveyQuestion;->skip:Ljava/lang/String;

    .line 51
    iget-object v2, v0, Lcom/netflix/model/survey/Survey;->questions:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 52
    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 72
    const/4 v0, 0x0

    return v0
.end method

.method public getFirstQuestion()Lcom/netflix/model/survey/SurveyQuestion;
    .locals 2

    .prologue
    .line 60
    iget-object v0, p0, Lcom/netflix/model/survey/Survey;->questions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/netflix/model/survey/Survey;->questions:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/model/survey/SurveyQuestion;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getQuestion(I)Lcom/netflix/model/survey/SurveyQuestion;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/netflix/model/survey/Survey;->questions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/model/survey/SurveyQuestion;

    return-object v0
.end method

.method public getQuestionTotal()I
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/netflix/model/survey/Survey;->questions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 67
    invoke-virtual {p0}, Lcom/netflix/model/survey/Survey;->getFirstQuestion()Lcom/netflix/model/survey/SurveyQuestion;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/netflix/model/survey/Survey;->getFirstQuestion()Lcom/netflix/model/survey/SurveyQuestion;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/model/survey/SurveyQuestion;->getId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public populate(Lcom/google/gson/JsonElement;)V
    .locals 3

    .prologue
    .line 92
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v0

    .line 97
    invoke-virtual {v0}, Lcom/google/gson/JsonObject;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 98
    new-instance v2, Lcom/netflix/model/survey/SurveyQuestion;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/JsonElement;

    invoke-direct {v2, v0}, Lcom/netflix/model/survey/SurveyQuestion;-><init>(Lcom/google/gson/JsonElement;)V

    .line 99
    iget-object v0, p0, Lcom/netflix/model/survey/Survey;->questions:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 101
    :cond_0
    return-void
.end method

.method public set(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonParser;)Z
    .locals 2

    .prologue
    .line 109
    new-instance v0, Lcom/netflix/model/survey/SurveyQuestion;

    invoke-direct {v0, p2}, Lcom/netflix/model/survey/SurveyQuestion;-><init>(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 110
    iget-object v1, p0, Lcom/netflix/model/survey/Survey;->questions:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 111
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/netflix/model/survey/Survey;->questions:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 78
    return-void
.end method
