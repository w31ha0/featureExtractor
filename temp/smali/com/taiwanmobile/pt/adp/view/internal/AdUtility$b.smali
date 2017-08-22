.class Lcom/taiwanmobile/pt/adp/view/internal/AdUtility$b;
.super Landroid/os/AsyncTask;
.source "AdUtility.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taiwanmobile/pt/adp/view/internal/AdUtility;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/taiwanmobile/pt/adp/view/internal/AdUtility;

.field private b:Landroid/content/Context;

.field private c:Ljava/lang/String;

.field private d:Lcom/taiwanmobile/pt/adp/view/TWMAdSize;

.field private e:Lcom/taiwanmobile/pt/adp/view/TWMAdRequest;

.field private f:Lcom/taiwanmobile/pt/adp/view/internal/BaseVolleyListener;

.field private g:Z

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Z

.field private k:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/taiwanmobile/pt/adp/view/internal/AdUtility;Landroid/content/Context;Ljava/lang/String;Lcom/taiwanmobile/pt/adp/view/TWMAdSize;Lcom/taiwanmobile/pt/adp/view/TWMAdRequest;Lcom/taiwanmobile/pt/adp/view/internal/BaseVolleyListener;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 131
    iput-object p1, p0, Lcom/taiwanmobile/pt/adp/view/internal/AdUtility$b;->a:Lcom/taiwanmobile/pt/adp/view/internal/AdUtility;

    .line 127
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 145
    iput-object v0, p0, Lcom/taiwanmobile/pt/adp/view/internal/AdUtility$b;->b:Landroid/content/Context;

    .line 146
    iput-object v0, p0, Lcom/taiwanmobile/pt/adp/view/internal/AdUtility$b;->c:Ljava/lang/String;

    .line 147
    iput-object v0, p0, Lcom/taiwanmobile/pt/adp/view/internal/AdUtility$b;->d:Lcom/taiwanmobile/pt/adp/view/TWMAdSize;

    .line 148
    iput-object v0, p0, Lcom/taiwanmobile/pt/adp/view/internal/AdUtility$b;->e:Lcom/taiwanmobile/pt/adp/view/TWMAdRequest;

    .line 149
    iput-object v0, p0, Lcom/taiwanmobile/pt/adp/view/internal/AdUtility$b;->f:Lcom/taiwanmobile/pt/adp/view/internal/BaseVolleyListener;

    .line 150
    iput-boolean v1, p0, Lcom/taiwanmobile/pt/adp/view/internal/AdUtility$b;->g:Z

    .line 151
    iput-object v0, p0, Lcom/taiwanmobile/pt/adp/view/internal/AdUtility$b;->h:Ljava/lang/String;

    .line 153
    iput-object v0, p0, Lcom/taiwanmobile/pt/adp/view/internal/AdUtility$b;->i:Ljava/lang/String;

    .line 154
    iput-boolean v1, p0, Lcom/taiwanmobile/pt/adp/view/internal/AdUtility$b;->j:Z

    .line 155
    iput-object v0, p0, Lcom/taiwanmobile/pt/adp/view/internal/AdUtility$b;->k:Ljava/lang/String;

    .line 132
    iput-object p2, p0, Lcom/taiwanmobile/pt/adp/view/internal/AdUtility$b;->b:Landroid/content/Context;

    .line 133
    iput-object p3, p0, Lcom/taiwanmobile/pt/adp/view/internal/AdUtility$b;->c:Ljava/lang/String;

    .line 134
    iput-object p4, p0, Lcom/taiwanmobile/pt/adp/view/internal/AdUtility$b;->d:Lcom/taiwanmobile/pt/adp/view/TWMAdSize;

    .line 135
    iput-object p5, p0, Lcom/taiwanmobile/pt/adp/view/internal/AdUtility$b;->e:Lcom/taiwanmobile/pt/adp/view/TWMAdRequest;

    .line 136
    iput-object p6, p0, Lcom/taiwanmobile/pt/adp/view/internal/AdUtility$b;->f:Lcom/taiwanmobile/pt/adp/view/internal/BaseVolleyListener;

    .line 137
    iput-boolean p7, p0, Lcom/taiwanmobile/pt/adp/view/internal/AdUtility$b;->g:Z

    .line 138
    iput-object p8, p0, Lcom/taiwanmobile/pt/adp/view/internal/AdUtility$b;->h:Ljava/lang/String;

    .line 139
    iput-object p9, p0, Lcom/taiwanmobile/pt/adp/view/internal/AdUtility$b;->k:Ljava/lang/String;

    .line 141
    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 3

    .prologue
    .line 184
    const-string v0, "NewFireAdRequestTask"

    const-string v1, "doInBackground invoked!!"

    invoke-static {v0, v1}, Lcom/taiwanmobile/pt/util/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/internal/AdUtility$b;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/taiwanmobile/pt/util/Utility;->getAdId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/taiwanmobile/pt/adp/view/internal/AdUtility$b;->i:Ljava/lang/String;

    .line 187
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/internal/AdUtility$b;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/taiwanmobile/pt/util/Utility;->getIsLimitAdTrackingEnabled(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/taiwanmobile/pt/adp/view/internal/AdUtility$b;->j:Z

    .line 189
    iget-boolean v0, p0, Lcom/taiwanmobile/pt/adp/view/internal/AdUtility$b;->g:Z

    if-eqz v0, :cond_2

    .line 190
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/internal/AdUtility$b;->i:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v0, ""

    iget-object v1, p0, Lcom/taiwanmobile/pt/adp/view/internal/AdUtility$b;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 191
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 203
    :goto_0
    return-object v0

    .line 193
    :cond_0
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/internal/AdUtility$b;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/taiwanmobile/pt/adp/view/internal/AdUtility;->a(Landroid/content/Context;)Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    move-result-object v0

    .line 194
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->getId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v1, ""

    invoke-virtual {v0}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 195
    invoke-virtual {v0}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->getId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/taiwanmobile/pt/adp/view/internal/AdUtility$b;->i:Ljava/lang/String;

    .line 196
    invoke-virtual {v0}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->isLimitAdTrackingEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/taiwanmobile/pt/adp/view/internal/AdUtility$b;->j:Z

    .line 197
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/internal/AdUtility$b;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/taiwanmobile/pt/adp/view/internal/AdUtility$b;->i:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/taiwanmobile/pt/util/Utility;->putAdId(Landroid/content/Context;Ljava/lang/String;)V

    .line 198
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/internal/AdUtility$b;->b:Landroid/content/Context;

    iget-boolean v1, p0, Lcom/taiwanmobile/pt/adp/view/internal/AdUtility$b;->j:Z

    invoke-static {v0, v1}, Lcom/taiwanmobile/pt/util/Utility;->putIsLimitAdTrackingEnabled(Landroid/content/Context;Z)V

    .line 200
    :cond_1
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0

    .line 203
    :cond_2
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0
.end method

.method protected a(Ljava/lang/Boolean;)V
    .locals 10

    .prologue
    .line 159
    const-string v0, "NewFireAdRequestTask"

    const-string v1, "onPostExecute invoked!!"

    invoke-static {v0, v1}, Lcom/taiwanmobile/pt/util/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 162
    const-string v0, "NewFireAdRequestTask"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, ">>>>> result as "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/taiwanmobile/pt/util/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    const-string v0, "NewFireAdRequestTask"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, ">>>>> adid is : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/taiwanmobile/pt/adp/view/internal/AdUtility$b;->i:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/taiwanmobile/pt/util/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    const-string v0, "NewFireAdRequestTask"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, ">>>>> isLimitAdTrackingEnabled ? "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/taiwanmobile/pt/adp/view/internal/AdUtility$b;->j:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/taiwanmobile/pt/util/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 167
    new-instance v0, Lcom/taiwanmobile/pt/adp/view/internal/AdUtility$c;

    iget-object v1, p0, Lcom/taiwanmobile/pt/adp/view/internal/AdUtility$b;->a:Lcom/taiwanmobile/pt/adp/view/internal/AdUtility;

    iget-object v2, p0, Lcom/taiwanmobile/pt/adp/view/internal/AdUtility$b;->b:Landroid/content/Context;

    invoke-direct {v0, v1, v2}, Lcom/taiwanmobile/pt/adp/view/internal/AdUtility$c;-><init>(Lcom/taiwanmobile/pt/adp/view/internal/AdUtility;Landroid/content/Context;)V

    .line 168
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/taiwanmobile/pt/adp/view/internal/AdUtility$c;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 172
    :cond_0
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/internal/AdUtility$b;->i:Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string v0, ""

    iget-object v1, p0, Lcom/taiwanmobile/pt/adp/view/internal/AdUtility$b;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 173
    :cond_1
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/internal/AdUtility$b;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/taiwanmobile/pt/adp/view/internal/AdUtility$b;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/taiwanmobile/pt/adp/view/internal/AdUtility$b;->d:Lcom/taiwanmobile/pt/adp/view/TWMAdSize;

    .line 174
    iget-object v3, p0, Lcom/taiwanmobile/pt/adp/view/internal/AdUtility$b;->e:Lcom/taiwanmobile/pt/adp/view/TWMAdRequest;

    iget-object v4, p0, Lcom/taiwanmobile/pt/adp/view/internal/AdUtility$b;->f:Lcom/taiwanmobile/pt/adp/view/internal/BaseVolleyListener;

    iget-boolean v5, p0, Lcom/taiwanmobile/pt/adp/view/internal/AdUtility$b;->g:Z

    iget-object v6, p0, Lcom/taiwanmobile/pt/adp/view/internal/AdUtility$b;->h:Ljava/lang/String;

    iget-object v7, p0, Lcom/taiwanmobile/pt/adp/view/internal/AdUtility$b;->k:Ljava/lang/String;

    .line 173
    invoke-static/range {v0 .. v7}, Lcom/taiwanmobile/pt/adp/view/internal/AdUtility;->fireAdRequest(Landroid/content/Context;Ljava/lang/String;Lcom/taiwanmobile/pt/adp/view/TWMAdSize;Lcom/taiwanmobile/pt/adp/view/TWMAdRequest;Lcom/taiwanmobile/pt/adp/view/internal/BaseVolleyListener;ZLjava/lang/String;Ljava/lang/String;)V

    .line 180
    :goto_0
    return-void

    .line 176
    :cond_2
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/internal/AdUtility$b;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/taiwanmobile/pt/adp/view/internal/AdUtility$b;->c:Ljava/lang/String;

    .line 177
    iget-object v2, p0, Lcom/taiwanmobile/pt/adp/view/internal/AdUtility$b;->d:Lcom/taiwanmobile/pt/adp/view/TWMAdSize;

    iget-object v3, p0, Lcom/taiwanmobile/pt/adp/view/internal/AdUtility$b;->e:Lcom/taiwanmobile/pt/adp/view/TWMAdRequest;

    iget-object v4, p0, Lcom/taiwanmobile/pt/adp/view/internal/AdUtility$b;->f:Lcom/taiwanmobile/pt/adp/view/internal/BaseVolleyListener;

    iget-boolean v5, p0, Lcom/taiwanmobile/pt/adp/view/internal/AdUtility$b;->g:Z

    .line 178
    iget-object v6, p0, Lcom/taiwanmobile/pt/adp/view/internal/AdUtility$b;->h:Ljava/lang/String;

    iget-object v7, p0, Lcom/taiwanmobile/pt/adp/view/internal/AdUtility$b;->i:Ljava/lang/String;

    iget-boolean v8, p0, Lcom/taiwanmobile/pt/adp/view/internal/AdUtility$b;->j:Z

    iget-object v9, p0, Lcom/taiwanmobile/pt/adp/view/internal/AdUtility$b;->k:Ljava/lang/String;

    .line 176
    invoke-static/range {v0 .. v9}, Lcom/taiwanmobile/pt/adp/view/internal/AdUtility;->processAdRequest(Landroid/content/Context;Ljava/lang/String;Lcom/taiwanmobile/pt/adp/view/TWMAdSize;Lcom/taiwanmobile/pt/adp/view/TWMAdRequest;Lcom/taiwanmobile/pt/adp/view/internal/BaseVolleyListener;ZLjava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    goto :goto_0
.end method

.method protected varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/taiwanmobile/pt/adp/view/internal/AdUtility$b;->a([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/taiwanmobile/pt/adp/view/internal/AdUtility$b;->a(Ljava/lang/Boolean;)V

    return-void
.end method
