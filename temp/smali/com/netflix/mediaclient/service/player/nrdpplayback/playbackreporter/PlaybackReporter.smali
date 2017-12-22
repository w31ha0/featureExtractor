.class public Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;
.super Ljava/lang/Object;
.source "PlaybackReporter.java"


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private _dlreportMinimumData:I

.field private _dlreportMinimumGap:I

.field private hostMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mABitrateKbps:I

.field private mABufferBytes:I

.field private mADlid:Ljava/lang/String;

.field private mAIP:Ljava/lang/String;

.field private mAInitStreamingBitrateKbps:I

.field private mAInitStreamingDlid:Ljava/lang/String;

.field private mAStreamTS:J

.field private mAStreamingBitrateKbps:I

.field private mAStreamingDlid:Ljava/lang/String;

.field private mAToAppend:I

.field private mA_Active:I

.field private mAbortedReason:Ljava/lang/String;

.field private mAbortedTime:J

.field private mActualBandwidthKbps:I

.field private mActualBufferMS:J

.field private mAseCodes:Lorg/json/JSONObject;

.field private mAudioRenderingSequence:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/RenderingStreamInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mAudioStats:Ljava/lang/String;

.field private mAudioTrackSwitchStart:J

.field private mAudioTrackSwitchStarted:Z

.field private mAuthTimeMs:J

.field private mBrokenDlid:Ljava/lang/String;

.field private mBufferingStartTime:J

.field private mCarrier:Ljava/lang/String;

.field private mCdnId:I

.field private mCdnInfo:Ljava/lang/String;

.field private mCdnInfoA:Lorg/json/JSONArray;

.field private mCdnName:Ljava/lang/String;

.field private mCdnThroughput:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/ThroughputMonitor;",
            ">;"
        }
    .end annotation
.end field

.field private mCdnUsageMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private mClientReqId:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mCountryCode:Ljava/lang/String;

.field private mCurrentBw:I

.field mCurrentRenderedAudio:I

.field mCurrentRenderedVideo:I

.field private mDeviceSpecificCode:Ljava/lang/String;

.field private mDeviceSpecificString:Ljava/lang/String;

.field private mDisableVP9Decoder:Z

.field private mDisplayUsageMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mDlReportErrorOnly:Z

.field private mDownloadableIdUsageMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mDownloadables:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/Downloadable;",
            ">;"
        }
    .end annotation
.end field

.field private mDuration:J

.field private mEndPlayLogged:Z

.field private mErrReportingCounter:I

.field private mErrorCode:Ljava/lang/String;

.field private mErrorMsg:Ljava/lang/String;

.field private mErrorString:Ljava/lang/String;

.field private mFastPlay:Z

.field private mFileToken:Ljava/lang/String;

.field private mGroupName:Ljava/lang/String;

.field private mHeaderCacheHit:Z

.field private mHttpAttemptMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mHttpErrTime:J

.field private mHttpError:I

.field private mHttpsStreaming:Z

.field private mIfName:Ljava/lang/String;

.field private mIgnoreStreamSwitch:Z

.field private mInitialBandwidthKbps:I

.field private mInitialBufferMS:J

.field private mLastDlReportTime:J

.field private mLastNetworkError:Ljava/lang/String;

.field private mLastNetworkErrorCode:I

.field private mLastNetworkErrorTime:J

.field private mLastReportTime:J

.field private mLastServerSelTime:J

.field private mLastServerSelection:Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/ServerSelection;

.field private mLicenseTime:J

.field private mLinkConnected:Ljava/lang/String;

.field private mLocationMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/Location;",
            ">;"
        }
    .end annotation
.end field

.field private mLocationSelectionMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/ServerSelection;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private mLogDlReports:Z

.field private mLogDlReqErrors:Z

.field private mLogDlReqs:Z

.field private mLogNetworkMonitorState:Z

.field private mLogReports:Z

.field private mLoggingModule:Lcom/netflix/mediaclient/servicemgr/LogblobLogging;

.field private mManifestAge:J

.field private mManifestCacheHit:Z

.field private mManifestData:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/StreamData;",
            ">;>;"
        }
    .end annotation
.end field

.field private mManifestSource:Ljava/lang/String;

.field private mManifestTracksLength:I

.field private mMinConnectTime:J

.field private mMovieId:J

.field private mMovieStart:J

.field private mMovieStop:J

.field private mMovieTotal:J

.field private mNccpErr:I

.field private mNetworkCode:Ljava/lang/String;

.field private mNetworkCount:I

.field private mNetworkSpec:Ljava/lang/String;

.field private mNetworkTime:J

.field private mNetworkType:Ljava/lang/String;

.field private mNetworkUsageMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/NetworkData;",
            ">;"
        }
    .end annotation
.end field

.field private mNewAudioTrackInfo:Lorg/json/JSONObject;

.field private mNrdpErr:Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/NrdpErr;

.field private mNrdpPlayerReady:Z

.field private mOldAudioTrackInfo:Lorg/json/JSONObject;

.field private mPipelineEnabled:Z

.field private mPlayDelay:J

.field private mPlaybackAborted:Z

.field private mPlaybackAdditionalInfo:Ljava/lang/String;

.field private mPlaybackContextId:Ljava/lang/String;

.field private mPlaybackError:Ljava/lang/String;

.field private mPlaybackSkipping:Z

.field private mPlaybackStarted:Z

.field private mPlaybackState:I

.field private mPlaybackStoppedReason:Ljava/lang/String;

.field private mPlaybackTS:J

.field private mPlayerControlPlayEvents:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mPredictedFutureRebuffers:I

.field private mPrimaryCdnId:I

.field private mSdkPlayDelay:J

.field private mServerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/Server;",
            ">;"
        }
    .end annotation
.end field

.field private mServerSelectionList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/ServerSelection;",
            ">;"
        }
    .end annotation
.end field

.field private mServerSelectionMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/ServerSelection;",
            ">;>;"
        }
    .end annotation
.end field

.field private mStartPlayEvents:Lorg/json/JSONObject;

.field private mStartPlayLogged:Z

.field private mStreamingConfig:Lorg/json/JSONObject;

.field private mStreamingFailureCode:I

.field private mSubtitleQoeProvider:Lcom/netflix/mediaclient/service/player/subtitles/SubtitleQoeProvider;

.field private mThroughputMonitor:Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/ThroughputMonitor;

.field private mTrackingId:J

.field private mTracks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mTransportDataMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/TransportData;",
            ">;"
        }
    .end annotation
.end field

.field private mUiLabel:Ljava/lang/String;

.field private mUsedLDL:Z

.field private mUserPlay:J

.field private mUserStoppedReason:Ljava/lang/String;

.field private mUserStoppedTime:J

.field private mVBitrateKbps:I

.field private mVBufferBytes:I

.field private mVDlid:Ljava/lang/String;

.field private mVIP:Ljava/lang/String;

.field private mVInitStreamingBitrateKbps:I

.field private mVInitStreamingDlid:Ljava/lang/String;

.field private mVStreamTS:J

.field private mVStreamingBitrateKbps:I

.field private mVStreamingDlid:Ljava/lang/String;

.field private mVToAppend:I

.field private mV_Active:I

.field private mVideoDecoderName:Ljava/lang/String;

.field private mVideoPlaybackQualStat:Lcom/netflix/mediaclient/media/JPlayer/VideoPlaybackQualStat;

.field private mVideoRenderingSequence:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/RenderingStreamInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mVideoStats:Ljava/lang/String;

.field private mXid:Ljava/lang/String;

.field private manifestTracks:Lorg/json/JSONArray;

.field private signalStrength:I

.field private urlMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/UrlData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 62
    const-string/jumbo v0, "PBR"

    sput-object v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/LogblobLogging;Lcom/netflix/mediaclient/service/player/subtitles/SubtitleQoeProvider;Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v4, 0x3

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v1, -0x1

    .line 221
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput v3, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mNetworkCount:I

    .line 83
    iput v3, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->signalStrength:I

    .line 84
    const-string/jumbo v0, "unknown"

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mLinkConnected:Ljava/lang/String;

    .line 85
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mIfName:Ljava/lang/String;

    .line 89
    const-string/jumbo v0, "NFErr_OK"

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mPlaybackError:Ljava/lang/String;

    .line 90
    const-string/jumbo v0, "NFErr_OK"

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mPlaybackStoppedReason:Ljava/lang/String;

    .line 92
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mLastNetworkError:Ljava/lang/String;

    .line 97
    iput v1, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mNccpErr:I

    .line 99
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mAbortedReason:Ljava/lang/String;

    .line 101
    iput v2, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mStreamingFailureCode:I

    .line 103
    iput-boolean v2, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mPipelineEnabled:Z

    .line 107
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mAudioStats:Ljava/lang/String;

    .line 108
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mVideoStats:Ljava/lang/String;

    .line 110
    const-string/jumbo v0, " "

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mPlaybackAdditionalInfo:Ljava/lang/String;

    .line 113
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mErrorMsg:Ljava/lang/String;

    .line 114
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mErrorCode:Ljava/lang/String;

    .line 115
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mErrorString:Ljava/lang/String;

    .line 126
    iput v1, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mVInitStreamingBitrateKbps:I

    .line 127
    iput v1, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mAInitStreamingBitrateKbps:I

    .line 135
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mVideoRenderingSequence:Ljava/util/ArrayList;

    .line 136
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mAudioRenderingSequence:Ljava/util/ArrayList;

    .line 145
    iput-boolean v2, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mLogReports:Z

    .line 155
    const/16 v0, 0xfa

    iput v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->_dlreportMinimumGap:I

    .line 156
    const/16 v0, 0x1f4

    iput v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->_dlreportMinimumData:I

    .line 168
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mStartPlayEvents:Lorg/json/JSONObject;

    .line 169
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mPlayerControlPlayEvents:Ljava/util/Map;

    .line 170
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mTracks:Ljava/util/Map;

    .line 172
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->manifestTracks:Lorg/json/JSONArray;

    .line 179
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mManifestData:Ljava/util/Map;

    .line 182
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->urlMap:Ljava/util/Map;

    .line 183
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->hostMap:Ljava/util/Map;

    .line 185
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mDisplayUsageMap:Ljava/util/Map;

    .line 186
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mNetworkUsageMap:Ljava/util/Map;

    .line 187
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mTransportDataMap:Ljava/util/Map;

    .line 189
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mDownloadableIdUsageMap:Ljava/util/Map;

    .line 190
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mCdnUsageMap:Ljava/util/Map;

    .line 192
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mHttpAttemptMap:Ljava/util/Map;

    .line 204
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mCdnThroughput:Ljava/util/Map;

    .line 211
    const-string/jumbo v0, "control"

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mGroupName:Ljava/lang/String;

    .line 222
    iput-object p2, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mLoggingModule:Lcom/netflix/mediaclient/servicemgr/LogblobLogging;

    .line 223
    iput-object p3, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mSubtitleQoeProvider:Lcom/netflix/mediaclient/service/player/subtitles/SubtitleQoeProvider;

    .line 224
    iput-object p4, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mXid:Ljava/lang/String;

    .line 225
    new-instance v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/ThroughputMonitor;

    const-string/jumbo v1, ""

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/ThroughputMonitor;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mThroughputMonitor:Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/ThroughputMonitor;

    .line 226
    invoke-static {}, Lcom/netflix/mediaclient/javabridge/ui/android/NativeLog;->getAseCodes()Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mAseCodes:Lorg/json/JSONObject;

    .line 227
    iput-object p1, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mContext:Landroid/content/Context;

    .line 230
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 231
    if-eqz v0, :cond_0

    .line 232
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimOperatorName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mCarrier:Ljava/lang/String;

    .line 233
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v0

    .line 235
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x4

    if-le v1, v2, :cond_0

    .line 236
    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mCountryCode:Ljava/lang/String;

    .line 237
    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mNetworkCode:Ljava/lang/String;

    .line 240
    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->updateNetworkInterfaceParams()V

    .line 241
    return-void
.end method

.method static synthetic access$000(Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;)J
    .locals 2

    .prologue
    .line 61
    iget-wide v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mUserPlay:J

    return-wide v0
.end method

.method static synthetic access$100(Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mXid:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    sget-object v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;)Lcom/netflix/mediaclient/servicemgr/LogblobLogging;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mLoggingModule:Lcom/netflix/mediaclient/servicemgr/LogblobLogging;

    return-object v0
.end method

.method static synthetic access$402(Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mVInitStreamingDlid:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$502(Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;I)I
    .locals 0

    .prologue
    .line 61
    iput p1, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mVInitStreamingBitrateKbps:I

    return p1
.end method

.method static synthetic access$602(Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;Z)Z
    .locals 0

    .prologue
    .line 61
    iput-boolean p1, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mIgnoreStreamSwitch:Z

    return p1
.end method

.method private addNetworkData(JJ)V
    .locals 5

    .prologue
    .line 1304
    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-gez v0, :cond_0

    .line 1305
    sget-object v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "addNetworkData bytes %d time %d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1308
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mNetworkUsageMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mNetworkType:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1309
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mNetworkUsageMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mNetworkType:Ljava/lang/String;

    new-instance v2, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/NetworkData;

    invoke-direct {v2}, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/NetworkData;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1312
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mNetworkUsageMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mNetworkType:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/NetworkData;

    .line 1314
    iget-object v1, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/NetworkData;->mUsage:Ljava/util/Map;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mNetworkSpec:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1315
    iget-object v1, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/NetworkData;->mUsage:Ljava/util/Map;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mNetworkSpec:Ljava/lang/String;

    new-instance v3, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/NetSpecData;

    invoke-direct {v3}, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/NetSpecData;-><init>()V

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1318
    :cond_2
    iget-object v0, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/NetworkData;->mUsage:Ljava/util/Map;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mNetworkSpec:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/NetSpecData;

    .line 1319
    iget-wide v2, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/NetSpecData;->mBytes:J

    add-long/2addr v2, p1

    iput-wide v2, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/NetSpecData;->mBytes:J

    .line 1320
    iget-wide v2, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/NetSpecData;->mTime:J

    add-long/2addr v2, p3

    iput-wide v2, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/NetSpecData;->mTime:J

    .line 1321
    return-void
.end method

.method private addTransactionName(Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter$TransactionType;Lorg/json/JSONObject;)V
    .locals 2

    .prologue
    .line 2102
    sget-object v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter$TransactionType;->Authorization:Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter$TransactionType;

    if-ne p1, v0, :cond_0

    .line 2103
    const-string/jumbo v0, "transactionname"

    const-string/jumbo v1, "authorization"

    invoke-virtual {p2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2106
    :goto_0
    return-void

    .line 2105
    :cond_0
    const-string/jumbo v0, "transactionname"

    const-string/jumbo v1, "license"

    invoke-virtual {p2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0
.end method

.method private aggregateTrace(Lorg/json/JSONObject;)V
    .locals 0

    .prologue
    .line 1386
    return-void
.end method

.method private bufferingComplete(Lorg/json/JSONObject;)V
    .locals 4

    .prologue
    .line 1547
    sget-object v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "bufferingComplete:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1548
    const-string/jumbo v0, "actualStartPts"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mPlaybackTS:J

    .line 1549
    const-string/jumbo v0, "predictedBufferingTime"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mInitialBufferMS:J

    .line 1550
    const-string/jumbo v0, "initialBW"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mInitialBandwidthKbps:I

    .line 1551
    const-string/jumbo v0, "actualBW"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mActualBandwidthKbps:I

    .line 1552
    invoke-static {}, Lcom/netflix/mediaclient/util/Time;->mono()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mBufferingStartTime:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mActualBufferMS:J

    .line 1553
    return-void
.end method

.method private bufferingStarted(J)V
    .locals 5

    .prologue
    .line 1525
    invoke-static {}, Lcom/netflix/mediaclient/util/Time;->mono()J

    move-result-wide v0

    .line 1526
    sget-object v2, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "bufferingStarted: setting this._bufferingStartTime to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1527
    invoke-direct {p0, v0, v1, p1, p2}, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->resetBufferingTimes(JJ)V

    .line 1528
    return-void
.end method

.method private bufferingStatus(Lorg/json/JSONObject;)V
    .locals 0

    .prologue
    .line 1559
    return-void
.end method

.method private cdnAddData(ILjava/lang/String;I)V
    .locals 3

    .prologue
    .line 1130
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mCdnUsageMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1131
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mCdnUsageMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1134
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mCdnUsageMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1135
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mCdnUsageMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1138
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mCdnUsageMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1139
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mCdnUsageMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    add-int/2addr v1, p3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1140
    return-void
.end method

.method private cleanupRenderingSequence(Ljava/util/ArrayList;IJ)I
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/RenderingStreamInfo;",
            ">;IJ)I"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1088
    move v1, v2

    .line 1089
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    if-ge v1, p2, :cond_0

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/RenderingStreamInfo;

    iget-wide v4, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/RenderingStreamInfo;->mMoffms:J

    const-wide/32 v6, 0xea60

    sub-long v6, p3, v6

    cmp-long v0, v4, v6

    if-gez v0, :cond_0

    .line 1090
    sget-object v3, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updatePlaybackPts: remove sequence entry: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/RenderingStreamInfo;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/RenderingStreamInfo;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1091
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1092
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 1094
    :cond_0
    return v1
.end method

.method private downloadRecord(Lorg/json/JSONObject;)V
    .locals 12

    .prologue
    const/16 v5, 0x190

    const-wide/16 v10, 0x0

    .line 1330
    invoke-static {p1}, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/HttpAttempt;->buildHttpAttempt(Lorg/json/JSONObject;)Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/HttpAttempt;

    move-result-object v1

    .line 1333
    iget-object v2, v1, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/HttpAttempt;->mUrl:Ljava/lang/String;

    .line 1334
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->urlMap:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/UrlData;

    .line 1336
    if-nez v0, :cond_1

    .line 1338
    sget-object v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "pbr: downloadRecord: unrecognized url: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    invoke-static {v0, v1, v3}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1382
    :cond_0
    :goto_0
    return-void

    .line 1344
    :cond_1
    iget-object v3, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/UrlData;->url:Ljava/lang/String;

    .line 1348
    iget-object v3, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mHttpAttemptMap:Ljava/util/Map;

    iget v4, v1, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/HttpAttempt;->mTcpId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1350
    iget v2, v1, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/HttpAttempt;->mHttpCode:I

    .line 1353
    iget v3, v1, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/HttpAttempt;->mErrorCode:I

    if-nez v3, :cond_2

    const/16 v3, 0x12c

    if-lt v2, v3, :cond_2

    if-ge v2, v5, :cond_2

    .line 1354
    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->urlMap:Ljava/util/Map;

    iget-object v1, v1, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/HttpAttempt;->mLocation:Ljava/lang/String;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1358
    :cond_2
    iget-object v3, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/UrlData;->type:Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/MediaType;

    sget-object v4, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/MediaType;->TEXT_STREAM:Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/MediaType;

    if-eq v3, v4, :cond_0

    .line 1363
    if-lt v2, v5, :cond_3

    .line 1364
    invoke-static {}, Lcom/netflix/mediaclient/util/Time;->mono()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mHttpErrTime:J

    .line 1367
    :cond_3
    iget v2, v1, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/HttpAttempt;->mBrecv:I

    if-lez v2, :cond_0

    .line 1368
    iget v8, v1, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/HttpAttempt;->mBrecv:I

    .line 1369
    iget-wide v4, v1, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/HttpAttempt;->mTresp:J

    .line 1370
    iget-wide v6, v1, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/HttpAttempt;->mTcomp:J

    .line 1371
    iget v1, v1, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/HttpAttempt;->mBrecv:I

    int-to-long v2, v1

    invoke-direct {p0, v2, v3, v10, v11}, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->addNetworkData(JJ)V

    .line 1373
    cmp-long v1, v4, v10

    if-lez v1, :cond_0

    cmp-long v1, v6, v10

    if-lez v1, :cond_0

    .line 1374
    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mThroughputMonitor:Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/ThroughputMonitor;

    int-to-long v2, v8

    invoke-virtual/range {v1 .. v7}, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/ThroughputMonitor;->add(JJJ)V

    .line 1375
    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mCdnThroughput:Ljava/util/Map;

    iget-wide v2, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/UrlData;->cdn_id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 1376
    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mCdnThroughput:Ljava/util/Map;

    iget-wide v2, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/UrlData;->cdn_id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    new-instance v3, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/ThroughputMonitor;

    iget-wide v10, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/UrlData;->cdn_id:J

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v3, v9}, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/ThroughputMonitor;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1378
    :cond_4
    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mCdnThroughput:Ljava/util/Map;

    iget-wide v2, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/UrlData;->cdn_id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/ThroughputMonitor;

    int-to-long v2, v8

    invoke-virtual/range {v1 .. v7}, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/ThroughputMonitor;->add(JJJ)V

    goto/16 :goto_0
.end method

.method private downloadableToJSONArray(Ljava/util/Map;)Lorg/json/JSONArray;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/Downloadable;",
            ">;)",
            "Lorg/json/JSONArray;"
        }
    .end annotation

    .prologue
    .line 1897
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 1898
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/Downloadable;

    .line 1900
    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/Downloadable;->toJson()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 1904
    :cond_0
    :try_start_0
    sget-object v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Downloadable JSONObject"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1905
    sget-object v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Downloadable JSONObject"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1910
    :goto_1
    sget-object v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Downloadables Map Final: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1911
    return-object v1

    .line 1906
    :catch_0
    move-exception v0

    .line 1907
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1
.end method

.method private findRenderingPosition(Ljava/util/ArrayList;J)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/RenderingStreamInfo;",
            ">;J)I"
        }
    .end annotation

    .prologue
    .line 1143
    const/4 v0, 0x0

    move v1, v0

    .line 1144
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/RenderingStreamInfo;

    iget-wide v2, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/RenderingStreamInfo;->mMoffms:J

    cmp-long v0, v2, p2

    if-gtz v0, :cond_0

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 1146
    :cond_0
    if-nez v1, :cond_1

    :goto_1
    return v1

    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_1
.end method

.method private generateDrmSessionNotAvailableStack()Lorg/json/JSONArray;
    .locals 4

    .prologue
    .line 2056
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 2057
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 2059
    :try_start_0
    sget-object v2, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter$TransactionType;->License:Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter$TransactionType;

    invoke-direct {p0, v2, v0}, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->addTransactionName(Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter$TransactionType;Lorg/json/JSONObject;)V

    .line 2060
    const-string/jumbo v2, "errorcode"

    const-string/jumbo v3, "NFErr_DRM_NO_SESSION"

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2061
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2065
    :goto_0
    return-object v1

    .line 2062
    :catch_0
    move-exception v0

    .line 2063
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method private generateTransactionErrStack(Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter$TransactionType;Lcom/netflix/mediaclient/android/app/Status;)Lorg/json/JSONArray;
    .locals 4

    .prologue
    .line 1979
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 1982
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 1983
    const-string/jumbo v2, "errorcode"

    const-string/jumbo v3, "NFErr_BR_TransactionFailed"

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1984
    invoke-direct {p0, p1, v0}, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->addTransactionName(Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter$TransactionType;Lorg/json/JSONObject;)V

    .line 1985
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 1987
    if-eqz p2, :cond_0

    .line 1988
    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->computeErrorGroup()Lcom/netflix/mediaclient/android/app/Status$ErrorGroup;

    move-result-object v0

    .line 1990
    if-nez v0, :cond_1

    .line 1991
    sget-object v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "generateTransactionErrStack, unable to find a valid group"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1992
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 1993
    const-string/jumbo v2, "errorcode"

    const-string/jumbo v3, "NFErr_Missing_Status"

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2052
    :cond_0
    :goto_0
    return-object v1

    .line 1997
    :cond_1
    sget-object v2, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter$2;->$SwitchMap$com$netflix$mediaclient$android$app$Status$ErrorGroup:[I

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/app/Status$ErrorGroup;->ordinal()I

    move-result v0

    aget v0, v2, v0

    packed-switch v0, :pswitch_data_0

    .line 2040
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 2041
    const-string/jumbo v2, "errorcode"

    const-string/jumbo v3, "NFErr_Default"

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2042
    const-string/jumbo v2, "errstack"

    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->getDebugMessageForServerLogs()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2043
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2049
    :catch_0
    move-exception v0

    .line 2050
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 1999
    :pswitch_0
    :try_start_1
    instance-of v0, p2, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/BladerunnerErrorStatus;

    if-eqz v0, :cond_0

    .line 2000
    check-cast p2, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/BladerunnerErrorStatus;

    .line 2001
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 2002
    const-string/jumbo v2, "errorcode"

    const-string/jumbo v3, "NFErr_BR_ErrorData"

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2003
    const-string/jumbo v2, "nccperr"

    invoke-virtual {p2}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/BladerunnerErrorStatus;->getNccpErrorCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2004
    const-string/jumbo v2, "brerror"

    invoke-virtual {p2}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/BladerunnerErrorStatus;->getBladerunnerErrorCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2005
    const-string/jumbo v2, "actionid"

    invoke-virtual {p2}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/BladerunnerErrorStatus;->getActionId()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 2006
    const-string/jumbo v2, "errdisplaymsg"

    invoke-virtual {p2}, Lcom/netflix/mediaclient/service/player/bladerunnerclient/volley/BladerunnerErrorStatus;->getUserDisplayErrorMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2007
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 2012
    :pswitch_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 2013
    const-string/jumbo v2, "errorcode"

    const-string/jumbo v3, "NFErr_NetworkError"

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2014
    const-string/jumbo v2, "errstack"

    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->getDebugMessageForServerLogs()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2015
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto/16 :goto_0

    .line 2019
    :pswitch_2
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 2020
    const-string/jumbo v2, "errorcode"

    const-string/jumbo v3, "NFErr_HttpError"

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2021
    const-string/jumbo v2, "errstack"

    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->getDebugMessageForServerLogs()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2022
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto/16 :goto_0

    .line 2026
    :pswitch_3
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 2027
    const-string/jumbo v2, "errorcode"

    const-string/jumbo v3, "NFErr_DRMError"

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2028
    const-string/jumbo v2, "errstack"

    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->getDebugMessageForServerLogs()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2029
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto/16 :goto_0

    .line 2033
    :pswitch_4
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 2034
    const-string/jumbo v2, "errorcode"

    const-string/jumbo v3, "NFErr_MslError"

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2035
    const-string/jumbo v2, "errstack"

    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->getDebugMessageForServerLogs()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2036
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 1997
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private getAudioBufferLevel()J
    .locals 6

    .prologue
    const-wide/16 v0, 0x0

    .line 1734
    iget-wide v2, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mAStreamTS:J

    cmp-long v2, v2, v0

    if-nez v2, :cond_1

    const-wide/16 v0, -0x1

    :cond_0
    :goto_0
    return-wide v0

    :cond_1
    iget-wide v2, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mAStreamTS:J

    iget-wide v4, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mPlaybackTS:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    iget-wide v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mAStreamTS:J

    iget-wide v2, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mPlaybackTS:J

    sub-long/2addr v0, v2

    goto :goto_0
.end method

.method private getLastSelectedServerId()I
    .locals 1

    .prologue
    .line 1489
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mLastServerSelection:Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/ServerSelection;

    if-eqz v0, :cond_0

    .line 1490
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mLastServerSelection:Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/ServerSelection;

    iget v0, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/ServerSelection;->mServer:I

    .line 1492
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mCdnId:I

    goto :goto_0
.end method

.method private getVideoBufferLevel()J
    .locals 6

    .prologue
    const-wide/16 v0, 0x0

    .line 1738
    iget-wide v2, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mVStreamTS:J

    cmp-long v2, v2, v0

    if-nez v2, :cond_1

    const-wide/16 v0, -0x1

    :cond_0
    :goto_0
    return-wide v0

    :cond_1
    iget-wide v2, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mVStreamTS:J

    iget-wide v4, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mPlaybackTS:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    iget-wide v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mVStreamTS:J

    iget-wide v2, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mPlaybackTS:J

    sub-long/2addr v0, v2

    goto :goto_0
.end method

.method private logEndPlay()V
    .locals 47

    .prologue
    .line 702
    const-string/jumbo v23, ""

    .line 703
    const/4 v2, 0x0

    .line 705
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mPlaybackError:Ljava/lang/String;

    const-string/jumbo v4, "NFErr_OK"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 706
    const-string/jumbo v22, "error"

    .line 707
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mErrorMsg:Ljava/lang/String;

    move-object/from16 v23, v0

    .line 708
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mNrdpErr:Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/NrdpErr;

    iget-object v2, v2, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/NrdpErr;->errorCode:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mErrorCode:Ljava/lang/String;

    .line 709
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mNrdpErr:Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/NrdpErr;

    iget-object v2, v2, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/NrdpErr;->errorString:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mErrorString:Ljava/lang/String;

    .line 710
    const/4 v2, 0x1

    move v5, v2

    .line 716
    :goto_0
    move-object/from16 v0, p0

    iget v2, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mNetworkCount:I

    if-lez v2, :cond_0

    .line 717
    sget-object v2, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "pbr: %d open TCP connections at endplay"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget v7, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mNetworkCount:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v4, v6

    invoke-static {v2, v3, v4}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 718
    const-wide/16 v2, 0x0

    invoke-static {}, Lcom/netflix/mediaclient/util/Time;->mono()J

    move-result-wide v6

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mNetworkTime:J

    sub-long/2addr v6, v8

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v6, v7}, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->addNetworkData(JJ)V

    .line 721
    :cond_0
    const-string/jumbo v21, ""

    .line 723
    new-instance v19, Lorg/json/JSONArray;

    invoke-direct/range {v19 .. v19}, Lorg/json/JSONArray;-><init>()V

    .line 724
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mCdnUsageMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 725
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 726
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 727
    new-instance v7, Lorg/json/JSONArray;

    invoke-direct {v7}, Lorg/json/JSONArray;-><init>()V

    .line 729
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 730
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mDownloadables:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v4, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 731
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mDownloadables:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v4, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/Downloadable;

    .line 732
    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9}, Lorg/json/JSONObject;-><init>()V

    .line 733
    const-string/jumbo v10, "tm"

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v9, v10, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 734
    const-string/jumbo v2, "bitrate"

    iget v10, v4, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/Downloadable;->bitrate:I

    invoke-virtual {v9, v2, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 735
    iget-object v2, v4, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/Downloadable;->type:Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/MediaType;

    sget-object v10, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/MediaType;->AUDIO_STREAM:Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/MediaType;

    if-ne v2, v10, :cond_3

    .line 736
    const-string/jumbo v2, "adlid"

    iget-object v4, v4, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/Downloadable;->dlid:Ljava/lang/String;

    invoke-virtual {v9, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 739
    :goto_3
    invoke-virtual {v7, v9}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_2

    .line 711
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mPlaybackStoppedReason:Ljava/lang/String;

    const-string/jumbo v4, "NFErr_EndOfStream"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 712
    const-string/jumbo v22, "ended"

    move v5, v2

    goto/16 :goto_0

    .line 714
    :cond_2
    const-string/jumbo v22, "stopped"

    move v5, v2

    goto/16 :goto_0

    .line 738
    :cond_3
    const-string/jumbo v2, "dlid"

    iget-object v4, v4, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/Downloadable;->dlid:Ljava/lang/String;

    invoke-virtual {v9, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_3

    .line 741
    :cond_4
    sget-object v4, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "pbr: logEndPlay: dlid "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v9, " not found in this._downloadables"

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 743
    :cond_5
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 744
    const-string/jumbo v4, "cdnid"

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 745
    const-string/jumbo v3, "dls"

    invoke-virtual {v2, v3, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 746
    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto/16 :goto_1

    .line 749
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mThroughputMonitor:Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/ThroughputMonitor;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/ThroughputMonitor;->getAvtp()J

    move-result-wide v38

    .line 750
    new-instance v45, Lorg/json/JSONArray;

    invoke-direct/range {v45 .. v45}, Lorg/json/JSONArray;-><init>()V

    .line 751
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mCdnThroughput:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/ThroughputMonitor;

    .line 752
    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/ThroughputMonitor;->getMap()Lorg/json/JSONObject;

    move-result-object v2

    move-object/from16 v0, v45

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_4

    .line 755
    :cond_7
    new-instance v20, Lorg/json/JSONArray;

    invoke-direct/range {v20 .. v20}, Lorg/json/JSONArray;-><init>()V

    .line 756
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mNetworkUsageMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 757
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 758
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/NetworkData;

    .line 759
    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/NetworkData;->getDataAsMap()Lorg/json/JSONArray;

    move-result-object v2

    .line 760
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 761
    const-string/jumbo v7, "nettype"

    invoke-virtual {v6, v7, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 762
    const-string/jumbo v3, "dist"

    invoke-virtual {v6, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 763
    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_5

    .line 766
    :cond_8
    const/16 v26, 0x0

    .line 767
    if-eqz v5, :cond_9

    sget-object v5, Lcom/netflix/mediaclient/servicemgr/LogArguments$LogLevel;->ERROR:Lcom/netflix/mediaclient/servicemgr/LogArguments$LogLevel;

    .line 768
    :goto_6
    invoke-static {}, Lcom/netflix/mediaclient/util/Time;->mono()J

    move-result-wide v2

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mUserPlay:J

    sub-long v6, v2, v6

    .line 769
    new-instance v3, Lcom/netflix/mediaclient/service/player/nrdpplayback/logblob/EndPlay;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mXid:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mMovieStop:J

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mMovieId:J

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mMovieTotal:J

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mMinConnectTime:J

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mCarrier:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mCountryCode:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mNetworkCode:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mErrorCode:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mErrorString:Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mDeviceSpecificCode:Ljava/lang/String;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mDeviceSpecificString:Ljava/lang/String;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mStreamingFailureCode:I

    move/from16 v29, v0

    const/16 v30, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mAudioStats:Ljava/lang/String;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mVideoPlaybackQualStat:Lcom/netflix/mediaclient/media/JPlayer/VideoPlaybackQualStat;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mDisableVP9Decoder:Z

    move/from16 v33, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mClientReqId:Ljava/lang/String;

    move-object/from16 v34, v0

    const-string/jumbo v35, ""

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mIfName:Ljava/lang/String;

    move-object/from16 v36, v0

    const-string/jumbo v37, ""

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mPipelineEnabled:Z

    move/from16 v40, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mGroupName:Ljava/lang/String;

    move-object/from16 v41, v0

    const-string/jumbo v42, ""

    const/16 v43, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mSubtitleQoeProvider:Lcom/netflix/mediaclient/service/player/subtitles/SubtitleQoeProvider;

    .line 774
    invoke-interface {v2}, Lcom/netflix/mediaclient/service/player/subtitles/SubtitleQoeProvider;->getSubtitlesQoeReport()Lorg/json/JSONArray;

    move-result-object v44

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mVideoDecoderName:Ljava/lang/String;

    move-object/from16 v46, v0

    invoke-direct/range {v3 .. v46}, Lcom/netflix/mediaclient/service/player/nrdpplayback/logblob/EndPlay;-><init>(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/LogArguments$LogLevel;JJJJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONArray;Lorg/json/JSONArray;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/media/JPlayer/VideoPlaybackQualStat;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JZLjava/lang/String;Ljava/lang/String;ZLorg/json/JSONArray;Lorg/json/JSONArray;Ljava/lang/String;)V

    .line 777
    sget-object v2, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "BLOB: endPlay"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Lcom/netflix/mediaclient/service/player/nrdpplayback/logblob/EndPlay;->toJson()Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 778
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mLoggingModule:Lcom/netflix/mediaclient/servicemgr/LogblobLogging;

    invoke-interface {v2, v3}, Lcom/netflix/mediaclient/servicemgr/LogblobLogging;->sendLogblob(Lcom/netflix/mediaclient/servicemgr/Logblob;)V

    .line 779
    return-void

    .line 767
    :cond_9
    sget-object v5, Lcom/netflix/mediaclient/servicemgr/LogArguments$LogLevel;->INFO:Lcom/netflix/mediaclient/servicemgr/LogArguments$LogLevel;

    goto/16 :goto_6
.end method

.method private logPlaybackAborted()V
    .locals 19

    .prologue
    .line 675
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mAbortedTime:J

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mUserPlay:J

    sub-long v3, v2, v4

    .line 677
    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->serverEnd(JIJ)V

    .line 681
    new-instance v6, Lcom/netflix/mediaclient/service/player/nrdpplayback/logblob/PlaybackAborted;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mXid:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mMovieStop:J

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mMovieId:J

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mStartPlayLogged:Z

    if-nez v2, :cond_1

    const/4 v14, 0x1

    :goto_0
    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mAbortedTime:J

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mPlayDelay:J

    move-wide/from16 v16, v0

    sub-long v15, v8, v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mGroupName:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mAbortedReason:Ljava/lang/String;

    move-object/from16 v18, v0

    move-wide v8, v3

    invoke-direct/range {v6 .. v18}, Lcom/netflix/mediaclient/service/player/nrdpplayback/logblob/PlaybackAborted;-><init>(Ljava/lang/String;JJJZJLjava/lang/String;Ljava/lang/String;)V

    .line 683
    sget-object v2, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "BLOB: playbackAborted"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v6}, Lcom/netflix/mediaclient/service/player/nrdpplayback/logblob/PlaybackAborted;->toJson()Lorg/json/JSONObject;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 684
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mLoggingModule:Lcom/netflix/mediaclient/servicemgr/LogblobLogging;

    invoke-interface {v2, v6}, Lcom/netflix/mediaclient/servicemgr/LogblobLogging;->sendLogblob(Lcom/netflix/mediaclient/servicemgr/Logblob;)V

    .line 687
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mStartPlayEvents:Lorg/json/JSONObject;

    invoke-virtual {v2}, Lorg/json/JSONObject;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 688
    new-instance v6, Lcom/netflix/mediaclient/service/player/nrdpplayback/logblob/StartPlayEvents;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mXid:Ljava/lang/String;

    const-string/jumbo v10, "start"

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mGroupName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mStartPlayEvents:Lorg/json/JSONObject;

    move-wide v8, v3

    invoke-direct/range {v6 .. v12}, Lcom/netflix/mediaclient/service/player/nrdpplayback/logblob/StartPlayEvents;-><init>(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 691
    sget-object v2, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "BLOB: StartPlayEvents"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v6}, Lcom/netflix/mediaclient/service/player/nrdpplayback/logblob/StartPlayEvents;->toJson()Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 692
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mLoggingModule:Lcom/netflix/mediaclient/servicemgr/LogblobLogging;

    invoke-interface {v2, v6}, Lcom/netflix/mediaclient/servicemgr/LogblobLogging;->sendLogblob(Lcom/netflix/mediaclient/servicemgr/Logblob;)V

    .line 694
    :cond_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mStartPlayEvents:Lorg/json/JSONObject;

    .line 695
    return-void

    .line 681
    :cond_1
    const/4 v14, 0x0

    goto/16 :goto_0
.end method

.method private logStartResumePlay(J)V
    .locals 83

    .prologue
    .line 551
    sget-object v2, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "nrdp logStartResumePlay called"

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 555
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mStartPlayLogged:Z

    if-nez v2, :cond_4

    .line 556
    const/4 v2, 0x0

    .line 558
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mPlaybackError:Ljava/lang/String;

    const-string/jumbo v4, "NFErr_OK"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 559
    const/4 v2, 0x1

    .line 560
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mNrdpErr:Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/NrdpErr;

    iget-object v3, v3, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/NrdpErr;->errorCode:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mErrorCode:Ljava/lang/String;

    .line 561
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mNrdpErr:Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/NrdpErr;

    iget-object v3, v3, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/NrdpErr;->errorString:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mErrorString:Ljava/lang/String;

    move v9, v2

    .line 566
    :goto_0
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mUserPlay:J

    sub-long v4, p1, v2

    .line 567
    invoke-static {}, Lcom/netflix/mediaclient/util/Time;->mono()J

    move-result-wide v2

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mPlayDelay:J

    sub-long v46, v2, v6

    .line 568
    invoke-static {}, Lcom/netflix/mediaclient/util/Time;->mono()J

    move-result-wide v2

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mSdkPlayDelay:J

    sub-long v48, v2, v6

    .line 569
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mSdkPlayDelay:J

    sub-long v50, p1, v2

    .line 572
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mStartPlayEvents:Lorg/json/JSONObject;

    invoke-virtual {v2}, Lorg/json/JSONObject;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 573
    new-instance v2, Lcom/netflix/mediaclient/service/player/nrdpplayback/logblob/StartPlayEvents;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mXid:Ljava/lang/String;

    const-string/jumbo v6, "start"

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mGroupName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mStartPlayEvents:Lorg/json/JSONObject;

    invoke-direct/range {v2 .. v8}, Lcom/netflix/mediaclient/service/player/nrdpplayback/logblob/StartPlayEvents;-><init>(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 576
    sget-object v3, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "BLOB: StartPlayEvents"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/player/nrdpplayback/logblob/StartPlayEvents;->toJson()Lorg/json/JSONObject;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 577
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mLoggingModule:Lcom/netflix/mediaclient/servicemgr/LogblobLogging;

    invoke-interface {v3, v2}, Lcom/netflix/mediaclient/servicemgr/LogblobLogging;->sendLogblob(Lcom/netflix/mediaclient/servicemgr/Logblob;)V

    .line 580
    :cond_0
    if-eqz v9, :cond_3

    sget-object v9, Lcom/netflix/mediaclient/servicemgr/LogArguments$LogLevel;->ERROR:Lcom/netflix/mediaclient/servicemgr/LogArguments$LogLevel;

    .line 582
    :goto_1
    new-instance v7, Lcom/netflix/mediaclient/service/player/nrdpplayback/logblob/StartPlay;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mXid:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mMovieId:J

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mTrackingId:J

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mMovieStart:J

    move-wide/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mVInitStreamingDlid:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mAInitStreamingDlid:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mBrokenDlid:Ljava/lang/String;

    move-object/from16 v20, v0

    const-string/jumbo v21, ""

    move-object/from16 v0, p0

    iget v2, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mVInitStreamingBitrateKbps:I

    int-to-long v0, v2

    move-wide/from16 v22, v0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mAInitStreamingBitrateKbps:I

    int-to-long v0, v2

    move-wide/from16 v24, v0

    .line 586
    invoke-direct/range {p0 .. p0}, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->getVideoBufferLevel()J

    move-result-wide v26

    move-object/from16 v0, p0

    iget v2, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mVBufferBytes:I

    int-to-long v0, v2

    move-wide/from16 v28, v0

    .line 587
    invoke-direct/range {p0 .. p0}, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->getAudioBufferLevel()J

    move-result-wide v30

    move-object/from16 v0, p0

    iget v2, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mABufferBytes:I

    int-to-long v0, v2

    move-wide/from16 v32, v0

    const-wide/16 v34, 0x0

    const-wide/16 v36, 0x0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mInitialBandwidthKbps:I

    int-to-long v0, v2

    move-wide/from16 v38, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mInitialBufferMS:J

    move-wide/from16 v40, v0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mActualBandwidthKbps:I

    int-to-long v0, v2

    move-wide/from16 v42, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mActualBufferMS:J

    move-wide/from16 v44, v0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mCdnId:I

    int-to-long v0, v2

    move-wide/from16 v52, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mCdnName:Ljava/lang/String;

    move-object/from16 v54, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mNccpErr:I

    move/from16 v55, v0

    const/16 v56, 0x0

    const/16 v57, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mGroupName:Ljava/lang/String;

    move-object/from16 v58, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mNetworkType:Ljava/lang/String;

    move-object/from16 v59, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mCarrier:Ljava/lang/String;

    move-object/from16 v60, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mCountryCode:Ljava/lang/String;

    move-object/from16 v61, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mNetworkCode:Ljava/lang/String;

    move-object/from16 v62, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mNetworkSpec:Ljava/lang/String;

    move-object/from16 v63, v0

    const-string/jumbo v64, ""

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mDownloadables:Ljava/util/Map;

    .line 602
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->downloadableToJSONArray(Ljava/util/Map;)Lorg/json/JSONArray;

    move-result-object v65

    const-string/jumbo v66, ""

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mFastPlay:Z

    move/from16 v67, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mManifestCacheHit:Z

    move/from16 v68, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mManifestAge:J

    move-wide/from16 v69, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mPipelineEnabled:Z

    move/from16 v71, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mErrorMsg:Ljava/lang/String;

    move-object/from16 v72, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mErrorCode:Ljava/lang/String;

    move-object/from16 v73, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mErrorString:Ljava/lang/String;

    move-object/from16 v74, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mDeviceSpecificCode:Ljava/lang/String;

    move-object/from16 v75, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mDeviceSpecificString:Ljava/lang/String;

    move-object/from16 v76, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mFileToken:Ljava/lang/String;

    move-object/from16 v77, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mPlaybackContextId:Ljava/lang/String;

    move-object/from16 v78, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mManifestSource:Ljava/lang/String;

    move-object/from16 v79, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mStartPlayEvents:Lorg/json/JSONObject;

    move-object/from16 v80, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mVideoDecoderName:Ljava/lang/String;

    move-object/from16 v81, v0

    move-wide v14, v4

    invoke-direct/range {v7 .. v81}, Lcom/netflix/mediaclient/service/player/nrdpplayback/logblob/StartPlay;-><init>(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/LogArguments$LogLevel;JJJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJJJJJJJJJJJJJJJLjava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONArray;Ljava/lang/String;ZZJZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 619
    sget-object v2, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "downloadables:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mDownloadables:Ljava/util/Map;

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->downloadableToJSONArray(Ljava/util/Map;)Lorg/json/JSONArray;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 620
    sget-object v2, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "BLOB: StartPlay"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v7}, Lcom/netflix/mediaclient/service/player/nrdpplayback/logblob/StartPlay;->toJson()Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 621
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mLoggingModule:Lcom/netflix/mediaclient/servicemgr/LogblobLogging;

    invoke-interface {v2, v7}, Lcom/netflix/mediaclient/servicemgr/LogblobLogging;->sendLogblob(Lcom/netflix/mediaclient/servicemgr/Logblob;)V

    .line 661
    :cond_1
    :goto_2
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mStartPlayEvents:Lorg/json/JSONObject;

    .line 663
    const-string/jumbo v2, "NFErr_OK"

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mPlaybackStoppedReason:Ljava/lang/String;

    .line 664
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mInitialBandwidthKbps:I

    .line 665
    const-wide/16 v2, 0x0

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mInitialBufferMS:J

    .line 666
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mActualBandwidthKbps:I

    .line 667
    const-wide/16 v2, 0x0

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mActualBufferMS:J

    .line 668
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mPlaybackSkipping:Z

    .line 669
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mIgnoreStreamSwitch:Z

    .line 670
    const-string/jumbo v2, ""

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mLastNetworkError:Ljava/lang/String;

    .line 671
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mLastNetworkErrorCode:I

    .line 672
    return-void

    .line 563
    :cond_2
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mStartPlayLogged:Z

    move v9, v2

    goto/16 :goto_0

    .line 580
    :cond_3
    sget-object v9, Lcom/netflix/mediaclient/servicemgr/LogArguments$LogLevel;->INFO:Lcom/netflix/mediaclient/servicemgr/LogArguments$LogLevel;

    goto/16 :goto_1

    .line 623
    :cond_4
    invoke-static {}, Lcom/netflix/mediaclient/util/Time;->mono()J

    move-result-wide v2

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mUserPlay:J

    sub-long v8, v2, v4

    .line 624
    invoke-static {}, Lcom/netflix/mediaclient/util/Time;->mono()J

    move-result-wide v2

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mPlayDelay:J

    sub-long v36, v2, v4

    .line 625
    invoke-static {}, Lcom/netflix/mediaclient/util/Time;->mono()J

    move-result-wide v2

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mSdkPlayDelay:J

    sub-long v38, v2, v4

    .line 626
    invoke-static {}, Lcom/netflix/mediaclient/util/Time;->mono()J

    move-result-wide v2

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mSdkPlayDelay:J

    sub-long v40, v2, v4

    .line 627
    new-instance v3, Lcom/netflix/mediaclient/service/player/nrdpplayback/logblob/ResumePlay;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mXid:Ljava/lang/String;

    sget-object v5, Lcom/netflix/mediaclient/servicemgr/LogArguments$LogLevel;->INFO:Lcom/netflix/mediaclient/servicemgr/LogArguments$LogLevel;

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mMovieId:J

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mPlaybackTS:J

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mVInitStreamingDlid:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mAInitStreamingDlid:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mBrokenDlid:Ljava/lang/String;

    const-string/jumbo v15, ""

    move-object/from16 v0, p0

    iget v2, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mVInitStreamingBitrateKbps:I

    int-to-long v0, v2

    move-wide/from16 v16, v0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mAInitStreamingBitrateKbps:I

    int-to-long v0, v2

    move-wide/from16 v18, v0

    .line 631
    invoke-direct/range {p0 .. p0}, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->getVideoBufferLevel()J

    move-result-wide v20

    move-object/from16 v0, p0

    iget v2, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mVBufferBytes:I

    int-to-long v0, v2

    move-wide/from16 v22, v0

    .line 632
    invoke-direct/range {p0 .. p0}, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->getAudioBufferLevel()J

    move-result-wide v24

    move-object/from16 v0, p0

    iget v2, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mABufferBytes:I

    int-to-long v0, v2

    move-wide/from16 v26, v0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mInitialBandwidthKbps:I

    int-to-long v0, v2

    move-wide/from16 v28, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mInitialBufferMS:J

    move-wide/from16 v30, v0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mActualBandwidthKbps:I

    int-to-long v0, v2

    move-wide/from16 v32, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mActualBufferMS:J

    move-wide/from16 v34, v0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mCdnId:I

    int-to-long v0, v2

    move-wide/from16 v42, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mCdnName:Ljava/lang/String;

    move-object/from16 v44, v0

    .line 637
    invoke-direct/range {p0 .. p0}, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->resumePlayReason()Ljava/lang/String;

    move-result-object v45

    const/16 v46, 0x0

    const/16 v47, 0x0

    const/16 v48, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mGroupName:Ljava/lang/String;

    move-object/from16 v49, v0

    const-string/jumbo v50, ""

    const-string/jumbo v51, ""

    const-string/jumbo v52, ""

    const-string/jumbo v53, ""

    const-string/jumbo v54, ""

    invoke-direct/range {v3 .. v54}, Lcom/netflix/mediaclient/service/player/nrdpplayback/logblob/ResumePlay;-><init>(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/LogArguments$LogLevel;JJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJJJJJJJJJJJJJLjava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 647
    sget-object v2, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "BLOB: resumeplay"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Lcom/netflix/mediaclient/service/player/nrdpplayback/logblob/ResumePlay;->toJson()Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 648
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mLoggingModule:Lcom/netflix/mediaclient/servicemgr/LogblobLogging;

    invoke-interface {v2, v3}, Lcom/netflix/mediaclient/servicemgr/LogblobLogging;->sendLogblob(Lcom/netflix/mediaclient/servicemgr/Logblob;)V

    .line 651
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mStartPlayEvents:Lorg/json/JSONObject;

    invoke-virtual {v2}, Lorg/json/JSONObject;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 652
    new-instance v6, Lcom/netflix/mediaclient/service/player/nrdpplayback/logblob/StartPlayEvents;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mXid:Ljava/lang/String;

    invoke-direct/range {p0 .. p0}, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->resumePlayReason()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mGroupName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mStartPlayEvents:Lorg/json/JSONObject;

    invoke-direct/range {v6 .. v12}, Lcom/netflix/mediaclient/service/player/nrdpplayback/logblob/StartPlayEvents;-><init>(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 655
    sget-object v2, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "BLOB: StartPlayEvents"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v6}, Lcom/netflix/mediaclient/service/player/nrdpplayback/logblob/StartPlayEvents;->toJson()Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 656
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mLoggingModule:Lcom/netflix/mediaclient/servicemgr/LogblobLogging;

    invoke-interface {v2, v6}, Lcom/netflix/mediaclient/servicemgr/LogblobLogging;->sendLogblob(Lcom/netflix/mediaclient/servicemgr/Logblob;)V

    goto/16 :goto_2
.end method

.method private networkErrorString(I)Ljava/lang/String;
    .locals 2

    .prologue
    .line 1597
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mAseCodes:Lorg/json/JSONObject;

    const-string/jumbo v1, "AS_DNS_ERROR"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mAseCodes:Lorg/json/JSONObject;

    const-string/jumbo v1, "AS_DNS_NO_DATA"

    .line 1598
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mAseCodes:Lorg/json/JSONObject;

    const-string/jumbo v1, "AS_DNS_QUERY_MALFORMED"

    .line 1599
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mAseCodes:Lorg/json/JSONObject;

    const-string/jumbo v1, "AS_DNS_SERVER_FAILURE"

    .line 1600
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mAseCodes:Lorg/json/JSONObject;

    const-string/jumbo v1, "AS_DNS_NOT_IMPLEMENTED"

    .line 1601
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mAseCodes:Lorg/json/JSONObject;

    const-string/jumbo v1, "AS_DNS_QUERY_REFUSED"

    .line 1602
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mAseCodes:Lorg/json/JSONObject;

    const-string/jumbo v1, "AS_DNS_BAD_NAME"

    .line 1603
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mAseCodes:Lorg/json/JSONObject;

    const-string/jumbo v1, "AS_DNS_NO_MEMORY"

    .line 1604
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mAseCodes:Lorg/json/JSONObject;

    const-string/jumbo v1, "AS_DNS_CHANNEL_DESTROYED"

    .line 1605
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    if-ne p1, v0, :cond_1

    .line 1607
    :cond_0
    const-string/jumbo v0, "dnsfailure"

    .line 1663
    :goto_0
    return-object v0

    .line 1609
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mAseCodes:Lorg/json/JSONObject;

    const-string/jumbo v1, "AS_DNS_TIMEOUT"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    if-ne p1, v0, :cond_2

    .line 1610
    const-string/jumbo v0, "dnstimeout"

    goto :goto_0

    .line 1612
    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mAseCodes:Lorg/json/JSONObject;

    const-string/jumbo v1, "AS_DNS_NOT_FOUND"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    if-ne p1, v0, :cond_3

    .line 1613
    const-string/jumbo v0, "dnsnotfound"

    goto :goto_0

    .line 1615
    :cond_3
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mAseCodes:Lorg/json/JSONObject;

    const-string/jumbo v1, "AS_DNS_CONNECTION_REFUSED"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    if-ne p1, v0, :cond_4

    .line 1616
    const-string/jumbo v0, "dnsconnectionrefused"

    goto :goto_0

    .line 1619
    :cond_4
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mAseCodes:Lorg/json/JSONObject;

    const-string/jumbo v1, "AS_CONNECTION_ERROR"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    if-eq p1, v0, :cond_5

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mAseCodes:Lorg/json/JSONObject;

    const-string/jumbo v1, "AS_HTTP_CONNECTION_ERROOR"

    .line 1620
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    if-ne p1, v0, :cond_6

    .line 1621
    :cond_5
    const-string/jumbo v0, "connectionerror"

    goto :goto_0

    .line 1623
    :cond_6
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mAseCodes:Lorg/json/JSONObject;

    const-string/jumbo v1, "AS_CONNECTION_REFUSED"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    if-ne p1, v0, :cond_7

    .line 1624
    const-string/jumbo v0, "connectionrefused"

    goto :goto_0

    .line 1626
    :cond_7
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mAseCodes:Lorg/json/JSONObject;

    const-string/jumbo v1, "AS_CONNECTION_TIMEOUT"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    if-eq p1, v0, :cond_8

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mAseCodes:Lorg/json/JSONObject;

    const-string/jumbo v1, "AS_HTTP_CONNECTION_TIMEOUT"

    .line 1627
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    if-ne p1, v0, :cond_9

    .line 1628
    :cond_8
    const-string/jumbo v0, "connectiontimeout"

    goto :goto_0

    .line 1630
    :cond_9
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mAseCodes:Lorg/json/JSONObject;

    const-string/jumbo v1, "AS_CONNECTION_CLOSED"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    if-ne p1, v0, :cond_a

    .line 1631
    const-string/jumbo v0, "connectionclosed"

    goto :goto_0

    .line 1633
    :cond_a
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mAseCodes:Lorg/json/JSONObject;

    const-string/jumbo v1, "AS_CONNECTION_RESET"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    if-ne p1, v0, :cond_b

    .line 1634
    const-string/jumbo v0, "connectionreset"

    goto/16 :goto_0

    .line 1636
    :cond_b
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mAseCodes:Lorg/json/JSONObject;

    const-string/jumbo v1, "AS_CONNECTION_NET_UNREACHABLE"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    if-eq p1, v0, :cond_c

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mAseCodes:Lorg/json/JSONObject;

    const-string/jumbo v1, "AS_CONNECTION_NO_ROUTE_TO_HOST"

    .line 1637
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    if-ne p1, v0, :cond_d

    .line 1638
    :cond_c
    const-string/jumbo v0, "noroutetohost"

    goto/16 :goto_0

    .line 1640
    :cond_d
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mAseCodes:Lorg/json/JSONObject;

    const-string/jumbo v1, "AS_CONNECTION_NETWORK_DOWN"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    if-ne p1, v0, :cond_e

    .line 1641
    const-string/jumbo v0, "networkdown"

    goto/16 :goto_0

    .line 1643
    :cond_e
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mAseCodes:Lorg/json/JSONObject;

    const-string/jumbo v1, "AS_CONNECTION_SLOW"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    if-ne p1, v0, :cond_f

    .line 1644
    const-string/jumbo v0, "connectionslow"

    goto/16 :goto_0

    .line 1646
    :cond_f
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mAseCodes:Lorg/json/JSONObject;

    const-string/jumbo v1, "AS_SOCKET_ERROR"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    if-ne p1, v0, :cond_10

    .line 1647
    const-string/jumbo v0, "socketerror"

    goto/16 :goto_0

    .line 1649
    :cond_10
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mAseCodes:Lorg/json/JSONObject;

    const-string/jumbo v1, "AS_TIMEOUT"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    if-eq p1, v0, :cond_11

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mAseCodes:Lorg/json/JSONObject;

    const-string/jumbo v1, "AS_HTTP_CONNECTION_STALL"

    .line 1650
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    if-eq p1, v0, :cond_11

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mAseCodes:Lorg/json/JSONObject;

    const-string/jumbo v1, "AS_HTTP_TRANSACTION_TIMEOUT"

    .line 1651
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    if-ne p1, v0, :cond_12

    .line 1652
    :cond_11
    const-string/jumbo v0, "datatimeout"

    goto/16 :goto_0

    .line 1654
    :cond_12
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mAseCodes:Lorg/json/JSONObject;

    const-string/jumbo v1, "AS_ABANDONED"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    if-ne p1, v0, :cond_13

    .line 1655
    const-string/jumbo v0, "abandoned"

    goto/16 :goto_0

    .line 1657
    :cond_13
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mAseCodes:Lorg/json/JSONObject;

    const-string/jumbo v1, "AS_HTTP_PROTOCOL_ERROR"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    if-ne p1, v0, :cond_14

    .line 1658
    const-string/jumbo v0, "httperror"

    goto/16 :goto_0

    .line 1660
    :cond_14
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mAseCodes:Lorg/json/JSONObject;

    const-string/jumbo v1, "AS_INVALID_VALUE"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    if-ne p1, v0, :cond_15

    .line 1661
    const-string/jumbo v0, "badcontent"

    goto/16 :goto_0

    .line 1663
    :cond_15
    const-string/jumbo v0, ""

    goto/16 :goto_0
.end method

.method private pipeliningDisabled()V
    .locals 1

    .prologue
    .line 1162
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mPipelineEnabled:Z

    .line 1163
    return-void
.end method

.method private playbackRepos(Lorg/json/JSONObject;)V
    .locals 10

    .prologue
    .line 939
    const-string/jumbo v0, "movieTime"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 940
    iget-wide v6, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mPlaybackTS:J

    .line 941
    sget-object v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "playbackRepos from PlayerControl: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " playbackTS: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mPlaybackTS:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " movieTotal: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mMovieTotal:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 945
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mStartPlayLogged:Z

    if-eqz v0, :cond_0

    .line 947
    invoke-static {}, Lcom/netflix/mediaclient/util/Time;->mono()J

    move-result-wide v0

    .line 948
    iget-wide v2, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mUserPlay:J

    sub-long v2, v0, v2

    .line 949
    iget-wide v8, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mUserStoppedTime:J

    sub-long v8, v0, v8

    .line 950
    new-instance v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/logblob/LogReposition;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mXid:Ljava/lang/String;

    invoke-direct/range {v0 .. v9}, Lcom/netflix/mediaclient/service/player/nrdpplayback/logblob/LogReposition;-><init>(Ljava/lang/String;JJJJ)V

    .line 951
    sget-object v1, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "BLOB: logRepos"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/nrdpplayback/logblob/LogReposition;->toJson()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 952
    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mLoggingModule:Lcom/netflix/mediaclient/servicemgr/LogblobLogging;

    invoke-interface {v1, v0}, Lcom/netflix/mediaclient/servicemgr/LogblobLogging;->sendLogblob(Lcom/netflix/mediaclient/servicemgr/Logblob;)V

    .line 956
    :cond_0
    iget-wide v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mPlaybackTS:J

    sub-long v0, v6, v0

    iput-wide v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mMovieTotal:J

    .line 957
    iput-wide v4, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mPlaybackTS:J

    .line 958
    return-void
.end method

.method private playbackStarted(Lorg/json/JSONObject;J)V
    .locals 8

    .prologue
    const/4 v6, 0x1

    .line 808
    sget-object v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "playbackStarted in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/netflix/mediaclient/util/Time;->mono()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mPlayDelay:J

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 809
    iput-boolean v6, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mPlaybackStarted:Z

    .line 810
    const-string/jumbo v0, "additionalInfo"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mPlaybackAdditionalInfo:Ljava/lang/String;

    .line 811
    iput v6, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mPlaybackState:I

    .line 812
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mStartPlayEvents:Lorg/json/JSONObject;

    const-string/jumbo v1, "firstPtsUpdate"

    invoke-static {}, Lcom/netflix/mediaclient/util/Time;->mono()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mPlayDelay:J

    sub-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 813
    invoke-direct {p0, p2, p3}, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->logStartResumePlay(J)V

    .line 816
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mPlaybackAborted:Z

    .line 817
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mErrorMsg:Ljava/lang/String;

    .line 818
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mErrorCode:Ljava/lang/String;

    .line 819
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mErrorString:Ljava/lang/String;

    .line 820
    return-void
.end method

.method private playbackStateChange(Lorg/json/JSONObject;J)V
    .locals 8

    .prologue
    .line 789
    sget-object v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "playbackStateChange args:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 790
    iget v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mPlaybackState:I

    const-string/jumbo v1, "state"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    if-eq v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mPlaybackStarted:Z

    if-nez v0, :cond_1

    .line 792
    :cond_0
    sget-object v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->TAG:Ljava/lang/String;

    const-string/jumbo v1, ""

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 804
    :goto_0
    return-void

    .line 796
    :cond_1
    iget v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mPlaybackState:I

    if-nez v0, :cond_2

    const-string/jumbo v6, "Paused"

    .line 797
    :goto_1
    const-string/jumbo v0, "state"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_3

    const-string/jumbo v7, "Paused"

    .line 798
    :goto_2
    iget-wide v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mUserPlay:J

    sub-long v2, p2, v0

    .line 799
    new-instance v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/logblob/StateChanged;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mXid:Ljava/lang/String;

    const-string/jumbo v4, "movieTime"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-direct/range {v0 .. v7}, Lcom/netflix/mediaclient/service/player/nrdpplayback/logblob/StateChanged;-><init>(Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;)V

    .line 801
    sget-object v1, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "BLOB: stateChanged"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/nrdpplayback/logblob/StateChanged;->toJson()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 802
    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mLoggingModule:Lcom/netflix/mediaclient/servicemgr/LogblobLogging;

    invoke-interface {v1, v0}, Lcom/netflix/mediaclient/servicemgr/LogblobLogging;->sendLogblob(Lcom/netflix/mediaclient/servicemgr/Logblob;)V

    .line 803
    const-string/jumbo v0, "state"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mPlaybackState:I

    goto :goto_0

    .line 796
    :cond_2
    const-string/jumbo v6, "Playing"

    goto :goto_1

    .line 797
    :cond_3
    const-string/jumbo v7, "Playing"

    goto :goto_2
.end method

.method private playbackStopped(Lorg/json/JSONObject;J)V
    .locals 24

    .prologue
    .line 877
    sget-object v4, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "playbackStopped: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 879
    const-string/jumbo v4, "reason"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 880
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v5

    .line 881
    const/4 v6, 0x1

    if-ge v5, v6, :cond_0

    .line 936
    :goto_0
    return-void

    .line 884
    :cond_0
    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/json/JSONObject;

    .line 885
    const-string/jumbo v5, "errorcode"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 887
    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mPlaybackStoppedReason:Ljava/lang/String;

    .line 888
    const-string/jumbo v4, "movieTime"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mMovieStop:J

    .line 890
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mPlaybackStarted:Z

    if-eqz v4, :cond_2

    .line 892
    const/4 v4, -0x1

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    :cond_1
    :goto_1
    packed-switch v4, :pswitch_data_0

    .line 924
    :cond_2
    :goto_2
    :pswitch_0
    const-string/jumbo v4, "NFErr_Seek"

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 925
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mVStreamingDlid:Ljava/lang/String;

    .line 926
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mAStreamingDlid:Ljava/lang/String;

    .line 927
    const/4 v4, -0x1

    move-object/from16 v0, p0

    iput v4, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mVInitStreamingBitrateKbps:I

    .line 928
    const/4 v4, -0x1

    move-object/from16 v0, p0

    iput v4, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mAStreamingBitrateKbps:I

    .line 929
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mVideoRenderingSequence:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 930
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mAudioRenderingSequence:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 931
    const/4 v4, -0x1

    move-object/from16 v0, p0

    iput v4, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mCurrentRenderedVideo:I

    .line 932
    const/4 v4, -0x1

    move-object/from16 v0, p0

    iput v4, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mCurrentRenderedAudio:I

    .line 935
    :cond_3
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mPlaybackStarted:Z

    goto :goto_0

    .line 892
    :sswitch_0
    const-string/jumbo v5, "NFErr_Rebuffer"

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v4, 0x0

    goto :goto_1

    :sswitch_1
    const-string/jumbo v5, "NFErr_Stop"

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    :sswitch_2
    const-string/jumbo v5, "NFErr_Seek"

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v4, 0x2

    goto :goto_1

    :sswitch_3
    const-string/jumbo v5, "NFErr_Skip"

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v4, 0x3

    goto :goto_1

    .line 894
    :pswitch_1
    sget-object v4, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "in playbackStopped calling logIntrplay"

    invoke-static {v4, v5}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 895
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mUserPlay:J

    sub-long v7, p2, v4

    .line 896
    new-instance v5, Lcom/netflix/mediaclient/service/player/nrdpplayback/logblob/IntrPlay;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mXid:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-wide v9, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mMovieStop:J

    const-string/jumbo v11, "vdlid"

    invoke-direct/range {p0 .. p0}, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->getVideoBufferLevel()J

    move-result-wide v12

    move-object/from16 v0, p0

    iget v4, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mVBufferBytes:I

    int-to-long v14, v4

    .line 897
    invoke-direct/range {p0 .. p0}, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->getAudioBufferLevel()J

    move-result-wide v16

    move-object/from16 v0, p0

    iget v4, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mABufferBytes:I

    int-to-long v0, v4

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mCdnId:I

    int-to-long v0, v4

    move-wide/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mGroupName:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-direct/range {v5 .. v22}, Lcom/netflix/mediaclient/service/player/nrdpplayback/logblob/IntrPlay;-><init>(Ljava/lang/String;JJLjava/lang/String;JJJJJLjava/lang/String;)V

    .line 898
    sget-object v4, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "BLOB: IntrPlay"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v5}, Lcom/netflix/mediaclient/service/player/nrdpplayback/logblob/IntrPlay;->toJson()Lorg/json/JSONObject;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 899
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mLoggingModule:Lcom/netflix/mediaclient/servicemgr/LogblobLogging;

    invoke-interface {v4, v5}, Lcom/netflix/mediaclient/servicemgr/LogblobLogging;->sendLogblob(Lcom/netflix/mediaclient/servicemgr/Logblob;)V

    .line 900
    move-wide/from16 v0, p2

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mPlayDelay:J

    .line 901
    move-wide/from16 v0, p2

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mSdkPlayDelay:J

    .line 902
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mVStreamingDlid:Ljava/lang/String;

    .line 903
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mAStreamingDlid:Ljava/lang/String;

    .line 904
    const/4 v4, -0x1

    move-object/from16 v0, p0

    iput v4, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mVInitStreamingBitrateKbps:I

    .line 905
    const/4 v4, -0x1

    move-object/from16 v0, p0

    iput v4, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mAInitStreamingBitrateKbps:I

    goto/16 :goto_2

    .line 911
    :pswitch_2
    move-wide/from16 v0, p2

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mPlayDelay:J

    .line 912
    move-wide/from16 v0, p2

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mSdkPlayDelay:J

    goto/16 :goto_2

    .line 916
    :pswitch_3
    move-wide/from16 v0, p2

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mPlayDelay:J

    .line 917
    move-wide/from16 v0, p2

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mSdkPlayDelay:J

    goto/16 :goto_2

    .line 892
    nop

    :sswitch_data_0
    .sparse-switch
        0xb0b47c5 -> :sswitch_0
        0x4f38bf0a -> :sswitch_2
        0x4f38d611 -> :sswitch_3
        0x4f38f894 -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private reportDnsLookupFailure(Lorg/json/JSONObject;)V
    .locals 0

    .prologue
    .line 1397
    return-void
.end method

.method private reportFileToken(Lorg/json/JSONObject;)V
    .locals 1

    .prologue
    .line 1235
    const-string/jumbo v0, "filetoken"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mFileToken:Ljava/lang/String;

    .line 1236
    return-void
.end method

.method private reportHostNameResolved(Lorg/json/JSONObject;J)V
    .locals 0

    .prologue
    .line 1393
    return-void
.end method

.method private reportKeyStartplayEvent(Lorg/json/JSONObject;)V
    .locals 6

    .prologue
    .line 1150
    const-string/jumbo v0, "eventName"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1151
    const-string/jumbo v1, "nativetime"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 1152
    iget-wide v4, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mPlayDelay:J

    sub-long/2addr v2, v4

    .line 1153
    sget-object v1, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Adding reportKeyStartplayEvent: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " timeElapsed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1154
    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mStartPlayEvents:Lorg/json/JSONObject;

    invoke-virtual {v1, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 1155
    return-void
.end method

.method private reportMslFailure()V
    .locals 0

    .prologue
    .line 1405
    return-void
.end method

.method private reportNetworkMonitorState(Lorg/json/JSONObject;)V
    .locals 0

    .prologue
    .line 1401
    return-void
.end method

.method private reportRoute(Lorg/json/JSONObject;)V
    .locals 0

    .prologue
    .line 1389
    return-void
.end method

.method private resetBufferingTimes(JJ)V
    .locals 3

    .prologue
    .line 1538
    invoke-static {}, Lcom/netflix/mediaclient/util/Time;->mono()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mBufferingStartTime:J

    .line 1539
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mPlaybackStoppedReason:Ljava/lang/String;

    const-string/jumbo v1, "NFErr_OK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1540
    iput-wide p3, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mPlayDelay:J

    .line 1541
    iput-wide p3, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mSdkPlayDelay:J

    .line 1542
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mAudioTrackSwitchStarted:Z

    .line 1544
    :cond_0
    return-void
.end method

.method private resumePlayReason()Ljava/lang/String;
    .locals 2

    .prologue
    .line 782
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mPlaybackStoppedReason:Ljava/lang/String;

    const-string/jumbo v1, "NFErr_Rebuffer"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 783
    const-string/jumbo v0, "rebuffer"

    .line 785
    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "repos"

    goto :goto_0
.end method

.method private serverEnd(JIJ)V
    .locals 4

    .prologue
    .line 1226
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mLastServerSelection:Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/ServerSelection;

    if-eqz v0, :cond_1

    .line 1227
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mLastServerSelection:Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/ServerSelection;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mLastServerSelection:Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/ServerSelection;

    iget-wide v2, v1, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/ServerSelection;->mTime:J

    sub-long v2, p1, v2

    iput-wide v2, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/ServerSelection;->mDuration:J

    .line 1228
    if-lez p3, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mLastServerSelection:Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/ServerSelection;

    iput p3, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/ServerSelection;->mThroughput:I

    .line 1229
    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v0, p4, v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mLastServerSelection:Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/ServerSelection;

    iput-wide p4, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/ServerSelection;->mConfidence:J

    .line 1231
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mLastServerSelection:Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/ServerSelection;

    .line 1232
    return-void
.end method

.method private serverSelected(Lorg/json/JSONObject;)V
    .locals 14

    .prologue
    .line 1709
    const-string/jumbo v0, "selcdnid"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 1710
    const-string/jumbo v1, "selcdnname"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1711
    const-string/jumbo v2, "selcdnrtt"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    .line 1712
    const-string/jumbo v2, "selcdnbw"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    .line 1714
    const-string/jumbo v2, "domainBwData"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1715
    const-string/jumbo v2, "testreason"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1716
    const-string/jumbo v2, "selreason"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1718
    const-string/jumbo v2, "fastselthreshold"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v10

    .line 1720
    iget v4, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mCdnId:I

    .line 1721
    iput v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mCdnId:I

    .line 1722
    iput-object v1, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mCdnName:Ljava/lang/String;

    .line 1724
    invoke-static {}, Lcom/netflix/mediaclient/util/Time;->mono()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mUserPlay:J

    sub-long v12, v0, v2

    .line 1725
    new-instance v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/logblob/CdnSelect;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mXid:Ljava/lang/String;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mCdnInfoA:Lorg/json/JSONArray;

    iget v3, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mPrimaryCdnId:I

    iget v5, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mCdnId:I

    invoke-direct/range {v0 .. v13}, Lcom/netflix/mediaclient/service/player/nrdpplayback/logblob/CdnSelect;-><init>(Ljava/lang/String;Lorg/json/JSONArray;IIIIILjava/lang/String;Ljava/lang/String;ILjava/lang/String;J)V

    .line 1729
    sget-object v1, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "BLOB: cdnsel"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/nrdpplayback/logblob/CdnSelect;->toJson()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1730
    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mLoggingModule:Lcom/netflix/mediaclient/servicemgr/LogblobLogging;

    invoke-interface {v1, v0}, Lcom/netflix/mediaclient/servicemgr/LogblobLogging;->sendLogblob(Lcom/netflix/mediaclient/servicemgr/Logblob;)V

    .line 1731
    return-void
.end method

.method private serverSwitch(Lorg/json/JSONObject;)V
    .locals 13

    .prologue
    .line 1175
    const-string/jumbo v0, "cdnid"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    .line 1176
    const-string/jumbo v0, "pLocationSetMonitor"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string/jumbo v1, "key"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1179
    const-string/jumbo v0, "reason"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v8

    .line 1183
    const-string/jumbo v0, "bitrate"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v9

    .line 1184
    const-string/jumbo v0, "throughput"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v3, 0x0

    .line 1185
    :goto_0
    const-string/jumbo v0, "confidence"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-wide/16 v4, 0x0

    .line 1186
    :goto_1
    invoke-static {}, Lcom/netflix/mediaclient/util/Time;->mono()J

    move-result-wide v0

    iget-wide v10, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mUserPlay:J

    sub-long v1, v0, v10

    .line 1188
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mLastServerSelection:Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/ServerSelection;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mLastServerSelection:Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/ServerSelection;

    iget v0, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/ServerSelection;->mServer:I

    if-eq v0, v6, :cond_1

    :cond_0
    move-object v0, p0

    .line 1189
    invoke-direct/range {v0 .. v5}, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->serverEnd(JIJ)V

    .line 1192
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mLocationSelectionMap:Ljava/util/Map;

    if-nez v0, :cond_2

    .line 1193
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mLocationSelectionMap:Ljava/util/Map;

    .line 1196
    :cond_2
    const/4 v3, 0x0

    .line 1197
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mLocationSelectionMap:Ljava/util/Map;

    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 1198
    if-eqz v0, :cond_6

    .line 1199
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    move-object v12, v0

    move-object v0, v3

    move-object v3, v12

    .line 1204
    :goto_2
    if-nez v0, :cond_3

    .line 1205
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1208
    :cond_3
    new-instance v4, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/ServerSelection;

    invoke-direct {v4, v1, v2}, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/ServerSelection;-><init>(J)V

    .line 1209
    iput v6, v4, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/ServerSelection;->mServer:I

    .line 1210
    invoke-static {v8}, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/ServerSelectionReason;->valueOf(I)Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/ServerSelectionReason;

    move-result-object v1

    iput-object v1, v4, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/ServerSelection;->mReason:Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/ServerSelectionReason;

    .line 1211
    iput v9, v4, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/ServerSelection;->mBitrate:I

    .line 1213
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1214
    iput-object v4, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mLastServerSelection:Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/ServerSelection;

    .line 1216
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1217
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mLocationSelectionMap:Ljava/util/Map;

    invoke-interface {v0, v7, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1222
    return-void

    .line 1184
    :cond_4
    const-string/jumbo v0, "throughput"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    goto :goto_0

    .line 1185
    :cond_5
    const-string/jumbo v0, "confidence"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    goto :goto_1

    .line 1201
    :cond_6
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    move-object v12, v0

    move-object v0, v3

    move-object v3, v12

    goto :goto_2
.end method

.method private setLicenseTime(Lorg/json/JSONObject;)V
    .locals 2

    .prologue
    .line 1158
    const-string/jumbo v0, "licenseTimeMS"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mLicenseTime:J

    .line 1159
    return-void
.end method

.method private skipStarted(J)V
    .locals 5

    .prologue
    .line 1531
    invoke-static {}, Lcom/netflix/mediaclient/util/Time;->mono()J

    move-result-wide v0

    .line 1532
    sget-object v2, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "skipStarted: setting this._bufferingStartTime to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1533
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mPlaybackSkipping:Z

    .line 1534
    invoke-direct {p0, v0, v1, p1, p2}, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->resetBufferingTimes(JJ)V

    .line 1535
    return-void
.end method

.method private streamSelected(Lorg/json/JSONObject;)V
    .locals 30

    .prologue
    .line 1411
    const-string/jumbo v2, "movieTime"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 1413
    const-string/jumbo v2, "trackIndex"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 1414
    const-string/jumbo v2, "streamIndex"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    .line 1415
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mManifestData:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v2, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 1417
    if-nez v2, :cond_1

    .line 1418
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1419
    const-string/jumbo v4, "streamSelected: track index not found: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1420
    const-string/jumbo v3, " Max track length :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mManifestTracksLength:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1421
    sget-object v3, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->TAG:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1422
    move-object/from16 v0, p0

    iget v3, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mErrReportingCounter:I

    const/4 v4, 0x1

    if-ge v3, v4, :cond_0

    .line 1423
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/service/logging/error/ErrorLoggingManager;->logHandledException(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1424
    move-object/from16 v0, p0

    iget v2, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mErrReportingCounter:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mErrReportingCounter:I

    .line 1486
    :cond_0
    :goto_0
    return-void

    .line 1429
    :cond_1
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/StreamData;

    .line 1430
    if-nez v3, :cond_2

    .line 1431
    sget-object v2, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "streamSelected: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " undefined"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1436
    :cond_2
    iget-object v2, v3, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/StreamData;->mType:Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/MediaType;

    sget-object v6, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/MediaType;->VIDEO_STREAM:Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/MediaType;

    if-ne v2, v6, :cond_7

    .line 1437
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mVStreamingDlid:Ljava/lang/String;

    invoke-static {v2}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    move-object/from16 v0, p0

    iget v2, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mVStreamingBitrateKbps:I

    const/4 v6, -0x1

    if-ne v2, v6, :cond_6

    .line 1438
    :cond_3
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mVideoRenderingSequence:Ljava/util/ArrayList;

    new-instance v2, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/RenderingStreamInfo;

    invoke-direct/range {p0 .. p0}, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->getLastSelectedServerId()I

    move-result v6

    const/4 v7, 0x0

    invoke-direct/range {v2 .. v7}, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/RenderingStreamInfo;-><init>(Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/StreamData;JIZ)V

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1439
    sget-object v6, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "streamSelected: new video entry (1):"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mVideoRenderingSequence:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mVideoRenderingSequence:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/RenderingStreamInfo;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/RenderingStreamInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1440
    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mVStreamTS:J

    .line 1458
    :cond_4
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mVStreamingDlid:Ljava/lang/String;

    if-nez v2, :cond_5

    .line 1459
    sget-object v2, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "streamSelected: initial stream selected"

    invoke-static {v2, v4}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1460
    iget-object v2, v3, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/StreamData;->mDlId:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mVInitStreamingDlid:Ljava/lang/String;

    .line 1461
    iget v2, v3, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/StreamData;->mBitrate:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mVInitStreamingBitrateKbps:I

    .line 1464
    :cond_5
    iget-object v2, v3, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/StreamData;->mDlId:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mVStreamingDlid:Ljava/lang/String;

    .line 1465
    iget v2, v3, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/StreamData;->mBitrate:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mVStreamingBitrateKbps:I

    goto/16 :goto_0

    .line 1441
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mVStreamingDlid:Ljava/lang/String;

    iget-object v6, v3, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/StreamData;->mDlId:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 1442
    invoke-static {}, Lcom/netflix/mediaclient/util/Time;->mono()J

    move-result-wide v6

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mUserPlay:J

    sub-long v8, v6, v8

    .line 1444
    new-instance v6, Lcom/netflix/mediaclient/service/player/nrdpplayback/logblob/ChangeStream;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mXid:Ljava/lang/String;

    iget-object v12, v3, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/StreamData;->mDlId:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mVStreamingDlid:Ljava/lang/String;

    const-string/jumbo v2, "bandwidth"

    .line 1445
    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v14

    const-string/jumbo v2, "longtermBw"

    .line 1446
    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v16

    iget v2, v3, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/StreamData;->mBitrate:I

    int-to-long v0, v2

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mVStreamingBitrateKbps:I

    int-to-long v0, v2

    move-wide/from16 v20, v0

    .line 1447
    invoke-direct/range {p0 .. p0}, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->getVideoBufferLevel()J

    move-result-wide v22

    move-object/from16 v0, p0

    iget v2, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mVBufferBytes:I

    int-to-long v0, v2

    move-wide/from16 v24, v0

    .line 1448
    invoke-direct/range {p0 .. p0}, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->getAudioBufferLevel()J

    move-result-wide v26

    move-object/from16 v0, p0

    iget v2, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mABufferBytes:I

    int-to-long v0, v2

    move-wide/from16 v28, v0

    move-wide v10, v4

    invoke-direct/range {v6 .. v29}, Lcom/netflix/mediaclient/service/player/nrdpplayback/logblob/ChangeStream;-><init>(Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;JJJJJJJJ)V

    .line 1450
    sget-object v2, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "BLOB: chngStream"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v6}, Lcom/netflix/mediaclient/service/player/nrdpplayback/logblob/ChangeStream;->toJson()Lorg/json/JSONObject;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1451
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mLoggingModule:Lcom/netflix/mediaclient/servicemgr/LogblobLogging;

    invoke-interface {v2, v6}, Lcom/netflix/mediaclient/servicemgr/LogblobLogging;->sendLogblob(Lcom/netflix/mediaclient/servicemgr/Logblob;)V

    .line 1453
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mVideoRenderingSequence:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mVideoRenderingSequence:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/RenderingStreamInfo;

    .line 1454
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mVideoRenderingSequence:Ljava/util/ArrayList;

    new-instance v2, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/RenderingStreamInfo;

    iget v6, v6, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/RenderingStreamInfo;->mServer:I

    const/4 v7, 0x0

    invoke-direct/range {v2 .. v7}, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/RenderingStreamInfo;-><init>(Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/StreamData;JIZ)V

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1455
    sget-object v4, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "streamSelected: new video entry (2):"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mVideoRenderingSequence:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mVideoRenderingSequence:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/RenderingStreamInfo;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/RenderingStreamInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1467
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mAStreamingDlid:Ljava/lang/String;

    invoke-static {v2}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_8

    move-object/from16 v0, p0

    iget v2, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mAStreamingBitrateKbps:I

    const/4 v6, -0x1

    if-ne v2, v6, :cond_b

    .line 1468
    :cond_8
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mAudioRenderingSequence:Ljava/util/ArrayList;

    new-instance v2, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/RenderingStreamInfo;

    invoke-direct/range {p0 .. p0}, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->getLastSelectedServerId()I

    move-result v6

    const/4 v7, 0x0

    invoke-direct/range {v2 .. v7}, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/RenderingStreamInfo;-><init>(Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/StreamData;JIZ)V

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1469
    sget-object v6, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "streamSelected: new audio entry (1):"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mAudioRenderingSequence:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mAudioRenderingSequence:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/RenderingStreamInfo;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/RenderingStreamInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1470
    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mAStreamTS:J

    .line 1478
    :cond_9
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mAStreamingDlid:Ljava/lang/String;

    if-nez v2, :cond_a

    .line 1479
    iget-object v2, v3, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/StreamData;->mDlId:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mAInitStreamingDlid:Ljava/lang/String;

    .line 1480
    iget v2, v3, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/StreamData;->mBitrate:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mAInitStreamingBitrateKbps:I

    .line 1483
    :cond_a
    iget-object v2, v3, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/StreamData;->mDlId:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mAStreamingDlid:Ljava/lang/String;

    .line 1484
    iget v2, v3, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/StreamData;->mBitrate:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mAStreamingBitrateKbps:I

    goto/16 :goto_0

    .line 1471
    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mAStreamingDlid:Ljava/lang/String;

    iget-object v6, v3, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/StreamData;->mDlId:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 1473
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mAudioRenderingSequence:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mAudioRenderingSequence:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/RenderingStreamInfo;

    .line 1474
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mAudioRenderingSequence:Ljava/util/ArrayList;

    new-instance v2, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/RenderingStreamInfo;

    iget v6, v6, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/RenderingStreamInfo;->mServer:I

    const/4 v7, 0x0

    invoke-direct/range {v2 .. v7}, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/RenderingStreamInfo;-><init>(Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/StreamData;JIZ)V

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1475
    sget-object v4, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "streamSelected: new audio entry (2):"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mAudioRenderingSequence:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mAudioRenderingSequence:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/RenderingStreamInfo;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/RenderingStreamInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2
.end method

.method private streamingFailure(Lorg/json/JSONObject;J)V
    .locals 10

    .prologue
    .line 1678
    const-string/jumbo v0, "aserr"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mPlaybackError:Ljava/lang/String;

    .line 1679
    const-string/jumbo v0, "errorMsg"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mErrorMsg:Ljava/lang/String;

    .line 1681
    const-string/jumbo v0, "httpError"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 1682
    const/16 v1, 0x190

    if-lt v0, v1, :cond_0

    .line 1683
    iput v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mHttpError:I

    .line 1684
    invoke-static {}, Lcom/netflix/mediaclient/util/Time;->mono()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mHttpErrTime:J

    .line 1687
    :cond_0
    const-string/jumbo v0, "aserr"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iget v1, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mLastNetworkErrorCode:I

    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mLastNetworkError:Ljava/lang/String;

    iget-wide v3, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mLastNetworkErrorTime:J

    iget v5, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mHttpError:I

    iget-wide v6, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mHttpErrTime:J

    iget-object v8, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mAseCodes:Lorg/json/JSONObject;

    invoke-static/range {v0 .. v8}, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/ErrorCodeGen;->getStreamingFailureCode(IILjava/lang/String;JIJLorg/json/JSONObject;)Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/NrdpErr;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mNrdpErr:Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/NrdpErr;

    .line 1695
    const-string/jumbo v0, "aserr"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mStreamingFailureCode:I

    .line 1697
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mStartPlayLogged:Z

    if-nez v0, :cond_1

    .line 1698
    invoke-direct {p0, p2, p3}, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->logStartResumePlay(J)V

    .line 1699
    :cond_1
    return-void
.end method

.method private streamingFailureReasons(Lorg/json/JSONObject;)V
    .locals 2

    .prologue
    .line 1667
    const-string/jumbo v0, "networkErrorCode"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mLastNetworkErrorCode:I

    .line 1668
    const-string/jumbo v0, "networkErrorCode"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->networkErrorString(I)Ljava/lang/String;

    move-result-object v0

    .line 1670
    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mLastNetworkError:Ljava/lang/String;

    .line 1673
    const-string/jumbo v0, "httpError"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mHttpError:I

    .line 1674
    return-void

    .line 1670
    :cond_0
    const-string/jumbo v0, "networkErrorCode"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private tcpConnect(Lorg/json/JSONObject;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 1240
    iget v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mNetworkCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mNetworkCount:I

    if-nez v0, :cond_0

    .line 1241
    const-string/jumbo v0, "nativetime"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mNetworkTime:J

    .line 1242
    sget-object v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "pbr:tcpConnect: networkTime for %s set to %d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mNetworkType:Ljava/lang/String;

    aput-object v3, v2, v6

    const/4 v3, 0x1

    iget-wide v4, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mNetworkTime:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1248
    :cond_0
    const-string/jumbo v0, "id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 1249
    const-string/jumbo v1, "src"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1250
    const-string/jumbo v2, "dest"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1251
    const-string/jumbo v3, "connectTimeMs"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 1252
    new-instance v4, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/TransportData;

    invoke-direct {v4, v1, v2, v3}, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/TransportData;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1253
    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mTransportDataMap:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1255
    iget-wide v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mMinConnectTime:J

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-eqz v0, :cond_1

    if-lez v3, :cond_2

    int-to-long v0, v3

    iget-wide v4, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mMinConnectTime:J

    cmp-long v0, v0, v4

    if-gez v0, :cond_2

    .line 1256
    :cond_1
    int-to-long v0, v3

    iput-wide v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mMinConnectTime:J

    .line 1260
    :cond_2
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mLastNetworkError:Ljava/lang/String;

    .line 1261
    iput v6, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mLastNetworkErrorCode:I

    .line 1262
    return-void
.end method

.method private tcpDisconnect(Lorg/json/JSONObject;)V
    .locals 10

    .prologue
    const-wide/16 v8, 0x0

    const/4 v7, 0x1

    .line 1287
    sget-object v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "pbr:tcpFailure: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mNetworkCount:I

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " connections remaining"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1289
    iget v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mNetworkCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mNetworkCount:I

    .line 1290
    iget v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mNetworkCount:I

    if-nez v0, :cond_0

    .line 1291
    const-string/jumbo v0, "nativetime"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iget-wide v2, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mNetworkTime:J

    sub-long/2addr v0, v2

    .line 1292
    invoke-direct {p0, v8, v9, v0, v1}, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->addNetworkData(JJ)V

    .line 1293
    sget-object v2, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "pbr:tcpDisconnect: networkTime for %s incremented by %d ms"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mNetworkType:Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v4, v7

    invoke-static {v2, v3, v4}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1294
    iput-wide v8, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mNetworkTime:J

    .line 1297
    :cond_0
    const-string/jumbo v0, "tcpDisconnectState"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 1298
    if-eq v0, v7, :cond_1

    .line 1299
    const-string/jumbo v0, "nativetime"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mLastNetworkErrorTime:J

    .line 1301
    :cond_1
    return-void
.end method

.method private tcpFailure(Lorg/json/JSONObject;)V
    .locals 5

    .prologue
    .line 1270
    const-string/jumbo v0, "id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 1271
    const-string/jumbo v1, "src"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1272
    const-string/jumbo v2, "dest"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1273
    const-string/jumbo v3, "connectTimeMs"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 1274
    new-instance v4, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/TransportData;

    invoke-direct {v4, v1, v2, v3}, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/TransportData;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1275
    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mTransportDataMap:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1277
    const-string/jumbo v0, "reason"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/netflix/mediaclient/util/JsonUtils;->getInt(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v0

    .line 1278
    if-eqz v0, :cond_0

    .line 1279
    const-string/jumbo v0, "nativetime"

    const-wide/16 v2, 0x0

    invoke-static {p1, v0, v2, v3}, Lcom/netflix/mediaclient/util/JsonUtils;->getLong(Lorg/json/JSONObject;Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mLastNetworkErrorTime:J

    .line 1284
    :cond_0
    return-void
.end method

.method private toJsonArray(Ljava/util/List;)Lorg/json/JSONArray;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/Server;",
            ">;)",
            "Lorg/json/JSONArray;"
        }
    .end annotation

    .prologue
    .line 1888
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 1889
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/Server;

    .line 1890
    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/Server;->toJson()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 1892
    :cond_0
    sget-object v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Server List Final: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1893
    return-object v1
.end method

.method private updateBufferLevel(Lorg/json/JSONObject;)V
    .locals 1

    .prologue
    .line 1516
    const-string/jumbo v0, "vbuflbytes"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mVBufferBytes:I

    .line 1517
    const-string/jumbo v0, "abuflbytes"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mABufferBytes:I

    .line 1518
    const-string/jumbo v0, "currentBandwidth"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mCurrentBw:I

    .line 1519
    const-string/jumbo v0, "predictedFutureRebuffers"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mPredictedFutureRebuffers:I

    .line 1520
    return-void
.end method

.method private updateCdnDataForPlayback(JJLcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/RenderingStreamInfo;Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 1076
    sub-long v0, p1, p3

    long-to-int v0, v0

    .line 1077
    if-eqz p5, :cond_0

    iget-wide v2, p5, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/RenderingStreamInfo;->mMoffms:J

    cmp-long v1, v2, p3

    if-lez v1, :cond_0

    iget-wide v2, p5, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/RenderingStreamInfo;->mMoffms:J

    cmp-long v1, v2, p1

    if-gez v1, :cond_0

    .line 1078
    iget-wide v0, p5, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/RenderingStreamInfo;->mMoffms:J

    sub-long v0, p1, v0

    long-to-int v0, v0

    .line 1080
    :cond_0
    if-lez v0, :cond_1

    .line 1081
    sget-object v1, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "pbr: updatePlaybackPts (3): add "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "ms to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p5, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/RenderingStreamInfo;->mStreamData:Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/StreamData;

    iget-object v3, v3, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/StreamData;->mDlId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " on "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p5, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/RenderingStreamInfo;->mServer:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1083
    iget v1, p5, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/RenderingStreamInfo;->mServer:I

    iget-object v2, p5, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/RenderingStreamInfo;->mStreamData:Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/StreamData;

    iget-object v2, v2, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/StreamData;->mDlId:Ljava/lang/String;

    invoke-direct {p0, v1, v2, v0}, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->cdnAddData(ILjava/lang/String;I)V

    .line 1085
    :cond_1
    return-void
.end method

.method private updateCdnDataForPlaybackSwitches(JJLjava/util/ArrayList;ILjava/lang/String;Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter$RenderStreamSwitchCb;)I
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/RenderingStreamInfo;",
            ">;I",
            "Ljava/lang/String;",
            "Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter$RenderStreamSwitchCb;",
            ")I"
        }
    .end annotation

    .prologue
    .line 1043
    :goto_0
    invoke-virtual/range {p5 .. p5}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v3, p6, 0x1

    if-le v2, v3, :cond_3

    add-int/lit8 v2, p6, 0x1

    .line 1044
    move-object/from16 v0, p5

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/RenderingStreamInfo;

    iget-wide v2, v2, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/RenderingStreamInfo;->mMoffms:J

    cmp-long v2, p1, v2

    if-ltz v2, :cond_3

    .line 1045
    add-int/lit8 v2, p6, 0x1

    move-object/from16 v0, p5

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/RenderingStreamInfo;

    iget-wide v4, v2, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/RenderingStreamInfo;->mMoffms:J

    .line 1046
    sget-object v2, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "updatePlaybackPts (1): moffms: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v6, " oldpts:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v6, " pts:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1047
    sub-long v2, v4, p3

    long-to-int v3, v2

    .line 1048
    invoke-virtual/range {p5 .. p6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/RenderingStreamInfo;

    iget v6, v2, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/RenderingStreamInfo;->mServer:I

    .line 1049
    invoke-virtual/range {p5 .. p6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/RenderingStreamInfo;

    iget-object v2, v2, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/RenderingStreamInfo;->mStreamData:Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/StreamData;

    iget-object v7, v2, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/StreamData;->mDlId:Ljava/lang/String;

    .line 1051
    sget-object v2, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "updatePlaybackPts (1): add "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "ms to "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p7

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " on "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1052
    sget-object v8, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "updatePlaybackPts (1): size:"

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p5 .. p5}, Ljava/util/ArrayList;->size()I

    move-result v9

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v9, " current:"

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p6

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v9, " pts:"

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v9, " sequence pts"

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    add-int/lit8 v2, p6, 0x1

    .line 1053
    move-object/from16 v0, p5

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/RenderingStreamInfo;

    iget-wide v10, v2, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/RenderingStreamInfo;->mMoffms:J

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1052
    invoke-static {v8, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1054
    invoke-direct {p0, v6, v7, v3}, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->cdnAddData(ILjava/lang/String;I)V

    .line 1056
    sget-object v3, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "updatePlaybackPts (1): currentDlid: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {p5 .. p6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/RenderingStreamInfo;

    iget-object v2, v2, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/RenderingStreamInfo;->mStreamData:Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/StreamData;

    iget-object v2, v2, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/StreamData;->mDlId:Ljava/lang/String;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v6, "nextDlid: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    add-int/lit8 v2, p6, 0x1

    .line 1057
    move-object/from16 v0, p5

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/RenderingStreamInfo;

    iget-object v2, v2, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/RenderingStreamInfo;->mStreamData:Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/StreamData;

    iget-object v2, v2, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/StreamData;->mDlId:Ljava/lang/String;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1056
    invoke-static {v3, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1059
    if-eqz p8, :cond_0

    .line 1060
    sget-object v2, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "updatePlaybackPts (1): cb exists"

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1061
    :cond_0
    iget-boolean v2, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mIgnoreStreamSwitch:Z

    if-nez v2, :cond_1

    .line 1062
    sget-object v2, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "updatePlaybackPts (1): mIgnoreStreamSwitch is false"

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1064
    :cond_1
    if-eqz p8, :cond_2

    invoke-virtual/range {p5 .. p6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/RenderingStreamInfo;

    iget-object v2, v2, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/RenderingStreamInfo;->mStreamData:Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/StreamData;

    iget-object v3, v2, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/StreamData;->mDlId:Ljava/lang/String;

    add-int/lit8 v2, p6, 0x1

    move-object/from16 v0, p5

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/RenderingStreamInfo;

    iget-object v2, v2, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/RenderingStreamInfo;->mStreamData:Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/StreamData;

    iget-object v2, v2, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/StreamData;->mDlId:Ljava/lang/String;

    if-eq v3, v2, :cond_2

    iget-boolean v2, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mIgnoreStreamSwitch:Z

    if-nez v2, :cond_2

    .line 1066
    invoke-virtual/range {p5 .. p6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/RenderingStreamInfo;

    add-int/lit8 v3, p6, 0x1

    move-object/from16 v0, p5

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/RenderingStreamInfo;

    move-object/from16 v0, p8

    invoke-interface {v0, v2, v3}, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter$RenderStreamSwitchCb;->renderStreamSwitch(Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/RenderingStreamInfo;Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/RenderingStreamInfo;)V

    .line 1070
    :cond_2
    add-int/lit8 p6, p6, 0x1

    move-wide/from16 p3, v4

    .line 1071
    goto/16 :goto_0

    .line 1072
    :cond_3
    return p6
.end method

.method private updatePlaybackPts(Lorg/json/JSONObject;)V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 965
    sget-object v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updatePlaybackPts: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 966
    sget-object v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updatePlaybackPts:(currentRenderedVideo "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mCurrentRenderedVideo:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 968
    const-string/jumbo v0, "movieTime"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 970
    iget v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mCurrentRenderedVideo:I

    if-gez v0, :cond_2

    .line 971
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mVideoRenderingSequence:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 973
    sget-object v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "updatePlaybackPts before any streams selected"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1038
    :cond_0
    :goto_0
    return-void

    .line 976
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mVideoRenderingSequence:Ljava/util/ArrayList;

    invoke-direct {p0, v0, v2, v3}, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->findRenderingPosition(Ljava/util/ArrayList;J)I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mCurrentRenderedVideo:I

    .line 977
    iput-wide v2, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mPlaybackTS:J

    .line 979
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mVideoRenderingSequence:Ljava/util/ArrayList;

    iget v1, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mCurrentRenderedVideo:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/RenderingStreamInfo;

    iget-wide v0, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/RenderingStreamInfo;->mMoffms:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    .line 980
    sget-object v1, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updatePlaybackPts: adjust current video block offset at start "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mVideoRenderingSequence:Ljava/util/ArrayList;

    iget v5, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mCurrentRenderedVideo:I

    .line 981
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/RenderingStreamInfo;

    iget-wide v6, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/RenderingStreamInfo;->mMoffms:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, "->"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 980
    invoke-static {v1, v0}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 982
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mVideoRenderingSequence:Ljava/util/ArrayList;

    iget v1, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mCurrentRenderedVideo:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/RenderingStreamInfo;

    iput-wide v2, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/RenderingStreamInfo;->mMoffms:J

    .line 986
    :cond_2
    iget v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mCurrentRenderedAudio:I

    if-gez v0, :cond_3

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mAudioRenderingSequence:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_3

    .line 987
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mAudioRenderingSequence:Ljava/util/ArrayList;

    invoke-direct {p0, v0, v2, v3}, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->findRenderingPosition(Ljava/util/ArrayList;J)I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mCurrentRenderedAudio:I

    .line 988
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mAudioRenderingSequence:Ljava/util/ArrayList;

    iget v1, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mCurrentRenderedAudio:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/RenderingStreamInfo;

    iget-wide v0, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/RenderingStreamInfo;->mMoffms:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_3

    .line 989
    sget-object v1, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updatePlaybackPts: adjust current audio block offset at start "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mAudioRenderingSequence:Ljava/util/ArrayList;

    iget v5, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mCurrentRenderedAudio:I

    .line 990
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/RenderingStreamInfo;

    iget-wide v6, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/RenderingStreamInfo;->mMoffms:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, "->"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 989
    invoke-static {v1, v0}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 991
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mAudioRenderingSequence:Ljava/util/ArrayList;

    iget v1, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mCurrentRenderedAudio:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/RenderingStreamInfo;

    iput-wide v2, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/RenderingStreamInfo;->mMoffms:J

    .line 995
    :cond_3
    new-instance v9, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter$1;

    invoke-direct {v9, p0, v2, v3}, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter$1;-><init>(Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;J)V

    .line 1011
    sget-object v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updatePlaybackPts:  movieTime:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, " mPlaybackTS: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v4, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mPlaybackTS:J

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1012
    iget-wide v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mPlaybackTS:J

    cmp-long v0, v2, v0

    if-lez v0, :cond_0

    .line 1013
    iget-wide v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mPlaybackTS:J

    sub-long v0, v2, v0

    .line 1016
    iget-wide v4, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mMovieTotal:J

    add-long/2addr v0, v4

    iput-wide v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mMovieTotal:J

    .line 1018
    iget-wide v4, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mPlaybackTS:J

    iget-object v6, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mVideoRenderingSequence:Ljava/util/ArrayList;

    iget v7, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mCurrentRenderedVideo:I

    const-string/jumbo v8, "video"

    move-object v1, p0

    invoke-direct/range {v1 .. v9}, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->updateCdnDataForPlaybackSwitches(JJLjava/util/ArrayList;ILjava/lang/String;Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter$RenderStreamSwitchCb;)I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mCurrentRenderedVideo:I

    .line 1021
    iget v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mCurrentRenderedVideo:I

    if-ltz v0, :cond_4

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mVideoRenderingSequence:Ljava/util/ArrayList;

    iget v1, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mCurrentRenderedVideo:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/RenderingStreamInfo;

    move-object v6, v0

    .line 1022
    :goto_1
    iget-wide v4, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mPlaybackTS:J

    const-string/jumbo v7, "video"

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->updateCdnDataForPlayback(JJLcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/RenderingStreamInfo;Ljava/lang/String;)V

    .line 1023
    iget v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mCurrentRenderedVideo:I

    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mVideoRenderingSequence:Ljava/util/ArrayList;

    iget v4, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mCurrentRenderedVideo:I

    invoke-direct {p0, v1, v4, v2, v3}, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->cleanupRenderingSequence(Ljava/util/ArrayList;IJ)I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mCurrentRenderedVideo:I

    .line 1024
    sget-object v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updatePlaybackPts:( currentRenderedVideo"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mCurrentRenderedVideo:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, ") after cleanup"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1026
    iget v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mCurrentRenderedAudio:I

    if-ltz v0, :cond_6

    .line 1027
    iget-wide v4, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mPlaybackTS:J

    iget-object v6, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mAudioRenderingSequence:Ljava/util/ArrayList;

    iget v7, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mCurrentRenderedAudio:I

    const-string/jumbo v8, "audio"

    move-object v1, p0

    move-object v9, v10

    invoke-direct/range {v1 .. v9}, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->updateCdnDataForPlaybackSwitches(JJLjava/util/ArrayList;ILjava/lang/String;Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter$RenderStreamSwitchCb;)I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mCurrentRenderedAudio:I

    .line 1029
    iget v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mCurrentRenderedAudio:I

    if-ltz v0, :cond_5

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mAudioRenderingSequence:Ljava/util/ArrayList;

    iget v1, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mCurrentRenderedAudio:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/RenderingStreamInfo;

    move-object v6, v0

    .line 1030
    :goto_2
    iget-wide v4, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mPlaybackTS:J

    const-string/jumbo v7, "audio"

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->updateCdnDataForPlayback(JJLcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/RenderingStreamInfo;Ljava/lang/String;)V

    .line 1031
    iget v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mCurrentRenderedAudio:I

    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mAudioRenderingSequence:Ljava/util/ArrayList;

    iget v4, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mCurrentRenderedAudio:I

    invoke-direct {p0, v1, v4, v2, v3}, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->cleanupRenderingSequence(Ljava/util/ArrayList;IJ)I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mCurrentRenderedAudio:I

    .line 1036
    :goto_3
    iput-wide v2, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mPlaybackTS:J

    goto/16 :goto_0

    :cond_4
    move-object v6, v10

    .line 1021
    goto :goto_1

    :cond_5
    move-object v6, v10

    .line 1029
    goto :goto_2

    .line 1033
    :cond_6
    sget-object v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updatePlaybackPts: no audio stream: rendering sequence:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mAudioRenderingSequence:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method private updateStreamingPts(Lorg/json/JSONObject;)V
    .locals 4

    .prologue
    .line 1498
    const-string/jumbo v0, "trackIndex"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 1499
    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->manifestTracks:Lorg/json/JSONArray;

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    .line 1500
    const-string/jumbo v1, "type"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/MediaType;->valueOf(I)Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/MediaType;

    move-result-object v1

    sget-object v2, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/MediaType;->VIDEO_STREAM:Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/MediaType;

    if-ne v1, v2, :cond_0

    .line 1501
    const-string/jumbo v0, "movieTime"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mVStreamTS:J

    .line 1502
    sget-object v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateStreamingPts: update video streaming TS to"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "movieTime"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1512
    :goto_0
    return-void

    .line 1503
    :cond_0
    const-string/jumbo v1, "type"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/MediaType;->valueOf(I)Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/MediaType;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/MediaType;->AUDIO_STREAM:Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/MediaType;

    if-ne v0, v1, :cond_1

    .line 1504
    const-string/jumbo v0, "movieTime"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mAStreamTS:J

    .line 1505
    sget-object v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateStreamingPts: update audio streaming TS to"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "movieTime"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1507
    :cond_1
    sget-object v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "UNKNOWN Media Type streamingPts update"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public audioTrackSwitchComplete()V
    .locals 8

    .prologue
    .line 534
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mAudioTrackSwitchStarted:Z

    if-eqz v0, :cond_0

    .line 535
    invoke-static {}, Lcom/netflix/mediaclient/util/Time;->mono()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mUserPlay:J

    sub-long v2, v0, v2

    .line 536
    invoke-static {}, Lcom/netflix/mediaclient/util/Time;->mono()J

    move-result-wide v0

    iget-wide v4, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mAudioTrackSwitchStart:J

    sub-long v4, v0, v4

    .line 539
    :try_start_0
    new-instance v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/logblob/AudioSwitch;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mXid:Ljava/lang/String;

    iget-object v6, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mOldAudioTrackInfo:Lorg/json/JSONObject;

    iget-object v7, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mNewAudioTrackInfo:Lorg/json/JSONObject;

    invoke-direct/range {v0 .. v7}, Lcom/netflix/mediaclient/service/player/nrdpplayback/logblob/AudioSwitch;-><init>(Ljava/lang/String;JJLorg/json/JSONObject;Lorg/json/JSONObject;)V

    .line 540
    sget-object v1, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "BLOB: audioSwitch"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/nrdpplayback/logblob/AudioSwitch;->toJson()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mLoggingModule:Lcom/netflix/mediaclient/servicemgr/LogblobLogging;

    invoke-interface {v1, v0}, Lcom/netflix/mediaclient/servicemgr/LogblobLogging;->sendLogblob(Lcom/netflix/mediaclient/servicemgr/Logblob;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 545
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mAudioTrackSwitchStarted:Z

    .line 547
    :cond_0
    return-void

    .line 542
    :catch_0
    move-exception v0

    .line 543
    sget-object v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "audioTrackSwitchComplete, unable to log"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public audioTrackSwitchStarted(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, -0x1

    .line 511
    sget-object v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "audioTrackSwitchStarted: %s:%d, %s:%d"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    .line 512
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    const/4 v3, 0x2

    aput-object p3, v2, v3

    const/4 v3, 0x3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    .line 511
    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 513
    invoke-static {}, Lcom/netflix/mediaclient/util/Time;->mono()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mAudioTrackSwitchStart:J

    .line 514
    iput-boolean v6, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mAudioTrackSwitchStarted:Z

    .line 516
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mOldAudioTrackInfo:Lorg/json/JSONObject;

    .line 517
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mNewAudioTrackInfo:Lorg/json/JSONObject;

    .line 519
    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mOldAudioTrackInfo:Lorg/json/JSONObject;

    const-string/jumbo v1, "lang"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 520
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mOldAudioTrackInfo:Lorg/json/JSONObject;

    const-string/jumbo v1, "chan"

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 522
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mNewAudioTrackInfo:Lorg/json/JSONObject;

    const-string/jumbo v1, "lang"

    invoke-virtual {v0, v1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 523
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mNewAudioTrackInfo:Lorg/json/JSONObject;

    const-string/jumbo v1, "chan"

    invoke-virtual {v0, v1, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 527
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mAStreamingDlid:Ljava/lang/String;

    .line 528
    iput v5, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mAStreamingBitrateKbps:I

    .line 529
    iput v5, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mCurrentRenderedAudio:I

    .line 530
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mAudioRenderingSequence:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 531
    return-void

    .line 524
    :catch_0
    move-exception v0

    .line 525
    sget-object v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "audioTrackSwitchStarted, unable to set track info "

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public generateManifestProcessErrStack(Lcom/netflix/mediaclient/android/app/Status;)Lorg/json/JSONArray;
    .locals 4

    .prologue
    .line 2088
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 2089
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 2091
    :try_start_0
    sget-object v2, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter$TransactionType;->Authorization:Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter$TransactionType;

    invoke-direct {p0, v2, v0}, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->addTransactionName(Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter$TransactionType;Lorg/json/JSONObject;)V

    .line 2092
    const-string/jumbo v2, "errorcode"

    const-string/jumbo v3, "NFErr_MANIFEST_PROCESS"

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2093
    const-string/jumbo v2, "statuscode"

    invoke-interface {p1}, Lcom/netflix/mediaclient/android/app/Status;->getStatusCode()Lcom/netflix/mediaclient/StatusCode;

    move-result-object v3

    invoke-virtual {v3}, Lcom/netflix/mediaclient/StatusCode;->getValue()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 2094
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2098
    :goto_0
    return-object v1

    .line 2095
    :catch_0
    move-exception v0

    .line 2096
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public getCurrentBandwidth()I
    .locals 1

    .prologue
    .line 1915
    iget v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mCurrentBw:I

    return v0
.end method

.method public getLastNrdpErr()Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/NrdpErr;
    .locals 1

    .prologue
    .line 2109
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mNrdpErr:Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/NrdpErr;

    return-object v0
.end method

.method public handlePBREvent(Lcom/netflix/mediaclient/event/nrdp/player/PlaybackReporterEvent;)V
    .locals 11

    .prologue
    const/4 v3, 0x2

    const/4 v0, -0x1

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1743
    iget-boolean v4, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mNrdpPlayerReady:Z

    if-nez v4, :cond_0

    .line 1885
    :goto_0
    :pswitch_0
    return-void

    .line 1747
    :cond_0
    invoke-virtual {p1}, Lcom/netflix/mediaclient/event/nrdp/player/PlaybackReporterEvent;->getFuncname()Ljava/lang/String;

    move-result-object v4

    .line 1748
    invoke-virtual {p1}, Lcom/netflix/mediaclient/event/nrdp/player/PlaybackReporterEvent;->getArgs()Ljava/lang/String;

    move-result-object v5

    .line 1749
    invoke-virtual {p1}, Lcom/netflix/mediaclient/event/nrdp/player/PlaybackReporterEvent;->getEventTime()J

    move-result-wide v6

    .line 1750
    sget-object v8, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->TAG:Ljava/lang/String;

    const-string/jumbo v9, "fName: %s args: %s"

    new-array v10, v3, [Ljava/lang/Object;

    aput-object v4, v10, v1

    aput-object v5, v10, v2

    invoke-static {v8, v9, v10}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1752
    invoke-static {v5}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1754
    :try_start_0
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1756
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    :cond_1
    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 1864
    sget-object v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Func Name NOT implemented %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1867
    :catch_0
    move-exception v0

    .line 1868
    sget-object v1, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "JSONException"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1869
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 1756
    :sswitch_0
    :try_start_1
    const-string/jumbo v2, "playbackStateChange"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v0, v1

    goto :goto_1

    :sswitch_1
    const-string/jumbo v1, "playbackStarted"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v0, v2

    goto :goto_1

    :sswitch_2
    const-string/jumbo v1, "playbackFailure"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v0, v3

    goto :goto_1

    :sswitch_3
    const-string/jumbo v1, "playbackStreamChange"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x3

    goto :goto_1

    :sswitch_4
    const-string/jumbo v1, "playbackReposition"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x4

    goto :goto_1

    :sswitch_5
    const-string/jumbo v1, "updatePlaybackPts"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x5

    goto :goto_1

    :sswitch_6
    const-string/jumbo v1, "playbackStopped"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x6

    goto :goto_1

    :sswitch_7
    const-string/jumbo v1, "playbackClosed"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x7

    goto :goto_1

    :sswitch_8
    const-string/jumbo v1, "bufferingComplete"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v0, 0x8

    goto/16 :goto_1

    :sswitch_9
    const-string/jumbo v1, "streamingFailureReasons"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v0, 0x9

    goto/16 :goto_1

    :sswitch_a
    const-string/jumbo v1, "streamingFailure"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v0, 0xa

    goto/16 :goto_1

    :sswitch_b
    const-string/jumbo v1, "reportStreamingServerFailure"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v0, 0xb

    goto/16 :goto_1

    :sswitch_c
    const-string/jumbo v1, "streamSelected"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v0, 0xc

    goto/16 :goto_1

    :sswitch_d
    const-string/jumbo v1, "updateStreamingPts"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v0, 0xd

    goto/16 :goto_1

    :sswitch_e
    const-string/jumbo v1, "updateBufferLevel"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v0, 0xe

    goto/16 :goto_1

    :sswitch_f
    const-string/jumbo v1, "serverSelected"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v0, 0xf

    goto/16 :goto_1

    :sswitch_10
    const-string/jumbo v1, "audioTrackSwitchStarted"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v0, 0x10

    goto/16 :goto_1

    :sswitch_11
    const-string/jumbo v1, "connectionSelected1"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v0, 0x11

    goto/16 :goto_1

    :sswitch_12
    const-string/jumbo v1, "connectionSelected2"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v0, 0x12

    goto/16 :goto_1

    :sswitch_13
    const-string/jumbo v1, "reportKeyStartplayEvent"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v0, 0x13

    goto/16 :goto_1

    :sswitch_14
    const-string/jumbo v1, "pipeliningDisabled"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v0, 0x14

    goto/16 :goto_1

    :sswitch_15
    const-string/jumbo v1, "serverSwitch"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v0, 0x15

    goto/16 :goto_1

    :sswitch_16
    const-string/jumbo v1, "reportFileToken"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v0, 0x16

    goto/16 :goto_1

    :sswitch_17
    const-string/jumbo v1, "tcpConnect"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v0, 0x17

    goto/16 :goto_1

    :sswitch_18
    const-string/jumbo v1, "tcpFailure"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v0, 0x18

    goto/16 :goto_1

    :sswitch_19
    const-string/jumbo v1, "tcpDisconnect"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v0, 0x19

    goto/16 :goto_1

    :sswitch_1a
    const-string/jumbo v1, "downloadRecord"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v0, 0x1a

    goto/16 :goto_1

    :sswitch_1b
    const-string/jumbo v1, "aggregateTrace"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v0, 0x1b

    goto/16 :goto_1

    :sswitch_1c
    const-string/jumbo v1, "reportDnsLookupFailure"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v0, 0x1c

    goto/16 :goto_1

    .line 1758
    :pswitch_1
    invoke-direct {p0, v8, v6, v7}, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->playbackStateChange(Lorg/json/JSONObject;J)V

    goto/16 :goto_0

    .line 1761
    :pswitch_2
    invoke-direct {p0, v8, v6, v7}, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->playbackStarted(Lorg/json/JSONObject;J)V

    goto/16 :goto_0

    .line 1764
    :pswitch_3
    invoke-virtual {p0, v8, v6, v7}, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->playbackFailure(Lorg/json/JSONObject;J)V

    goto/16 :goto_0

    .line 1773
    :pswitch_4
    invoke-direct {p0, v8}, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->updatePlaybackPts(Lorg/json/JSONObject;)V

    goto/16 :goto_0

    .line 1776
    :pswitch_5
    invoke-direct {p0, v8, v6, v7}, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->playbackStopped(Lorg/json/JSONObject;J)V

    goto/16 :goto_0

    .line 1783
    :pswitch_6
    invoke-direct {p0, v8}, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->bufferingComplete(Lorg/json/JSONObject;)V

    goto/16 :goto_0

    .line 1786
    :pswitch_7
    invoke-direct {p0, v8}, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->streamingFailureReasons(Lorg/json/JSONObject;)V

    goto/16 :goto_0

    .line 1789
    :pswitch_8
    invoke-direct {p0, v8, v6, v7}, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->streamingFailure(Lorg/json/JSONObject;J)V

    goto/16 :goto_0

    .line 1795
    :pswitch_9
    invoke-direct {p0, v8}, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->streamSelected(Lorg/json/JSONObject;)V

    goto/16 :goto_0

    .line 1798
    :pswitch_a
    invoke-direct {p0, v8}, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->updateStreamingPts(Lorg/json/JSONObject;)V

    goto/16 :goto_0

    .line 1801
    :pswitch_b
    invoke-direct {p0, v8}, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->updateBufferLevel(Lorg/json/JSONObject;)V

    goto/16 :goto_0

    .line 1804
    :pswitch_c
    invoke-direct {p0, v8}, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->serverSelected(Lorg/json/JSONObject;)V

    goto/16 :goto_0

    .line 1816
    :pswitch_d
    invoke-direct {p0, v8}, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->reportKeyStartplayEvent(Lorg/json/JSONObject;)V

    goto/16 :goto_0

    .line 1819
    :pswitch_e
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->pipeliningDisabled()V

    goto/16 :goto_0

    .line 1822
    :pswitch_f
    invoke-direct {p0, v8}, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->serverSwitch(Lorg/json/JSONObject;)V

    goto/16 :goto_0

    .line 1825
    :pswitch_10
    invoke-direct {p0, v8}, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->reportFileToken(Lorg/json/JSONObject;)V

    goto/16 :goto_0

    .line 1828
    :pswitch_11
    invoke-direct {p0, v8}, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->tcpConnect(Lorg/json/JSONObject;)V

    goto/16 :goto_0

    .line 1831
    :pswitch_12
    invoke-direct {p0, v8}, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->tcpFailure(Lorg/json/JSONObject;)V

    goto/16 :goto_0

    .line 1834
    :pswitch_13
    invoke-direct {p0, v8}, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->tcpDisconnect(Lorg/json/JSONObject;)V

    goto/16 :goto_0

    .line 1837
    :pswitch_14
    invoke-direct {p0, v8}, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->downloadRecord(Lorg/json/JSONObject;)V

    goto/16 :goto_0

    .line 1840
    :pswitch_15
    invoke-direct {p0, v8}, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->aggregateTrace(Lorg/json/JSONObject;)V

    goto/16 :goto_0

    .line 1849
    :pswitch_16
    invoke-direct {p0, v8}, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->reportDnsLookupFailure(Lorg/json/JSONObject;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 1873
    :cond_2
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_1

    :cond_3
    :goto_2
    packed-switch v0, :pswitch_data_1

    .line 1881
    sget-object v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "Func Name NOT implemented %s no args"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v4, v2, v1

    invoke-static {v0, v3, v2}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto/16 :goto_0

    .line 1873
    :sswitch_1d
    const-string/jumbo v3, "bufferingStarted"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    move v0, v1

    goto :goto_2

    :sswitch_1e
    const-string/jumbo v3, "skipStarted"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    move v0, v2

    goto :goto_2

    .line 1875
    :pswitch_17
    invoke-direct {p0, v6, v7}, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->bufferingStarted(J)V

    goto/16 :goto_0

    .line 1878
    :pswitch_18
    invoke-direct {p0, v6, v7}, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->skipStarted(J)V

    goto/16 :goto_0

    .line 1756
    nop

    :sswitch_data_0
    .sparse-switch
        -0x6a01a96a -> :sswitch_d
        -0x69b04cf1 -> :sswitch_13
        -0x63496597 -> :sswitch_18
        -0x61ccd6a5 -> :sswitch_1c
        -0x4ed1d9c5 -> :sswitch_c
        -0x41ba76f5 -> :sswitch_3
        -0x3870b0a3 -> :sswitch_19
        -0x23b29105 -> :sswitch_8
        -0x20bb021a -> :sswitch_1
        -0x20532138 -> :sswitch_a
        -0x1ff6b0ce -> :sswitch_6
        -0x1b876268 -> :sswitch_10
        -0x109a2f29 -> :sswitch_4
        -0x8f1b8f7 -> :sswitch_16
        -0x6bc2448 -> :sswitch_11
        -0x6bc2447 -> :sswitch_12
        0x67c2c6 -> :sswitch_1b
        0xf95eeef -> :sswitch_2
        0x13cdd686 -> :sswitch_0
        0x162ee1c9 -> :sswitch_17
        0x21c5324b -> :sswitch_5
        0x23df9af9 -> :sswitch_1a
        0x2d8c6367 -> :sswitch_7
        0x512c92fe -> :sswitch_f
        0x6969f67b -> :sswitch_14
        0x6c2621d9 -> :sswitch_b
        0x72051457 -> :sswitch_15
        0x774dbec7 -> :sswitch_9
        0x7de7069b -> :sswitch_e
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_0
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
    .end packed-switch

    .line 1873
    :sswitch_data_1
    .sparse-switch
        0x32279602 -> :sswitch_1e
        0x6de3427f -> :sswitch_1d
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_17
        :pswitch_18
    .end packed-switch
.end method

.method public playbackClosed(Ljava/lang/String;JLjava/lang/String;)V
    .locals 6

    .prologue
    .line 1098
    iput-object p1, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mPlaybackStoppedReason:Ljava/lang/String;

    .line 1099
    iput-wide p2, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mMovieStop:J

    .line 1101
    iget-wide v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mMovieStop:J

    iget-wide v2, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mPlaybackTS:J

    sub-long/2addr v0, v2

    .line 1102
    sget-object v2, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "playbackClosed: close: movieTime: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mMovieStop:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", movieTotal: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mMovieTotal:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " + delta: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1105
    iget-wide v2, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mMovieTotal:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mMovieTotal:J

    .line 1110
    :try_start_0
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mPlaybackAborted:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mPlaybackError:Ljava/lang/String;

    const-string/jumbo v1, "NFErr_OK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1111
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->logPlaybackAborted()V

    .line 1114
    :cond_0
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mStartPlayLogged:Z

    if-eqz v0, :cond_1

    .line 1115
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mEndPlayLogged:Z

    if-nez v0, :cond_1

    .line 1116
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->logEndPlay()V

    .line 1117
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mEndPlayLogged:Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1127
    :cond_1
    :goto_0
    return-void

    .line 1121
    :catch_0
    move-exception v0

    .line 1122
    sget-object v1, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unable to log Endplay or AborPlayback"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lorg/json/JSONException;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public playbackFailure(Lorg/json/JSONObject;J)V
    .locals 8

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 849
    const-string/jumbo v0, "nferr"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 850
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v1, v5, :cond_1

    .line 874
    :cond_0
    :goto_0
    return-void

    .line 853
    :cond_1
    invoke-static {v0}, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/ErrorCodeGen;->peekCode(Lorg/json/JSONArray;)Ljava/lang/String;

    move-result-object v1

    .line 855
    const-string/jumbo v2, "NFErr_Aborted"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/ErrorCodeGen;->hasError(Lorg/json/JSONArray;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 856
    sget-object v1, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "playbackFailure ignored, aborted: %s"

    new-array v3, v5, [Ljava/lang/Object;

    aput-object v0, v3, v6

    invoke-static {v1, v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 860
    :cond_2
    iput-object v1, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mPlaybackError:Ljava/lang/String;

    .line 861
    const-string/jumbo v1, "NFErr_BR_ErrorData"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/ErrorCodeGen;->find(Lorg/json/JSONArray;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 862
    if-eqz v1, :cond_3

    .line 863
    const-string/jumbo v2, "nccperr"

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mNccpErr:I

    .line 864
    sget-object v1, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "playbackFailure, found NccpServerError in stack: %d"

    new-array v3, v5, [Ljava/lang/Object;

    iget v4, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mNccpErr:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v1, v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 867
    :cond_3
    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mErrorMsg:Ljava/lang/String;

    .line 869
    invoke-static {v0}, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/ErrorCodeGen;->getPlaybackFailureCode(Lorg/json/JSONArray;)Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/NrdpErr;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mNrdpErr:Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/NrdpErr;

    .line 870
    sget-object v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "getPlaybackFailureCode returned :%s "

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mNrdpErr:Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/NrdpErr;

    aput-object v3, v2, v6

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 873
    invoke-direct {p0, p2, p3}, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->logStartResumePlay(J)V

    goto :goto_0
.end method

.method public reportDrmSessionFailure(Ljava/lang/String;)Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/NrdpErr;
    .locals 5

    .prologue
    .line 2069
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mNrdpErr:Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/NrdpErr;

    .line 2070
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 2071
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 2072
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 2074
    :try_start_0
    sget-object v3, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter$TransactionType;->License:Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter$TransactionType;

    invoke-direct {p0, v3, v2}, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->addTransactionName(Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter$TransactionType;Lorg/json/JSONObject;)V

    .line 2075
    const-string/jumbo v3, "errorcode"

    const-string/jumbo v4, "NFErr_DRM_SESSION_EXCEPTION"

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2076
    const-string/jumbo v3, "exceptionstack"

    invoke-virtual {v2, v3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2077
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 2079
    const-string/jumbo v2, "nferr"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2080
    invoke-static {}, Lcom/netflix/mediaclient/util/Time;->mono()J

    move-result-wide v2

    invoke-virtual {p0, v0, v2, v3}, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->playbackFailure(Lorg/json/JSONObject;J)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2084
    :goto_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mNrdpErr:Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/NrdpErr;

    return-object v0

    .line 2081
    :catch_0
    move-exception v0

    .line 2082
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public reportTransactionFailure(Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackErrorCode;Lcom/netflix/mediaclient/android/app/Status;)Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/NrdpErr;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1930
    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mNrdpErr:Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/NrdpErr;

    .line 1932
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 1935
    sget-object v2, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter$2;->$SwitchMap$com$netflix$mediaclient$service$player$nrdpplayback$StreamingPlaybackErrorCode:[I

    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/player/nrdpplayback/StreamingPlaybackErrorCode;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 1954
    :goto_0
    :try_start_0
    const-string/jumbo v2, "nferr"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1955
    invoke-static {}, Lcom/netflix/mediaclient/util/Time;->mono()J

    move-result-wide v2

    invoke-virtual {p0, v1, v2, v3}, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->playbackFailure(Lorg/json/JSONObject;J)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1960
    :goto_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mNrdpErr:Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/NrdpErr;

    return-object v0

    .line 1938
    :pswitch_0
    invoke-virtual {p0, p2}, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->generateManifestProcessErrStack(Lcom/netflix/mediaclient/android/app/Status;)Lorg/json/JSONArray;

    move-result-object v0

    goto :goto_0

    .line 1941
    :pswitch_1
    sget-object v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter$TransactionType;->Authorization:Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter$TransactionType;

    invoke-direct {p0, v0, p2}, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->generateTransactionErrStack(Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter$TransactionType;Lcom/netflix/mediaclient/android/app/Status;)Lorg/json/JSONArray;

    move-result-object v0

    goto :goto_0

    .line 1944
    :pswitch_2
    sget-object v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter$TransactionType;->License:Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter$TransactionType;

    invoke-direct {p0, v0, p2}, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->generateTransactionErrStack(Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter$TransactionType;Lcom/netflix/mediaclient/android/app/Status;)Lorg/json/JSONArray;

    move-result-object v0

    goto :goto_0

    .line 1947
    :pswitch_3
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->generateDrmSessionNotAvailableStack()Lorg/json/JSONArray;

    move-result-object v0

    goto :goto_0

    .line 1956
    :catch_0
    move-exception v0

    .line 1957
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1

    .line 1935
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public setAuthenticationTime(J)V
    .locals 1

    .prologue
    .line 492
    iput-wide p1, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mAuthTimeMs:J

    .line 493
    return-void
.end method

.method public setFastplay(Z)V
    .locals 0

    .prologue
    .line 499
    iput-boolean p1, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mFastPlay:Z

    .line 500
    return-void
.end method

.method public setManifest(Lorg/json/JSONObject;)V
    .locals 17

    .prologue
    .line 375
    if-nez p1, :cond_0

    .line 376
    new-instance v2, Ljava/lang/NullPointerException;

    const-string/jumbo v3, "Manifest Object should not be null here"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 380
    :cond_0
    :try_start_0
    const-string/jumbo v2, "duration"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mDuration:J

    .line 381
    const-string/jumbo v2, "video_tracks"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 382
    const-string/jumbo v2, "audio_tracks"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 383
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v2, v5, :cond_1

    .line 384
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->manifestTracks:Lorg/json/JSONArray;

    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 383
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 386
    :cond_1
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 387
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->manifestTracks:Lorg/json/JSONArray;

    invoke-virtual {v4, v2}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 386
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 397
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->manifestTracks:Lorg/json/JSONArray;

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mManifestTracksLength:I

    .line 398
    const/4 v2, 0x0

    move v10, v2

    :goto_2
    move-object/from16 v0, p0

    iget v2, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mManifestTracksLength:I

    if-ge v10, v2, :cond_8

    .line 399
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->manifestTracks:Lorg/json/JSONArray;

    invoke-virtual {v2, v10}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 400
    const-string/jumbo v3, "streams"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v11

    .line 401
    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    .line 402
    const/4 v2, 0x0

    move v9, v2

    :goto_3
    invoke-virtual {v11}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v9, v2, :cond_7

    .line 403
    invoke-virtual {v11, v9}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 404
    const-string/jumbo v2, "downloadable_id"

    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 405
    const-string/jumbo v2, "bitrate"

    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x0

    move v3, v2

    .line 406
    :goto_4
    const-string/jumbo v2, "vmaf"

    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v2, 0x0

    .line 407
    :goto_5
    const-string/jumbo v5, "type"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v13

    .line 408
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mDownloadables:Ljava/util/Map;

    new-instance v7, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/Downloadable;

    invoke-static {v13}, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/MediaType;->valueOf(I)Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/MediaType;

    move-result-object v8

    invoke-direct {v7, v6, v3, v8, v2}, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/Downloadable;-><init>(Ljava/lang/String;ILcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/MediaType;I)V

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 410
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v5, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/StreamData;

    invoke-static {v13}, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/MediaType;->valueOf(I)Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/MediaType;

    move-result-object v7

    invoke-direct {v5, v6, v7, v3}, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/StreamData;-><init>(Ljava/lang/String;Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/MediaType;I)V

    invoke-virtual {v12, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 412
    const-string/jumbo v2, "urls"

    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v14

    .line 413
    const/4 v2, 0x0

    move v8, v2

    :goto_6
    invoke-virtual {v14}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v8, v2, :cond_6

    .line 414
    invoke-virtual {v14, v8}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 415
    const-string/jumbo v3, "url"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 416
    const-string/jumbo v4, "cdn_id"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    const-wide/16 v4, 0x0

    :goto_7
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    .line 417
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->urlMap:Ljava/util/Map;

    move-object/from16 v16, v0

    new-instance v2, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/UrlData;

    invoke-virtual {v15}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v13}, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/MediaType;->valueOf(I)Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/MediaType;

    move-result-object v7

    invoke-direct/range {v2 .. v7}, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/UrlData;-><init>(Ljava/lang/String;JLjava/lang/String;Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/MediaType;)V

    move-object/from16 v0, v16

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 419
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 420
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->hostMap:Ljava/util/Map;

    invoke-virtual {v2}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 413
    add-int/lit8 v2, v8, 0x1

    move v8, v2

    goto :goto_6

    .line 405
    :cond_3
    const-string/jumbo v2, "bitrate"

    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    move v3, v2

    goto/16 :goto_4

    .line 406
    :cond_4
    const-string/jumbo v2, "vmaf"

    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    goto/16 :goto_5

    .line 416
    :cond_5
    const-string/jumbo v4, "cdn_id"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    goto :goto_7

    .line 402
    :cond_6
    add-int/lit8 v2, v9, 0x1

    move v9, v2

    goto/16 :goto_3

    .line 423
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mManifestData:Ljava/util/Map;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 398
    add-int/lit8 v2, v10, 0x1

    move v10, v2

    goto/16 :goto_2

    .line 425
    :cond_8
    sget-object v2, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "SetManifest dowloadables: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mDownloadables:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    sget-object v2, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "SetManifest urlMap: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->urlMap:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    sget-object v2, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "SetManifest hostMap: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->hostMap:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    const-string/jumbo v2, "playbackContextId"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mPlaybackContextId:Ljava/lang/String;

    .line 430
    const-string/jumbo v2, "servers"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v12

    .line 431
    const-string/jumbo v2, "locations"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 434
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mServerList:Ljava/util/List;

    if-nez v2, :cond_9

    .line 435
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mServerList:Ljava/util/List;

    .line 437
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mLocationMap:Ljava/util/Map;

    if-nez v2, :cond_a

    .line 438
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mLocationMap:Ljava/util/Map;

    .line 440
    :cond_a
    const/4 v2, 0x0

    :goto_8
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v2, v4, :cond_b

    .line 441
    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 442
    const-string/jumbo v5, "key"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 443
    const-string/jumbo v6, "rank"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    .line 444
    const-string/jumbo v7, "weight"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    .line 445
    const-string/jumbo v8, "level"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 446
    new-instance v8, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/Location;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v8, v5, v6, v7, v4}, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/Location;-><init>(Ljava/lang/String;IILjava/lang/Integer;)V

    .line 447
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mLocationMap:Ljava/util/Map;

    invoke-interface {v4, v5, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 440
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 450
    :cond_b
    const v10, 0x7fffffff

    .line 452
    const/4 v2, 0x0

    move v11, v2

    :goto_9
    invoke-virtual {v12}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v11, v2, :cond_d

    .line 453
    invoke-virtual {v12, v11}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 454
    const-string/jumbo v3, "name"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 455
    const-string/jumbo v3, "id"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 456
    const-string/jumbo v5, "rank"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    .line 457
    const-string/jumbo v5, "lowgrade"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_c

    const/4 v5, 0x0

    .line 458
    :goto_a
    const-string/jumbo v6, "key"

    const/4 v8, 0x0

    invoke-virtual {v2, v6, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 460
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mLocationMap:Ljava/util/Map;

    invoke-interface {v2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/Location;

    move-object v9, v0

    .line 461
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mServerList:Ljava/util/List;

    new-instance v2, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/Server;

    iget v8, v9, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/Location;->weight:I

    iget-object v9, v9, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/Location;->level:Ljava/lang/Integer;

    invoke-direct/range {v2 .. v9}, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/Server;-><init>(ILjava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;IILjava/lang/Integer;)V

    invoke-interface {v13, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 464
    if-ge v7, v10, :cond_e

    .line 466
    move-object/from16 v0, p0

    iput v3, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mPrimaryCdnId:I

    .line 452
    :goto_b
    add-int/lit8 v2, v11, 0x1

    move v11, v2

    move v10, v7

    goto :goto_9

    .line 457
    :cond_c
    const-string/jumbo v5, "lowgrade"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    goto :goto_a

    .line 471
    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mServerList:Ljava/util/List;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->toJsonArray(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mCdnInfoA:Lorg/json/JSONArray;

    .line 472
    sget-object v2, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "cdninfo: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mCdnInfo:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_1

    .line 479
    :goto_c
    return-void

    .line 474
    :catch_0
    move-exception v2

    .line 475
    sget-object v3, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "Invalid Manifest Unable to build Manifest Map"

    invoke-static {v3, v4, v2}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_c

    .line 476
    :catch_1
    move-exception v2

    .line 477
    sget-object v3, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "Invalid URL: "

    invoke-static {v3, v4, v2}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_c

    :cond_e
    move v7, v10

    goto :goto_b
.end method

.method public setManifestCacheHit(JLjava/lang/String;)V
    .locals 1

    .prologue
    .line 486
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mManifestCacheHit:Z

    .line 487
    iput-wide p1, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mManifestAge:J

    .line 488
    iput-object p3, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mManifestSource:Ljava/lang/String;

    .line 489
    return-void
.end method

.method public setMovieId(I)V
    .locals 2

    .prologue
    .line 361
    int-to-long v0, p1

    iput-wide v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mMovieId:J

    .line 362
    return-void
.end method

.method public setNrdPlayerReady()V
    .locals 1

    .prologue
    .line 372
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mNrdpPlayerReady:Z

    return-void
.end method

.method public setStreamingConfig(Lorg/json/JSONObject;)V
    .locals 4

    .prologue
    .line 258
    iput-object p1, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mStreamingConfig:Lorg/json/JSONObject;

    .line 259
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mStreamingConfig:Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    .line 261
    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mStreamingConfig:Lorg/json/JSONObject;

    const-string/jumbo v1, "groupName"

    const-string/jumbo v2, "control"

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/util/JsonUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mGroupName:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 265
    :cond_0
    :goto_0
    return-void

    .line 262
    :catch_0
    move-exception v0

    .line 263
    sget-object v1, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unable to get default streamingConfig"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setTrackingId(J)V
    .locals 1

    .prologue
    .line 365
    iput-wide p1, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mTrackingId:J

    .line 366
    return-void
.end method

.method public setUsedLDL()V
    .locals 1

    .prologue
    .line 482
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mUsedLDL:Z

    .line 483
    return-void
.end method

.method public setVideoPlaybackQualStats(Lcom/netflix/mediaclient/media/JPlayer/VideoPlaybackQualStat;)V
    .locals 1

    .prologue
    .line 355
    iput-object p1, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mVideoPlaybackQualStat:Lcom/netflix/mediaclient/media/JPlayer/VideoPlaybackQualStat;

    .line 356
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/netflix/mediaclient/media/JPlayer/VideoPlaybackQualStat;->disableVP9IfRequired()Z

    move-result v0

    :goto_0
    iput-boolean v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mDisableVP9Decoder:Z

    .line 357
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/netflix/mediaclient/media/JPlayer/VideoPlaybackQualStat;->getDecoderName()Ljava/lang/String;

    move-result-object v0

    :goto_1
    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mVideoDecoderName:Ljava/lang/String;

    .line 358
    return-void

    .line 356
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 357
    :cond_1
    const-string/jumbo v0, ""

    goto :goto_1
.end method

.method public updateNetworkInterfaceParams()V
    .locals 8

    .prologue
    .line 244
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/ConnectivityUtils;->getActiveNetworkInfo(Landroid/content/Context;)Landroid/net/NetworkInfo;

    move-result-object v0

    .line 245
    iget v1, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mNetworkCount:I

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mNetworkType:Ljava/lang/String;

    invoke-static {v1}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 246
    invoke-static {}, Lcom/netflix/mediaclient/util/Time;->mono()J

    move-result-wide v2

    .line 247
    const-wide/16 v4, 0x0

    iget-wide v6, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mNetworkTime:J

    sub-long v6, v2, v6

    invoke-direct {p0, v4, v5, v6, v7}, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->addNetworkData(JJ)V

    .line 248
    iput-wide v2, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mNetworkTime:J

    .line 251
    :cond_0
    if-eqz v0, :cond_1

    .line 252
    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/netflix/mediaclient/util/ConnectivityUtils;->getNetworkTypePerLoggingSpecification(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mNetworkType:Ljava/lang/String;

    .line 253
    invoke-static {v0}, Lcom/netflix/mediaclient/service/net/LogMobileType;->toLogMobileType(Landroid/net/NetworkInfo;)Lcom/netflix/mediaclient/service/net/LogMobileType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/net/LogMobileType;->getDesc()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mNetworkSpec:Ljava/lang/String;

    .line 255
    :cond_1
    return-void
.end method

.method public userPause()V
    .locals 2

    .prologue
    .line 312
    sget-object v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "userPause called"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    invoke-static {}, Lcom/netflix/mediaclient/util/Time;->mono()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mUserStoppedTime:J

    .line 314
    return-void
.end method

.method public userPlay(JJJLjava/lang/String;Ljava/util/Map;J)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJJ",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;J)V"
        }
    .end annotation

    .prologue
    .line 269
    iput-wide p1, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mMovieId:J

    .line 270
    iput-object p8, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mPlayerControlPlayEvents:Ljava/util/Map;

    .line 271
    const-wide/16 v0, 0x0

    cmp-long v0, p9, v0

    if-lez v0, :cond_0

    :goto_0
    iput-wide p9, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mUserPlay:J

    .line 272
    iput-wide p5, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mSdkPlayDelay:J

    .line 274
    iput-object p7, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mUiLabel:Ljava/lang/String;

    .line 275
    iget-wide v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mUserPlay:J

    iput-wide v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mPlayDelay:J

    .line 276
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mAudioTrackSwitchStarted:Z

    .line 277
    invoke-static {}, Lcom/netflix/mediaclient/util/Time;->mono()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mLastReportTime:J

    .line 278
    invoke-static {}, Lcom/netflix/mediaclient/util/Time;->mono()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mLastDlReportTime:J

    .line 279
    invoke-static {}, Lcom/netflix/mediaclient/util/Time;->mono()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mLastServerSelTime:J

    .line 281
    const-string/jumbo v0, "NFErr_OK"

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mPlaybackStoppedReason:Ljava/lang/String;

    .line 282
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mUserStoppedTime:J

    .line 283
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mStartPlayLogged:Z

    .line 284
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mVStreamingDlid:Ljava/lang/String;

    .line 285
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mAStreamingDlid:Ljava/lang/String;

    .line 287
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mVideoRenderingSequence:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 288
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mAudioRenderingSequence:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 289
    const/4 v0, -0x1

    iput v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mCurrentRenderedVideo:I

    .line 290
    const/4 v0, -0x1

    iput v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mCurrentRenderedAudio:I

    .line 292
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mDownloadables:Ljava/util/Map;

    .line 293
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mUserStoppedReason:Ljava/lang/String;

    .line 294
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mPlaybackAborted:Z

    .line 295
    const-string/jumbo v0, "NFErr_OK"

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mPlaybackError:Ljava/lang/String;

    .line 299
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mBrokenDlid:Ljava/lang/String;

    .line 300
    const/4 v0, 0x1

    iput v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mStreamingFailureCode:I

    .line 302
    iput-wide p3, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mMovieStart:J

    .line 303
    iput-wide p3, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mPlaybackTS:J

    .line 309
    return-void

    :cond_0
    move-wide p9, p5

    .line 271
    goto :goto_0
.end method

.method public userStop(Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/StopReason;)V
    .locals 6

    .prologue
    const/4 v5, -0x1

    const/4 v4, 0x1

    .line 322
    sget-object v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "userstop called reason = %s"

    new-array v2, v4, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 323
    iget-wide v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mUserStoppedTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 324
    invoke-static {}, Lcom/netflix/mediaclient/util/Time;->mono()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mUserStoppedTime:J

    .line 326
    :cond_0
    iput v5, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mCurrentRenderedVideo:I

    .line 327
    iput v5, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mCurrentRenderedAudio:I

    .line 329
    sget-object v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/StopReason;->SKIP:Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/StopReason;

    if-ne p1, v0, :cond_1

    .line 330
    iput-boolean v4, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mIgnoreStreamSwitch:Z

    .line 333
    :cond_1
    sget-object v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/StopReason;->STOPPED:Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/StopReason;

    if-ne p1, v0, :cond_3

    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mPlaybackStarted:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mPlaybackError:Ljava/lang/String;

    const-string/jumbo v1, "NFErr_OK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 334
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mPlaybackStoppedReason:Ljava/lang/String;

    const-string/jumbo v1, "NFErr_OK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 336
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mPlaybackStoppedReason:Ljava/lang/String;

    const-string/jumbo v1, "NFErr_Rebuffer"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 337
    const-string/jumbo v0, "rebuffer"

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mAbortedReason:Ljava/lang/String;

    .line 344
    :cond_2
    :goto_0
    invoke-static {}, Lcom/netflix/mediaclient/util/Time;->mono()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mAbortedTime:J

    .line 345
    sget-object v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "userstop setting = this._playbackAborted = true"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    iput-boolean v4, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mPlaybackAborted:Z

    .line 348
    :cond_3
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/StopReason;->name()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mUserStoppedReason:Ljava/lang/String;

    .line 349
    return-void

    .line 338
    :cond_4
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mUserStoppedReason:Ljava/lang/String;

    const-string/jumbo v1, "skip"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 339
    const-string/jumbo v0, "skip"

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mAbortedReason:Ljava/lang/String;

    goto :goto_0

    .line 340
    :cond_5
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mUserStoppedReason:Ljava/lang/String;

    const-string/jumbo v1, "seek"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 341
    const-string/jumbo v0, "repos"

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mAbortedReason:Ljava/lang/String;

    goto :goto_0
.end method

.method public userUnPause()V
    .locals 2

    .prologue
    .line 317
    sget-object v0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "userUnpause called"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/PlaybackReporter;->mUserStoppedTime:J

    .line 319
    return-void
.end method
