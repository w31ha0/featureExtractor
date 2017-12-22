.class public final Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_UmaAlert$GsonTypeAdapter;
.super Lcom/google/gson/TypeAdapter;
.source "AutoValue_UmaAlert.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gson/TypeAdapter",
        "<",
        "Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;",
        ">;"
    }
.end annotation


# instance fields
.field private final abTestCellAdapter:Lcom/google/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/TypeAdapter",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final abTestIdAdapter:Lcom/google/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/TypeAdapter",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final blockingAdapter:Lcom/google/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/TypeAdapter",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final bodyAdapter:Lcom/google/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/TypeAdapter",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final cta1Adapter:Lcom/google/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/TypeAdapter",
            "<",
            "Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaCta;",
            ">;"
        }
    .end annotation
.end field

.field private final cta2Adapter:Lcom/google/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/TypeAdapter",
            "<",
            "Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaCta;",
            ">;"
        }
    .end annotation
.end field

.field private defaultAbTestCell:I

.field private defaultAbTestId:I

.field private defaultBlocking:Z

.field private defaultBody:Ljava/lang/String;

.field private defaultCta1:Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaCta;

.field private defaultCta2:Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaCta;

.field private defaultLocale:Ljava/lang/String;

.field private defaultMessageId:J

.field private defaultMessageName:Ljava/lang/String;

.field private defaultTimestamp:J

.field private defaultTitle:Ljava/lang/String;

.field private defaultTrackingInfo:Ljava/lang/String;

.field private defaultViewType:Ljava/lang/String;

.field private final localeAdapter:Lcom/google/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/TypeAdapter",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final messageIdAdapter:Lcom/google/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/TypeAdapter",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final messageNameAdapter:Lcom/google/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/TypeAdapter",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final timestampAdapter:Lcom/google/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/TypeAdapter",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final titleAdapter:Lcom/google/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/TypeAdapter",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final trackingInfoAdapter:Lcom/google/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/TypeAdapter",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final viewTypeAdapter:Lcom/google/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/TypeAdapter",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/gson/Gson;)V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 49
    invoke-direct {p0}, Lcom/google/gson/TypeAdapter;-><init>()V

    .line 36
    iput v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_UmaAlert$GsonTypeAdapter;->defaultAbTestCell:I

    .line 37
    iput v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_UmaAlert$GsonTypeAdapter;->defaultAbTestId:I

    .line 38
    iput-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_UmaAlert$GsonTypeAdapter;->defaultLocale:Ljava/lang/String;

    .line 39
    iput-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_UmaAlert$GsonTypeAdapter;->defaultMessageName:Ljava/lang/String;

    .line 40
    iput-wide v2, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_UmaAlert$GsonTypeAdapter;->defaultMessageId:J

    .line 41
    iput-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_UmaAlert$GsonTypeAdapter;->defaultViewType:Ljava/lang/String;

    .line 42
    iput-boolean v1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_UmaAlert$GsonTypeAdapter;->defaultBlocking:Z

    .line 43
    iput-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_UmaAlert$GsonTypeAdapter;->defaultTitle:Ljava/lang/String;

    .line 44
    iput-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_UmaAlert$GsonTypeAdapter;->defaultBody:Ljava/lang/String;

    .line 45
    iput-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_UmaAlert$GsonTypeAdapter;->defaultCta1:Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaCta;

    .line 46
    iput-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_UmaAlert$GsonTypeAdapter;->defaultCta2:Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaCta;

    .line 47
    iput-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_UmaAlert$GsonTypeAdapter;->defaultTrackingInfo:Ljava/lang/String;

    .line 48
    iput-wide v2, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_UmaAlert$GsonTypeAdapter;->defaultTimestamp:J

    .line 50
    const-class v0, Ljava/lang/Integer;

    invoke-virtual {p1, v0}, Lcom/google/gson/Gson;->getAdapter(Ljava/lang/Class;)Lcom/google/gson/TypeAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_UmaAlert$GsonTypeAdapter;->abTestCellAdapter:Lcom/google/gson/TypeAdapter;

    .line 51
    const-class v0, Ljava/lang/Integer;

    invoke-virtual {p1, v0}, Lcom/google/gson/Gson;->getAdapter(Ljava/lang/Class;)Lcom/google/gson/TypeAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_UmaAlert$GsonTypeAdapter;->abTestIdAdapter:Lcom/google/gson/TypeAdapter;

    .line 52
    const-class v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/google/gson/Gson;->getAdapter(Ljava/lang/Class;)Lcom/google/gson/TypeAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_UmaAlert$GsonTypeAdapter;->localeAdapter:Lcom/google/gson/TypeAdapter;

    .line 53
    const-class v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/google/gson/Gson;->getAdapter(Ljava/lang/Class;)Lcom/google/gson/TypeAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_UmaAlert$GsonTypeAdapter;->messageNameAdapter:Lcom/google/gson/TypeAdapter;

    .line 54
    const-class v0, Ljava/lang/Long;

    invoke-virtual {p1, v0}, Lcom/google/gson/Gson;->getAdapter(Ljava/lang/Class;)Lcom/google/gson/TypeAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_UmaAlert$GsonTypeAdapter;->messageIdAdapter:Lcom/google/gson/TypeAdapter;

    .line 55
    const-class v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/google/gson/Gson;->getAdapter(Ljava/lang/Class;)Lcom/google/gson/TypeAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_UmaAlert$GsonTypeAdapter;->viewTypeAdapter:Lcom/google/gson/TypeAdapter;

    .line 56
    const-class v0, Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Lcom/google/gson/Gson;->getAdapter(Ljava/lang/Class;)Lcom/google/gson/TypeAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_UmaAlert$GsonTypeAdapter;->blockingAdapter:Lcom/google/gson/TypeAdapter;

    .line 57
    const-class v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/google/gson/Gson;->getAdapter(Ljava/lang/Class;)Lcom/google/gson/TypeAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_UmaAlert$GsonTypeAdapter;->titleAdapter:Lcom/google/gson/TypeAdapter;

    .line 58
    const-class v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/google/gson/Gson;->getAdapter(Ljava/lang/Class;)Lcom/google/gson/TypeAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_UmaAlert$GsonTypeAdapter;->bodyAdapter:Lcom/google/gson/TypeAdapter;

    .line 59
    const-class v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaCta;

    invoke-virtual {p1, v0}, Lcom/google/gson/Gson;->getAdapter(Ljava/lang/Class;)Lcom/google/gson/TypeAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_UmaAlert$GsonTypeAdapter;->cta1Adapter:Lcom/google/gson/TypeAdapter;

    .line 60
    const-class v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaCta;

    invoke-virtual {p1, v0}, Lcom/google/gson/Gson;->getAdapter(Ljava/lang/Class;)Lcom/google/gson/TypeAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_UmaAlert$GsonTypeAdapter;->cta2Adapter:Lcom/google/gson/TypeAdapter;

    .line 61
    const-class v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/google/gson/Gson;->getAdapter(Ljava/lang/Class;)Lcom/google/gson/TypeAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_UmaAlert$GsonTypeAdapter;->trackingInfoAdapter:Lcom/google/gson/TypeAdapter;

    .line 62
    const-class v0, Ljava/lang/Long;

    invoke-virtual {p1, v0}, Lcom/google/gson/Gson;->getAdapter(Ljava/lang/Class;)Lcom/google/gson/TypeAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_UmaAlert$GsonTypeAdapter;->timestampAdapter:Lcom/google/gson/TypeAdapter;

    .line 63
    return-void
.end method


# virtual methods
.method public read(Lcom/google/gson/stream/JsonReader;)Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;
    .locals 19

    .prologue
    .line 153
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v1

    sget-object v2, Lcom/google/gson/stream/JsonToken;->NULL:Lcom/google/gson/stream/JsonToken;

    if-ne v1, v2, :cond_0

    .line 154
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->nextNull()V

    .line 155
    const/4 v1, 0x0

    .line 236
    :goto_0
    return-object v1

    .line 157
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->beginObject()V

    .line 158
    move-object/from16 v0, p0

    iget v2, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_UmaAlert$GsonTypeAdapter;->defaultAbTestCell:I

    .line 159
    move-object/from16 v0, p0

    iget v3, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_UmaAlert$GsonTypeAdapter;->defaultAbTestId:I

    .line 160
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_UmaAlert$GsonTypeAdapter;->defaultLocale:Ljava/lang/String;

    .line 161
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_UmaAlert$GsonTypeAdapter;->defaultMessageName:Ljava/lang/String;

    .line 162
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_UmaAlert$GsonTypeAdapter;->defaultMessageId:J

    .line 163
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_UmaAlert$GsonTypeAdapter;->defaultViewType:Ljava/lang/String;

    .line 164
    move-object/from16 v0, p0

    iget-boolean v9, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_UmaAlert$GsonTypeAdapter;->defaultBlocking:Z

    .line 165
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_UmaAlert$GsonTypeAdapter;->defaultTitle:Ljava/lang/String;

    .line 166
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_UmaAlert$GsonTypeAdapter;->defaultBody:Ljava/lang/String;

    .line 167
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_UmaAlert$GsonTypeAdapter;->defaultCta1:Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaCta;

    .line 168
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_UmaAlert$GsonTypeAdapter;->defaultCta2:Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaCta;

    .line 169
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_UmaAlert$GsonTypeAdapter;->defaultTrackingInfo:Ljava/lang/String;

    .line 170
    move-object/from16 v0, p0

    iget-wide v15, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_UmaAlert$GsonTypeAdapter;->defaultTimestamp:J

    .line 171
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 172
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v17

    .line 173
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v1

    sget-object v18, Lcom/google/gson/stream/JsonToken;->NULL:Lcom/google/gson/stream/JsonToken;

    move-object/from16 v0, v18

    if-ne v1, v0, :cond_1

    .line 174
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->nextNull()V

    goto :goto_1

    .line 177
    :cond_1
    const/4 v1, -0x1

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->hashCode()I

    move-result v18

    sparse-switch v18, :sswitch_data_0

    :cond_2
    :goto_2
    packed-switch v1, :pswitch_data_0

    .line 231
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->skipValue()V

    goto :goto_1

    .line 177
    :sswitch_0
    const-string/jumbo v18, "abTestCell"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_2

    const/4 v1, 0x0

    goto :goto_2

    :sswitch_1
    const-string/jumbo v18, "abTestId"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_2

    const/4 v1, 0x1

    goto :goto_2

    :sswitch_2
    const-string/jumbo v18, "locale"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_2

    const/4 v1, 0x2

    goto :goto_2

    :sswitch_3
    const-string/jumbo v18, "messageName"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_2

    const/4 v1, 0x3

    goto :goto_2

    :sswitch_4
    const-string/jumbo v18, "messageId"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_2

    const/4 v1, 0x4

    goto :goto_2

    :sswitch_5
    const-string/jumbo v18, "viewType"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_2

    const/4 v1, 0x5

    goto :goto_2

    :sswitch_6
    const-string/jumbo v18, "blocking"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_2

    const/4 v1, 0x6

    goto :goto_2

    :sswitch_7
    const-string/jumbo v18, "title"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_2

    const/4 v1, 0x7

    goto :goto_2

    :sswitch_8
    const-string/jumbo v18, "body"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_2

    const/16 v1, 0x8

    goto :goto_2

    :sswitch_9
    const-string/jumbo v18, "cta1"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_2

    const/16 v1, 0x9

    goto :goto_2

    :sswitch_a
    const-string/jumbo v18, "cta2"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_2

    const/16 v1, 0xa

    goto/16 :goto_2

    :sswitch_b
    const-string/jumbo v18, "trackingInfo"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_2

    const/16 v1, 0xb

    goto/16 :goto_2

    :sswitch_c
    const-string/jumbo v18, "timestamp"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_2

    const/16 v1, 0xc

    goto/16 :goto_2

    .line 179
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_UmaAlert$GsonTypeAdapter;->abTestCellAdapter:Lcom/google/gson/TypeAdapter;

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Lcom/google/gson/TypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto/16 :goto_1

    .line 183
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_UmaAlert$GsonTypeAdapter;->abTestIdAdapter:Lcom/google/gson/TypeAdapter;

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Lcom/google/gson/TypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    goto/16 :goto_1

    .line 187
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_UmaAlert$GsonTypeAdapter;->localeAdapter:Lcom/google/gson/TypeAdapter;

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Lcom/google/gson/TypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move-object v4, v1

    .line 188
    goto/16 :goto_1

    .line 191
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_UmaAlert$GsonTypeAdapter;->messageNameAdapter:Lcom/google/gson/TypeAdapter;

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Lcom/google/gson/TypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move-object v5, v1

    .line 192
    goto/16 :goto_1

    .line 195
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_UmaAlert$GsonTypeAdapter;->messageIdAdapter:Lcom/google/gson/TypeAdapter;

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Lcom/google/gson/TypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    goto/16 :goto_1

    .line 199
    :pswitch_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_UmaAlert$GsonTypeAdapter;->viewTypeAdapter:Lcom/google/gson/TypeAdapter;

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Lcom/google/gson/TypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move-object v8, v1

    .line 200
    goto/16 :goto_1

    .line 203
    :pswitch_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_UmaAlert$GsonTypeAdapter;->blockingAdapter:Lcom/google/gson/TypeAdapter;

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Lcom/google/gson/TypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    goto/16 :goto_1

    .line 207
    :pswitch_7
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_UmaAlert$GsonTypeAdapter;->titleAdapter:Lcom/google/gson/TypeAdapter;

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Lcom/google/gson/TypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move-object v10, v1

    .line 208
    goto/16 :goto_1

    .line 211
    :pswitch_8
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_UmaAlert$GsonTypeAdapter;->bodyAdapter:Lcom/google/gson/TypeAdapter;

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Lcom/google/gson/TypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move-object v11, v1

    .line 212
    goto/16 :goto_1

    .line 215
    :pswitch_9
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_UmaAlert$GsonTypeAdapter;->cta1Adapter:Lcom/google/gson/TypeAdapter;

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Lcom/google/gson/TypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaCta;

    move-object v12, v1

    .line 216
    goto/16 :goto_1

    .line 219
    :pswitch_a
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_UmaAlert$GsonTypeAdapter;->cta2Adapter:Lcom/google/gson/TypeAdapter;

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Lcom/google/gson/TypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaCta;

    move-object v13, v1

    .line 220
    goto/16 :goto_1

    .line 223
    :pswitch_b
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_UmaAlert$GsonTypeAdapter;->trackingInfoAdapter:Lcom/google/gson/TypeAdapter;

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Lcom/google/gson/TypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move-object v14, v1

    .line 224
    goto/16 :goto_1

    .line 227
    :pswitch_c
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_UmaAlert$GsonTypeAdapter;->timestampAdapter:Lcom/google/gson/TypeAdapter;

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Lcom/google/gson/TypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v15

    goto/16 :goto_1

    .line 235
    :cond_3
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/stream/JsonReader;->endObject()V

    .line 236
    new-instance v1, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_UmaAlert;

    invoke-direct/range {v1 .. v16}, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_UmaAlert;-><init>(IILjava/lang/String;Ljava/lang/String;JLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaCta;Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaCta;Ljava/lang/String;J)V

    goto/16 :goto_0

    .line 177
    :sswitch_data_0
    .sparse-switch
        -0x704f3bfb -> :sswitch_b
        -0x55d4dc7e -> :sswitch_4
        -0x4169f1a6 -> :sswitch_2
        -0x340d6cce -> :sswitch_3
        -0x279c93cb -> :sswitch_6
        0x2e39a2 -> :sswitch_8
        0x2ec021 -> :sswitch_9
        0x2ec022 -> :sswitch_a
        0x3492916 -> :sswitch_c
        0x6942258 -> :sswitch_7
        0x117e6855 -> :sswitch_0
        0x31910cce -> :sswitch_1
        0x4747637f -> :sswitch_5
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
    .end packed-switch
.end method

.method public bridge synthetic read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 22
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_UmaAlert$GsonTypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;

    move-result-object v0

    return-object v0
.end method

.method public setDefaultAbTestCell(I)Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_UmaAlert$GsonTypeAdapter;
    .locals 0

    .prologue
    .line 65
    iput p1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_UmaAlert$GsonTypeAdapter;->defaultAbTestCell:I

    .line 66
    return-object p0
.end method

.method public setDefaultAbTestId(I)Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_UmaAlert$GsonTypeAdapter;
    .locals 0

    .prologue
    .line 69
    iput p1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_UmaAlert$GsonTypeAdapter;->defaultAbTestId:I

    .line 70
    return-object p0
.end method

.method public setDefaultBlocking(Z)Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_UmaAlert$GsonTypeAdapter;
    .locals 0

    .prologue
    .line 89
    iput-boolean p1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_UmaAlert$GsonTypeAdapter;->defaultBlocking:Z

    .line 90
    return-object p0
.end method

.method public setDefaultBody(Ljava/lang/String;)Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_UmaAlert$GsonTypeAdapter;
    .locals 0

    .prologue
    .line 97
    iput-object p1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_UmaAlert$GsonTypeAdapter;->defaultBody:Ljava/lang/String;

    .line 98
    return-object p0
.end method

.method public setDefaultCta1(Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaCta;)Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_UmaAlert$GsonTypeAdapter;
    .locals 0

    .prologue
    .line 101
    iput-object p1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_UmaAlert$GsonTypeAdapter;->defaultCta1:Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaCta;

    .line 102
    return-object p0
.end method

.method public setDefaultCta2(Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaCta;)Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_UmaAlert$GsonTypeAdapter;
    .locals 0

    .prologue
    .line 105
    iput-object p1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_UmaAlert$GsonTypeAdapter;->defaultCta2:Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaCta;

    .line 106
    return-object p0
.end method

.method public setDefaultLocale(Ljava/lang/String;)Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_UmaAlert$GsonTypeAdapter;
    .locals 0

    .prologue
    .line 73
    iput-object p1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_UmaAlert$GsonTypeAdapter;->defaultLocale:Ljava/lang/String;

    .line 74
    return-object p0
.end method

.method public setDefaultMessageId(J)Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_UmaAlert$GsonTypeAdapter;
    .locals 1

    .prologue
    .line 81
    iput-wide p1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_UmaAlert$GsonTypeAdapter;->defaultMessageId:J

    .line 82
    return-object p0
.end method

.method public setDefaultMessageName(Ljava/lang/String;)Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_UmaAlert$GsonTypeAdapter;
    .locals 0

    .prologue
    .line 77
    iput-object p1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_UmaAlert$GsonTypeAdapter;->defaultMessageName:Ljava/lang/String;

    .line 78
    return-object p0
.end method

.method public setDefaultTimestamp(J)Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_UmaAlert$GsonTypeAdapter;
    .locals 1

    .prologue
    .line 113
    iput-wide p1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_UmaAlert$GsonTypeAdapter;->defaultTimestamp:J

    .line 114
    return-object p0
.end method

.method public setDefaultTitle(Ljava/lang/String;)Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_UmaAlert$GsonTypeAdapter;
    .locals 0

    .prologue
    .line 93
    iput-object p1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_UmaAlert$GsonTypeAdapter;->defaultTitle:Ljava/lang/String;

    .line 94
    return-object p0
.end method

.method public setDefaultTrackingInfo(Ljava/lang/String;)Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_UmaAlert$GsonTypeAdapter;
    .locals 0

    .prologue
    .line 109
    iput-object p1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_UmaAlert$GsonTypeAdapter;->defaultTrackingInfo:Ljava/lang/String;

    .line 110
    return-object p0
.end method

.method public setDefaultViewType(Ljava/lang/String;)Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_UmaAlert$GsonTypeAdapter;
    .locals 0

    .prologue
    .line 85
    iput-object p1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_UmaAlert$GsonTypeAdapter;->defaultViewType:Ljava/lang/String;

    .line 86
    return-object p0
.end method

.method public write(Lcom/google/gson/stream/JsonWriter;Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;)V
    .locals 4

    .prologue
    .line 118
    if-nez p2, :cond_0

    .line 119
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonWriter;->nullValue()Lcom/google/gson/stream/JsonWriter;

    .line 150
    :goto_0
    return-void

    .line 122
    :cond_0
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonWriter;->beginObject()Lcom/google/gson/stream/JsonWriter;

    .line 123
    const-string/jumbo v0, "abTestCell"

    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 124
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_UmaAlert$GsonTypeAdapter;->abTestCellAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {p2}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;->abTestCell()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/TypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    .line 125
    const-string/jumbo v0, "abTestId"

    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 126
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_UmaAlert$GsonTypeAdapter;->abTestIdAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {p2}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;->abTestId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/TypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    .line 127
    const-string/jumbo v0, "locale"

    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 128
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_UmaAlert$GsonTypeAdapter;->localeAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {p2}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;->locale()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/TypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    .line 129
    const-string/jumbo v0, "messageName"

    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 130
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_UmaAlert$GsonTypeAdapter;->messageNameAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {p2}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;->messageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/TypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    .line 131
    const-string/jumbo v0, "messageId"

    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 132
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_UmaAlert$GsonTypeAdapter;->messageIdAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {p2}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;->messageId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/TypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    .line 133
    const-string/jumbo v0, "viewType"

    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 134
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_UmaAlert$GsonTypeAdapter;->viewTypeAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {p2}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;->viewType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/TypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    .line 135
    const-string/jumbo v0, "blocking"

    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 136
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_UmaAlert$GsonTypeAdapter;->blockingAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {p2}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;->blocking()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/TypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    .line 137
    const-string/jumbo v0, "title"

    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 138
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_UmaAlert$GsonTypeAdapter;->titleAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {p2}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;->title()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/TypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    .line 139
    const-string/jumbo v0, "body"

    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 140
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_UmaAlert$GsonTypeAdapter;->bodyAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {p2}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;->body()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/TypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    .line 141
    const-string/jumbo v0, "cta1"

    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 142
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_UmaAlert$GsonTypeAdapter;->cta1Adapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {p2}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;->cta1()Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaCta;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/TypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    .line 143
    const-string/jumbo v0, "cta2"

    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 144
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_UmaAlert$GsonTypeAdapter;->cta2Adapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {p2}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;->cta2()Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaCta;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/TypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    .line 145
    const-string/jumbo v0, "trackingInfo"

    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 146
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_UmaAlert$GsonTypeAdapter;->trackingInfoAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {p2}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;->trackingInfo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/TypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    .line 147
    const-string/jumbo v0, "timestamp"

    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 148
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_UmaAlert$GsonTypeAdapter;->timestampAdapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {p2}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;->timestamp()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/TypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    .line 149
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonWriter;->endObject()Lcom/google/gson/stream/JsonWriter;

    goto/16 :goto_0
.end method

.method public bridge synthetic write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 22
    check-cast p2, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;

    invoke-virtual {p0, p1, p2}, Lcom/netflix/mediaclient/service/webclient/model/leafs/AutoValue_UmaAlert$GsonTypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;)V

    return-void
.end method
