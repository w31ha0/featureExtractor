.class public abstract Lcom/taiwanmobile/pt/adp/view/internal/BaseVolleyListener;
.super Ljava/lang/Object;
.source "BaseVolleyListener.java"

# interfaces
.implements Lcom/a/a/n$a;
.implements Lcom/a/a/n$b;


# static fields
.field public static final ADTYPE_EXPANDABLE:I = 0x8

.field public static final ADTYPE_FLOATVIEW:I = 0x80

.field public static final ADTYPE_INTERSTITIAL:I = 0x10

.field public static final ADTYPE_NATIVE:I = 0x40

.field public static final ADTYPE_PICTURE:I = 0x1

.field public static final ADTYPE_RICHMEDIA:I = 0x4

.field public static final ADTYPE_TEXT:I = 0x2

.field public static final ADTYPE_VIDEO:I = 0x20

.field protected static final ATTR_AD:Ljava/lang/String; = "ad"

.field protected static final ATTR_ADTYPE:Ljava/lang/String; = "type"

.field protected static final ATTR_CLICK_URL:Ljava/lang/String; = "curl"

.field protected static final ATTR_CLICK_VALID_TIME:Ljava/lang/String; = "cvt"

.field protected static final ATTR_DURATION_VIDEO:Ljava/lang/String; = "dur"

.field protected static final ATTR_FACEBOOK_URL:Ljava/lang/String; = "fb"

.field protected static final ATTR_FLAG:Ljava/lang/String; = "flag"

.field protected static final ATTR_FLOAT_TYPE:Ljava/lang/String; = "floatType"

.field protected static final ATTR_ISMUTE:Ljava/lang/String; = "isMute"

.field protected static final ATTR_MEDIA_URL:Ljava/lang/String; = "b"

.field protected static final ATTR_NATIVE_AD:Ljava/lang/String; = "nad"

.field protected static final ATTR_OPEN_CHROME:Ljava/lang/String; = "oc"

.field protected static final ATTR_PLANID:Ljava/lang/String; = "pid"

.field protected static final ATTR_QUESTIONS:Ljava/lang/String; = "qt"

.field protected static final ATTR_QUESTION_ID:Ljava/lang/String; = "qid"

.field protected static final ATTR_REPORT_DURATION:Ljava/lang/String; = "rtime"

.field protected static final ATTR_RESPONSE_CODE:Ljava/lang/String; = "responseCode"

.field protected static final ATTR_RWD:Ljava/lang/String; = "rwd"

.field protected static final ATTR_SCHEDULE_TIME:Ljava/lang/String; = "sec"

.field protected static final ATTR_SID:Ljava/lang/String; = "sid"

.field protected static final ATTR_SLOT:Ljava/lang/String; = "slot"

.field protected static final ATTR_SLOT_FLAG:Ljava/lang/String; = "slotFlag"

.field protected static final ATTR_SUB_MEDIA_URL:Ljava/lang/String; = "b2"

.field protected static final ATTR_TARGET_URL:Ljava/lang/String; = "turl"

.field protected static final ATTR_TIMES:Ljava/lang/String; = "times"

.field protected static final ATTR_TXID:Ljava/lang/String; = "TxID"

.field protected static final ATTR_VIDEO:Ljava/lang/String; = "video"

.field public static final CALLTYPE_BANNER:Ljava/lang/String; = "B"

.field public static final CALLTYPE_FLOATVIEW:Ljava/lang/String; = "F"

.field public static final CALLTYPE_INTERSTITIAL:Ljava/lang/String; = "I"

.field public static final CALLTYPE_NATIVE:Ljava/lang/String; = "N"

.field public static final CALLTYPE_SMART_BANNER:Ljava/lang/String; = "SB"

.field public static final CALLTYPE_VIDEO:Ljava/lang/String; = "V"

.field protected static final DUMMY_MEDIA_URL:Ljava/lang/String; = "http://124.29.140.209/SDK20/ad_android.html"

.field protected static final DUMMY_SUB_MEDIA_URL:Ljava/lang/String; = "http://www.google.com"

.field protected static final RETURN_AD_NOT_AVALIABLE_IN_RESTRICT_TIME:Ljava/lang/String; = "21"

.field protected static final RETURN_INTERNAL_SERVER_ERROR:Ljava/lang/String; = "99"

.field protected static final RETURN_INVALID_REQUEST:Ljava/lang/String; = "40"

.field protected static final RETURN_NO_FILL:Ljava/lang/String; = "20"

.field protected static final RETURN_SLOT_NOT_EXIST:Ljava/lang/String; = "11"

.field protected static final RETURN_SUCCESS:Ljava/lang/String; = "00"

.field protected static final STATUS_SLOT_DISABLE:Ljava/lang/String; = "0"

.field protected static final STATUS_SLOT_ENABLE:Ljava/lang/String; = "1"


# instance fields
.field private a:Lcom/taiwanmobile/pt/adp/view/internal/AdViewServiceCallback;

.field private b:Ljava/lang/String;

.field private c:Z

.field protected contextRef:Ljava/lang/ref/WeakReference;

.field private d:Z

.field private e:I

.field private f:Ljava/lang/String;

.field private g:I

.field private h:I

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Z

.field private m:Ljava/lang/String;

.field private n:I

.field private o:Ljava/lang/String;

.field private p:Ljava/lang/String;

.field private q:Ljava/lang/String;

.field private r:Ljava/lang/String;

.field private s:I

.field private t:Lorg/json/JSONObject;

.field private u:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/taiwanmobile/pt/adp/view/internal/AdViewServiceCallback;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object v1, p0, Lcom/taiwanmobile/pt/adp/view/internal/BaseVolleyListener;->contextRef:Ljava/lang/ref/WeakReference;

    .line 131
    iput-boolean v2, p0, Lcom/taiwanmobile/pt/adp/view/internal/BaseVolleyListener;->c:Z

    .line 136
    iput-boolean v2, p0, Lcom/taiwanmobile/pt/adp/view/internal/BaseVolleyListener;->d:Z

    .line 141
    iput v2, p0, Lcom/taiwanmobile/pt/adp/view/internal/BaseVolleyListener;->e:I

    .line 146
    iput-object v1, p0, Lcom/taiwanmobile/pt/adp/view/internal/BaseVolleyListener;->f:Ljava/lang/String;

    .line 151
    iput v2, p0, Lcom/taiwanmobile/pt/adp/view/internal/BaseVolleyListener;->g:I

    .line 157
    iput v2, p0, Lcom/taiwanmobile/pt/adp/view/internal/BaseVolleyListener;->h:I

    .line 164
    iput-object v1, p0, Lcom/taiwanmobile/pt/adp/view/internal/BaseVolleyListener;->i:Ljava/lang/String;

    .line 169
    iput-object v1, p0, Lcom/taiwanmobile/pt/adp/view/internal/BaseVolleyListener;->j:Ljava/lang/String;

    .line 175
    iput-object v1, p0, Lcom/taiwanmobile/pt/adp/view/internal/BaseVolleyListener;->k:Ljava/lang/String;

    .line 181
    iput-boolean v2, p0, Lcom/taiwanmobile/pt/adp/view/internal/BaseVolleyListener;->l:Z

    .line 187
    const-string v0, ""

    iput-object v0, p0, Lcom/taiwanmobile/pt/adp/view/internal/BaseVolleyListener;->m:Ljava/lang/String;

    .line 193
    iput v2, p0, Lcom/taiwanmobile/pt/adp/view/internal/BaseVolleyListener;->n:I

    .line 199
    iput-object v1, p0, Lcom/taiwanmobile/pt/adp/view/internal/BaseVolleyListener;->o:Ljava/lang/String;

    .line 205
    iput-object v1, p0, Lcom/taiwanmobile/pt/adp/view/internal/BaseVolleyListener;->p:Ljava/lang/String;

    .line 211
    iput-object v1, p0, Lcom/taiwanmobile/pt/adp/view/internal/BaseVolleyListener;->q:Ljava/lang/String;

    .line 217
    iput-object v1, p0, Lcom/taiwanmobile/pt/adp/view/internal/BaseVolleyListener;->r:Ljava/lang/String;

    .line 231
    iput v2, p0, Lcom/taiwanmobile/pt/adp/view/internal/BaseVolleyListener;->s:I

    .line 236
    iput-object v1, p0, Lcom/taiwanmobile/pt/adp/view/internal/BaseVolleyListener;->t:Lorg/json/JSONObject;

    .line 242
    iput-boolean v2, p0, Lcom/taiwanmobile/pt/adp/view/internal/BaseVolleyListener;->u:Z

    .line 29
    iput-object p2, p0, Lcom/taiwanmobile/pt/adp/view/internal/BaseVolleyListener;->a:Lcom/taiwanmobile/pt/adp/view/internal/AdViewServiceCallback;

    .line 30
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/taiwanmobile/pt/adp/view/internal/BaseVolleyListener;->contextRef:Ljava/lang/ref/WeakReference;

    .line 31
    return-void
.end method

.method private a(Lcom/a/a/s;)Lcom/taiwanmobile/pt/adp/view/TWMAdRequest$ErrorCode;
    .locals 2

    .prologue
    .line 109
    sget-object v0, Lcom/taiwanmobile/pt/adp/view/TWMAdRequest$ErrorCode;->INTERNAL_ERROR:Lcom/taiwanmobile/pt/adp/view/TWMAdRequest$ErrorCode;

    .line 110
    instance-of v1, p1, Lcom/a/a/r;

    if-eqz v1, :cond_1

    .line 111
    sget-object v0, Lcom/taiwanmobile/pt/adp/view/TWMAdRequest$ErrorCode;->NETWORK_ERROR:Lcom/taiwanmobile/pt/adp/view/TWMAdRequest$ErrorCode;

    .line 121
    :cond_0
    :goto_0
    return-object v0

    .line 112
    :cond_1
    instance-of v1, p1, Lcom/a/a/q;

    if-eqz v1, :cond_2

    .line 113
    sget-object v0, Lcom/taiwanmobile/pt/adp/view/TWMAdRequest$ErrorCode;->INTERNAL_ERROR:Lcom/taiwanmobile/pt/adp/view/TWMAdRequest$ErrorCode;

    goto :goto_0

    .line 114
    :cond_2
    instance-of v1, p1, Lcom/a/a/k;

    if-eqz v1, :cond_3

    .line 115
    sget-object v0, Lcom/taiwanmobile/pt/adp/view/TWMAdRequest$ErrorCode;->INVALID_REQUEST:Lcom/taiwanmobile/pt/adp/view/TWMAdRequest$ErrorCode;

    goto :goto_0

    .line 116
    :cond_3
    instance-of v1, p1, Lcom/a/a/h;

    if-eqz v1, :cond_4

    .line 117
    sget-object v0, Lcom/taiwanmobile/pt/adp/view/TWMAdRequest$ErrorCode;->NETWORK_ERROR:Lcom/taiwanmobile/pt/adp/view/TWMAdRequest$ErrorCode;

    goto :goto_0

    .line 118
    :cond_4
    instance-of v1, p1, Lcom/a/a/j;

    if-eqz v1, :cond_0

    .line 119
    sget-object v0, Lcom/taiwanmobile/pt/adp/view/TWMAdRequest$ErrorCode;->NETWORK_ERROR:Lcom/taiwanmobile/pt/adp/view/TWMAdRequest$ErrorCode;

    goto :goto_0
.end method


# virtual methods
.method protected getAdType()I
    .locals 1

    .prologue
    .line 196
    iget v0, p0, Lcom/taiwanmobile/pt/adp/view/internal/BaseVolleyListener;->n:I

    return v0
.end method

.method protected getClickValidTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/internal/BaseVolleyListener;->m:Ljava/lang/String;

    return-object v0
.end method

.method protected getFacebookUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/internal/BaseVolleyListener;->f:Ljava/lang/String;

    return-object v0
.end method

.method public getFloatType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/internal/BaseVolleyListener;->b:Ljava/lang/String;

    return-object v0
.end method

.method protected getMediaUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/internal/BaseVolleyListener;->j:Ljava/lang/String;

    return-object v0
.end method

.method protected getNativeAd()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 238
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/internal/BaseVolleyListener;->t:Lorg/json/JSONObject;

    return-object v0
.end method

.method protected getPlanId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/internal/BaseVolleyListener;->q:Ljava/lang/String;

    return-object v0
.end method

.method protected getReportClickUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/internal/BaseVolleyListener;->i:Ljava/lang/String;

    return-object v0
.end method

.method protected getReportDuration()I
    .locals 1

    .prologue
    .line 233
    iget v0, p0, Lcom/taiwanmobile/pt/adp/view/internal/BaseVolleyListener;->s:I

    return v0
.end method

.method protected getResponseCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/internal/BaseVolleyListener;->p:Ljava/lang/String;

    return-object v0
.end method

.method protected getScheduleTime()I
    .locals 1

    .prologue
    .line 161
    iget v0, p0, Lcom/taiwanmobile/pt/adp/view/internal/BaseVolleyListener;->h:I

    mul-int/lit16 v0, v0, 0x3e8

    return v0
.end method

.method protected getSubMediaUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/internal/BaseVolleyListener;->k:Ljava/lang/String;

    return-object v0
.end method

.method protected getTargetUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/internal/BaseVolleyListener;->o:Ljava/lang/String;

    return-object v0
.end method

.method protected getTimes()I
    .locals 1

    .prologue
    .line 154
    iget v0, p0, Lcom/taiwanmobile/pt/adp/view/internal/BaseVolleyListener;->g:I

    return v0
.end method

.method protected getTxId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/internal/BaseVolleyListener;->r:Ljava/lang/String;

    return-object v0
.end method

.method protected getVideoDuration()I
    .locals 1

    .prologue
    .line 143
    iget v0, p0, Lcom/taiwanmobile/pt/adp/view/internal/BaseVolleyListener;->e:I

    return v0
.end method

.method protected isAdUnitIdEnable()Z
    .locals 1

    .prologue
    .line 184
    iget-boolean v0, p0, Lcom/taiwanmobile/pt/adp/view/internal/BaseVolleyListener;->l:Z

    return v0
.end method

.method protected isOpenChrome()Z
    .locals 1

    .prologue
    .line 244
    iget-boolean v0, p0, Lcom/taiwanmobile/pt/adp/view/internal/BaseVolleyListener;->u:Z

    return v0
.end method

.method protected isReady()Z
    .locals 2

    .prologue
    .line 224
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/internal/BaseVolleyListener;->p:Ljava/lang/String;

    const-string v1, "00"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/taiwanmobile/pt/adp/view/internal/BaseVolleyListener;->isAdUnitIdEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 225
    const/4 v0, 0x1

    .line 227
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRwd()Z
    .locals 1

    .prologue
    .line 133
    iget-boolean v0, p0, Lcom/taiwanmobile/pt/adp/view/internal/BaseVolleyListener;->c:Z

    return v0
.end method

.method protected isVideoMute()Z
    .locals 1

    .prologue
    .line 138
    iget-boolean v0, p0, Lcom/taiwanmobile/pt/adp/view/internal/BaseVolleyListener;->d:Z

    return v0
.end method

.method public onErrorResponse(Lcom/a/a/s;)V
    .locals 3

    .prologue
    .line 103
    const-string v0, "BaseVolleyListener"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onErrorResponse("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") invoked!!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/taiwanmobile/pt/util/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/internal/BaseVolleyListener;->a:Lcom/taiwanmobile/pt/adp/view/internal/AdViewServiceCallback;

    invoke-direct {p0, p1}, Lcom/taiwanmobile/pt/adp/view/internal/BaseVolleyListener;->a(Lcom/a/a/s;)Lcom/taiwanmobile/pt/adp/view/TWMAdRequest$ErrorCode;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/taiwanmobile/pt/adp/view/internal/AdViewServiceCallback;->noticeError(Lcom/taiwanmobile/pt/adp/view/TWMAdRequest$ErrorCode;)V

    .line 105
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p0, p1}, Lcom/taiwanmobile/pt/adp/view/internal/BaseVolleyListener;->onResponse(Lorg/json/JSONObject;)V

    return-void
.end method

.method public onResponse(Lorg/json/JSONObject;)V
    .locals 7

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 250
    const-string v0, "BaseVolleyListener"

    const-string v4, "onResponse invoked!!"

    invoke-static {v0, v4}, Lcom/taiwanmobile/pt/util/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    const-string v0, "BaseVolleyListener"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "response : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/taiwanmobile/pt/util/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    :try_start_0
    const-string v0, "responseCode"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/taiwanmobile/pt/adp/view/internal/BaseVolleyListener;->p:Ljava/lang/String;

    .line 255
    const-string v0, "BaseVolleyListener"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "responseCode : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/taiwanmobile/pt/adp/view/internal/BaseVolleyListener;->p:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/taiwanmobile/pt/util/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    const-string v0, "00"

    iget-object v4, p0, Lcom/taiwanmobile/pt/adp/view/internal/BaseVolleyListener;->p:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 261
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/internal/BaseVolleyListener;->contextRef:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/internal/BaseVolleyListener;->contextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 262
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/internal/BaseVolleyListener;->contextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 263
    const-string v4, "sid"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 262
    invoke-static {v0, v4}, Lcom/taiwanmobile/pt/util/Utility;->putSid(Landroid/content/Context;Ljava/lang/String;)V

    .line 266
    :cond_0
    const-string v0, "curl"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/taiwanmobile/pt/adp/view/internal/BaseVolleyListener;->i:Ljava/lang/String;

    .line 267
    const-string v0, "cvt"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/taiwanmobile/pt/adp/view/internal/BaseVolleyListener;->m:Ljava/lang/String;

    .line 270
    const-string v0, "slot"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 271
    if-eqz v4, :cond_5

    .line 272
    const-string v0, "flag"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 273
    const-string v5, "1"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    move v0, v1

    .line 272
    :goto_0
    iput-boolean v0, p0, Lcom/taiwanmobile/pt/adp/view/internal/BaseVolleyListener;->l:Z

    .line 274
    iget-boolean v0, p0, Lcom/taiwanmobile/pt/adp/view/internal/BaseVolleyListener;->l:Z

    if-eqz v0, :cond_c

    .line 275
    const-string v0, "times"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/taiwanmobile/pt/adp/view/internal/BaseVolleyListener;->g:I

    .line 276
    const-string v0, "sec"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/taiwanmobile/pt/adp/view/internal/BaseVolleyListener;->h:I

    .line 277
    const-string v0, "BaseVolleyListener"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "scheduleTime : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, p0, Lcom/taiwanmobile/pt/adp/view/internal/BaseVolleyListener;->h:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/taiwanmobile/pt/util/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    const-string v0, "pid"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/taiwanmobile/pt/adp/view/internal/BaseVolleyListener;->q:Ljava/lang/String;

    .line 281
    const-string v0, "TxID"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/taiwanmobile/pt/adp/view/internal/BaseVolleyListener;->r:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 285
    :try_start_1
    const-string v0, "nad"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lcom/taiwanmobile/pt/adp/view/internal/BaseVolleyListener;->t:Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 292
    :goto_1
    :try_start_2
    const-string v0, "ad"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v5

    .line 296
    :try_start_3
    const-string v0, "qid"

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v0

    move-object v4, v0

    .line 302
    :goto_2
    :try_start_4
    const-string v0, "qt"

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_1

    move-result-object v0

    move-object v3, v0

    .line 306
    :goto_3
    :try_start_5
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/internal/BaseVolleyListener;->contextRef:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/internal/BaseVolleyListener;->contextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 307
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/internal/BaseVolleyListener;->contextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0, v4, v3}, Lcom/taiwanmobile/pt/adp/view/internal/AdUtility;->putQuestion(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    :cond_1
    const-string v0, "turl"

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/taiwanmobile/pt/adp/view/internal/BaseVolleyListener;->o:Ljava/lang/String;

    .line 311
    const-string v0, "BaseVolleyListener"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "targetUrl : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/taiwanmobile/pt/adp/view/internal/BaseVolleyListener;->o:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/taiwanmobile/pt/util/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    const-string v0, "b"

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/taiwanmobile/pt/adp/view/internal/BaseVolleyListener;->j:Ljava/lang/String;

    .line 313
    const-string v0, "type"

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/taiwanmobile/pt/adp/view/internal/BaseVolleyListener;->n:I

    .line 315
    const-string v0, "rwd"

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    move v0, v2

    :goto_4
    iput-boolean v0, p0, Lcom/taiwanmobile/pt/adp/view/internal/BaseVolleyListener;->c:Z

    .line 316
    const-string v0, "BaseVolleyListener"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "isRwd"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v4, p0, Lcom/taiwanmobile/pt/adp/view/internal/BaseVolleyListener;->c:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/taiwanmobile/pt/util/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    iget v0, p0, Lcom/taiwanmobile/pt/adp/view/internal/BaseVolleyListener;->n:I

    const/16 v3, 0x8

    if-ne v0, v3, :cond_2

    .line 318
    const-string v0, "b2"

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/taiwanmobile/pt/adp/view/internal/BaseVolleyListener;->k:Ljava/lang/String;

    .line 321
    :cond_2
    iget v0, p0, Lcom/taiwanmobile/pt/adp/view/internal/BaseVolleyListener;->n:I

    const/16 v3, 0x20

    if-ne v0, v3, :cond_3

    .line 322
    const-string v0, "video"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 324
    if-eqz v3, :cond_3

    .line 325
    const-string v0, "rtime"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/taiwanmobile/pt/adp/view/internal/BaseVolleyListener;->s:I
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_1

    .line 327
    :try_start_6
    const-string v0, "fb"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/taiwanmobile/pt/adp/view/internal/BaseVolleyListener;->f:Ljava/lang/String;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_1

    .line 332
    :goto_5
    :try_start_7
    const-string v0, "0"

    const-string v4, "isMute"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    move v0, v2

    :goto_6
    iput-boolean v0, p0, Lcom/taiwanmobile/pt/adp/view/internal/BaseVolleyListener;->d:Z
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_1

    .line 336
    :goto_7
    :try_start_8
    const-string v0, "dur"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/taiwanmobile/pt/adp/view/internal/BaseVolleyListener;->e:I

    .line 342
    :cond_3
    iget v0, p0, Lcom/taiwanmobile/pt/adp/view/internal/BaseVolleyListener;->n:I

    const/16 v3, 0x80

    if-ne v0, v3, :cond_4

    .line 343
    const-string v0, "floatType"

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    const-string v0, ""

    :goto_8
    iput-object v0, p0, Lcom/taiwanmobile/pt/adp/view/internal/BaseVolleyListener;->b:Ljava/lang/String;
    :try_end_8
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_8} :catch_1

    .line 348
    :cond_4
    :try_start_9
    const-string v0, "oc"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    if-ne v1, v0, :cond_b

    move v0, v1

    :goto_9
    iput-boolean v0, p0, Lcom/taiwanmobile/pt/adp/view/internal/BaseVolleyListener;->u:Z
    :try_end_9
    .catch Lorg/json/JSONException; {:try_start_9 .. :try_end_9} :catch_6

    .line 384
    :cond_5
    :goto_a
    return-void

    :cond_6
    move v0, v2

    .line 273
    goto/16 :goto_0

    .line 286
    :catch_0
    move-exception v0

    .line 287
    :try_start_a
    const-string v4, "BaseVolleyListener"

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/taiwanmobile/pt/util/b;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a
    .catch Lorg/json/JSONException; {:try_start_a .. :try_end_a} :catch_1

    goto/16 :goto_1

    .line 378
    :catch_1
    move-exception v0

    .line 379
    const-string v1, "BaseVolleyListener"

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/taiwanmobile/pt/util/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 380
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/internal/BaseVolleyListener;->a:Lcom/taiwanmobile/pt/adp/view/internal/AdViewServiceCallback;

    sget-object v1, Lcom/taiwanmobile/pt/adp/view/TWMAdRequest$ErrorCode;->INVALID_REQUEST:Lcom/taiwanmobile/pt/adp/view/TWMAdRequest$ErrorCode;

    invoke-interface {v0, v1}, Lcom/taiwanmobile/pt/adp/view/internal/AdViewServiceCallback;->noticeError(Lcom/taiwanmobile/pt/adp/view/TWMAdRequest$ErrorCode;)V

    goto :goto_a

    .line 298
    :catch_2
    move-exception v0

    .line 299
    :try_start_b
    const-string v4, "BaseVolleyListener"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/taiwanmobile/pt/util/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    move-object v4, v3

    goto/16 :goto_2

    .line 303
    :catch_3
    move-exception v0

    .line 304
    const-string v6, "BaseVolleyListener"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/taiwanmobile/pt/util/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 315
    :cond_7
    const-string v0, "rwd"

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v1, :cond_8

    move v0, v1

    goto/16 :goto_4

    :cond_8
    move v0, v2

    goto/16 :goto_4

    .line 328
    :catch_4
    move-exception v0

    .line 329
    const-string v4, "BaseVolleyListener"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/taiwanmobile/pt/util/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_9
    move v0, v1

    .line 332
    goto :goto_6

    .line 333
    :catch_5
    move-exception v0

    .line 334
    const-string v4, "BaseVolleyListener"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/taiwanmobile/pt/util/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7

    .line 343
    :cond_a
    const-string v0, "floatType"

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_8

    :cond_b
    move v0, v2

    .line 348
    goto :goto_9

    .line 349
    :catch_6
    move-exception v0

    .line 350
    const-string v1, "BaseVolleyListener"

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/taiwanmobile/pt/util/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a

    .line 354
    :cond_c
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/internal/BaseVolleyListener;->a:Lcom/taiwanmobile/pt/adp/view/internal/AdViewServiceCallback;

    sget-object v1, Lcom/taiwanmobile/pt/adp/view/TWMAdRequest$ErrorCode;->NO_FILL:Lcom/taiwanmobile/pt/adp/view/TWMAdRequest$ErrorCode;

    invoke-interface {v0, v1}, Lcom/taiwanmobile/pt/adp/view/internal/AdViewServiceCallback;->noticeError(Lcom/taiwanmobile/pt/adp/view/TWMAdRequest$ErrorCode;)V

    goto :goto_a

    .line 359
    :cond_d
    const-string v0, "11"

    iget-object v1, p0, Lcom/taiwanmobile/pt/adp/view/internal/BaseVolleyListener;->p:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 360
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/internal/BaseVolleyListener;->a:Lcom/taiwanmobile/pt/adp/view/internal/AdViewServiceCallback;

    sget-object v1, Lcom/taiwanmobile/pt/adp/view/TWMAdRequest$ErrorCode;->NO_FILL:Lcom/taiwanmobile/pt/adp/view/TWMAdRequest$ErrorCode;

    invoke-interface {v0, v1}, Lcom/taiwanmobile/pt/adp/view/internal/AdViewServiceCallback;->noticeError(Lcom/taiwanmobile/pt/adp/view/TWMAdRequest$ErrorCode;)V

    goto/16 :goto_a

    .line 362
    :cond_e
    const-string v0, "20"

    iget-object v1, p0, Lcom/taiwanmobile/pt/adp/view/internal/BaseVolleyListener;->p:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 363
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/internal/BaseVolleyListener;->a:Lcom/taiwanmobile/pt/adp/view/internal/AdViewServiceCallback;

    sget-object v1, Lcom/taiwanmobile/pt/adp/view/TWMAdRequest$ErrorCode;->NO_FILL:Lcom/taiwanmobile/pt/adp/view/TWMAdRequest$ErrorCode;

    invoke-interface {v0, v1}, Lcom/taiwanmobile/pt/adp/view/internal/AdViewServiceCallback;->noticeError(Lcom/taiwanmobile/pt/adp/view/TWMAdRequest$ErrorCode;)V

    goto/16 :goto_a

    .line 365
    :cond_f
    const-string v0, "21"

    iget-object v1, p0, Lcom/taiwanmobile/pt/adp/view/internal/BaseVolleyListener;->p:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 366
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/internal/BaseVolleyListener;->a:Lcom/taiwanmobile/pt/adp/view/internal/AdViewServiceCallback;

    sget-object v1, Lcom/taiwanmobile/pt/adp/view/TWMAdRequest$ErrorCode;->NO_FILL:Lcom/taiwanmobile/pt/adp/view/TWMAdRequest$ErrorCode;

    invoke-interface {v0, v1}, Lcom/taiwanmobile/pt/adp/view/internal/AdViewServiceCallback;->noticeError(Lcom/taiwanmobile/pt/adp/view/TWMAdRequest$ErrorCode;)V

    goto/16 :goto_a

    .line 368
    :cond_10
    const-string v0, "40"

    iget-object v1, p0, Lcom/taiwanmobile/pt/adp/view/internal/BaseVolleyListener;->p:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 369
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/internal/BaseVolleyListener;->a:Lcom/taiwanmobile/pt/adp/view/internal/AdViewServiceCallback;

    sget-object v1, Lcom/taiwanmobile/pt/adp/view/TWMAdRequest$ErrorCode;->INVALID_REQUEST:Lcom/taiwanmobile/pt/adp/view/TWMAdRequest$ErrorCode;

    invoke-interface {v0, v1}, Lcom/taiwanmobile/pt/adp/view/internal/AdViewServiceCallback;->noticeError(Lcom/taiwanmobile/pt/adp/view/TWMAdRequest$ErrorCode;)V

    goto/16 :goto_a

    .line 371
    :cond_11
    const-string v0, "99"

    iget-object v1, p0, Lcom/taiwanmobile/pt/adp/view/internal/BaseVolleyListener;->p:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 372
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/internal/BaseVolleyListener;->a:Lcom/taiwanmobile/pt/adp/view/internal/AdViewServiceCallback;

    sget-object v1, Lcom/taiwanmobile/pt/adp/view/TWMAdRequest$ErrorCode;->INTERNAL_ERROR:Lcom/taiwanmobile/pt/adp/view/TWMAdRequest$ErrorCode;

    invoke-interface {v0, v1}, Lcom/taiwanmobile/pt/adp/view/internal/AdViewServiceCallback;->noticeError(Lcom/taiwanmobile/pt/adp/view/TWMAdRequest$ErrorCode;)V

    goto/16 :goto_a

    .line 375
    :cond_12
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/internal/BaseVolleyListener;->a:Lcom/taiwanmobile/pt/adp/view/internal/AdViewServiceCallback;

    sget-object v1, Lcom/taiwanmobile/pt/adp/view/TWMAdRequest$ErrorCode;->INVALID_REQUEST:Lcom/taiwanmobile/pt/adp/view/TWMAdRequest$ErrorCode;

    invoke-interface {v0, v1}, Lcom/taiwanmobile/pt/adp/view/internal/AdViewServiceCallback;->noticeError(Lcom/taiwanmobile/pt/adp/view/TWMAdRequest$ErrorCode;)V
    :try_end_b
    .catch Lorg/json/JSONException; {:try_start_b .. :try_end_b} :catch_1

    goto/16 :goto_a
.end method
