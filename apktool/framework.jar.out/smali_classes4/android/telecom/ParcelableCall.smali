.class public final Landroid/telecom/ParcelableCall;
.super Ljava/lang/Object;
.source "ParcelableCall.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telecom/ParcelableCall$ParcelableCallBuilder;
    }
.end annotation


# static fields
.field public static final greylist-max-p CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telecom/ParcelableCall;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final greylist-max-o mAccountHandle:Landroid/telecom/PhoneAccountHandle;

.field private final blacklist mActiveChildCallId:Ljava/lang/String;

.field private final blacklist mAssociatedUser:Landroid/os/UserHandle;

.field private final blacklist mCallDirection:I

.field private final greylist-max-o mCallerDisplayName:Ljava/lang/String;

.field private final greylist-max-o mCallerDisplayNamePresentation:I

.field private final blacklist mCallerNumberVerificationStatus:I

.field private final greylist-max-o mCannedSmsResponses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mCapabilities:I

.field private final greylist-max-o mChildCallIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mConferenceableCallIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mConnectTimeMillis:J

.field private final blacklist mContactDisplayName:Ljava/lang/String;

.field private final blacklist mContactPhotoUri:Landroid/net/Uri;

.field private final greylist-max-o mCreationTimeMillis:J

.field private final greylist-max-o mDisconnectCause:Landroid/telecom/DisconnectCause;

.field private final greylist-max-o mExtras:Landroid/os/Bundle;

.field private final greylist-max-o mGatewayInfo:Landroid/telecom/GatewayInfo;

.field private final greylist-max-o mHandle:Landroid/net/Uri;

.field private final greylist-max-o mHandlePresentation:I

.field private final greylist-max-o mId:Ljava/lang/String;

.field private final greylist-max-o mIntentExtras:Landroid/os/Bundle;

.field private final greylist-max-o mIsRttCallChanged:Z

.field private final greylist-max-o mIsVideoCallProviderChanged:Z

.field private final greylist-max-o mParentCallId:Ljava/lang/String;

.field private final greylist-max-o mProperties:I

.field private final greylist-max-o mRttCall:Landroid/telecom/ParcelableRttCall;

.field private final greylist-max-o mState:I

.field private final greylist-max-o mStatusHints:Landroid/telecom/StatusHints;

.field private final greylist-max-o mSupportedAudioRoutes:I

.field private greylist-max-o mVideoCall:Landroid/telecom/VideoCallImpl;

.field private final greylist-max-o mVideoCallProvider:Lcom/android/internal/telecom/IVideoProvider;

.field private final greylist-max-o mVideoState:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmAccountHandle(Landroid/telecom/ParcelableCall;)Landroid/telecom/PhoneAccountHandle;
    .locals 0

    iget-object p0, p0, Landroid/telecom/ParcelableCall;->mAccountHandle:Landroid/telecom/PhoneAccountHandle;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmActiveChildCallId(Landroid/telecom/ParcelableCall;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/telecom/ParcelableCall;->mActiveChildCallId:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmAssociatedUser(Landroid/telecom/ParcelableCall;)Landroid/os/UserHandle;
    .locals 0

    iget-object p0, p0, Landroid/telecom/ParcelableCall;->mAssociatedUser:Landroid/os/UserHandle;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCallDirection(Landroid/telecom/ParcelableCall;)I
    .locals 0

    iget p0, p0, Landroid/telecom/ParcelableCall;->mCallDirection:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCallerDisplayName(Landroid/telecom/ParcelableCall;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/telecom/ParcelableCall;->mCallerDisplayName:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCallerDisplayNamePresentation(Landroid/telecom/ParcelableCall;)I
    .locals 0

    iget p0, p0, Landroid/telecom/ParcelableCall;->mCallerDisplayNamePresentation:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCallerNumberVerificationStatus(Landroid/telecom/ParcelableCall;)I
    .locals 0

    iget p0, p0, Landroid/telecom/ParcelableCall;->mCallerNumberVerificationStatus:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCannedSmsResponses(Landroid/telecom/ParcelableCall;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Landroid/telecom/ParcelableCall;->mCannedSmsResponses:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCapabilities(Landroid/telecom/ParcelableCall;)I
    .locals 0

    iget p0, p0, Landroid/telecom/ParcelableCall;->mCapabilities:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmChildCallIds(Landroid/telecom/ParcelableCall;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Landroid/telecom/ParcelableCall;->mChildCallIds:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmConferenceableCallIds(Landroid/telecom/ParcelableCall;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Landroid/telecom/ParcelableCall;->mConferenceableCallIds:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmConnectTimeMillis(Landroid/telecom/ParcelableCall;)J
    .locals 2

    iget-wide v0, p0, Landroid/telecom/ParcelableCall;->mConnectTimeMillis:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmContactDisplayName(Landroid/telecom/ParcelableCall;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/telecom/ParcelableCall;->mContactDisplayName:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmContactPhotoUri(Landroid/telecom/ParcelableCall;)Landroid/net/Uri;
    .locals 0

    iget-object p0, p0, Landroid/telecom/ParcelableCall;->mContactPhotoUri:Landroid/net/Uri;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCreationTimeMillis(Landroid/telecom/ParcelableCall;)J
    .locals 2

    iget-wide v0, p0, Landroid/telecom/ParcelableCall;->mCreationTimeMillis:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDisconnectCause(Landroid/telecom/ParcelableCall;)Landroid/telecom/DisconnectCause;
    .locals 0

    iget-object p0, p0, Landroid/telecom/ParcelableCall;->mDisconnectCause:Landroid/telecom/DisconnectCause;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmExtras(Landroid/telecom/ParcelableCall;)Landroid/os/Bundle;
    .locals 0

    iget-object p0, p0, Landroid/telecom/ParcelableCall;->mExtras:Landroid/os/Bundle;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmGatewayInfo(Landroid/telecom/ParcelableCall;)Landroid/telecom/GatewayInfo;
    .locals 0

    iget-object p0, p0, Landroid/telecom/ParcelableCall;->mGatewayInfo:Landroid/telecom/GatewayInfo;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmHandle(Landroid/telecom/ParcelableCall;)Landroid/net/Uri;
    .locals 0

    iget-object p0, p0, Landroid/telecom/ParcelableCall;->mHandle:Landroid/net/Uri;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmHandlePresentation(Landroid/telecom/ParcelableCall;)I
    .locals 0

    iget p0, p0, Landroid/telecom/ParcelableCall;->mHandlePresentation:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmId(Landroid/telecom/ParcelableCall;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/telecom/ParcelableCall;->mId:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIntentExtras(Landroid/telecom/ParcelableCall;)Landroid/os/Bundle;
    .locals 0

    iget-object p0, p0, Landroid/telecom/ParcelableCall;->mIntentExtras:Landroid/os/Bundle;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsRttCallChanged(Landroid/telecom/ParcelableCall;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/telecom/ParcelableCall;->mIsRttCallChanged:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsVideoCallProviderChanged(Landroid/telecom/ParcelableCall;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/telecom/ParcelableCall;->mIsVideoCallProviderChanged:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmParentCallId(Landroid/telecom/ParcelableCall;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/telecom/ParcelableCall;->mParentCallId:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmProperties(Landroid/telecom/ParcelableCall;)I
    .locals 0

    iget p0, p0, Landroid/telecom/ParcelableCall;->mProperties:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmRttCall(Landroid/telecom/ParcelableCall;)Landroid/telecom/ParcelableRttCall;
    .locals 0

    iget-object p0, p0, Landroid/telecom/ParcelableCall;->mRttCall:Landroid/telecom/ParcelableRttCall;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmState(Landroid/telecom/ParcelableCall;)I
    .locals 0

    iget p0, p0, Landroid/telecom/ParcelableCall;->mState:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmStatusHints(Landroid/telecom/ParcelableCall;)Landroid/telecom/StatusHints;
    .locals 0

    iget-object p0, p0, Landroid/telecom/ParcelableCall;->mStatusHints:Landroid/telecom/StatusHints;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSupportedAudioRoutes(Landroid/telecom/ParcelableCall;)I
    .locals 0

    iget p0, p0, Landroid/telecom/ParcelableCall;->mSupportedAudioRoutes:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmVideoCallProvider(Landroid/telecom/ParcelableCall;)Lcom/android/internal/telecom/IVideoProvider;
    .locals 0

    iget-object p0, p0, Landroid/telecom/ParcelableCall;->mVideoCallProvider:Lcom/android/internal/telecom/IVideoProvider;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmVideoState(Landroid/telecom/ParcelableCall;)I
    .locals 0

    iget p0, p0, Landroid/telecom/ParcelableCall;->mVideoState:I

    return p0
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/telecom/ParcelableCall$1;

    invoke-direct {v0}, Landroid/telecom/ParcelableCall$1;-><init>()V

    sput-object v0, Landroid/telecom/ParcelableCall;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;ILandroid/telecom/DisconnectCause;Ljava/util/List;IIIJLandroid/net/Uri;ILjava/lang/String;ILandroid/telecom/GatewayInfo;Landroid/telecom/PhoneAccountHandle;ZLcom/android/internal/telecom/IVideoProvider;ZLandroid/telecom/ParcelableRttCall;Ljava/lang/String;Ljava/util/List;Landroid/telecom/StatusHints;ILjava/util/List;Landroid/os/Bundle;Landroid/os/Bundle;JIILjava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/os/UserHandle;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Landroid/telecom/DisconnectCause;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;IIIJ",
            "Landroid/net/Uri;",
            "I",
            "Ljava/lang/String;",
            "I",
            "Landroid/telecom/GatewayInfo;",
            "Landroid/telecom/PhoneAccountHandle;",
            "Z",
            "Lcom/android/internal/telecom/IVideoProvider;",
            "Z",
            "Landroid/telecom/ParcelableRttCall;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/telecom/StatusHints;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/os/Bundle;",
            "Landroid/os/Bundle;",
            "JII",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/net/Uri;",
            "Landroid/os/UserHandle;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telecom/ParcelableCall;->mId:Ljava/lang/String;

    iput p2, p0, Landroid/telecom/ParcelableCall;->mState:I

    iput-object p3, p0, Landroid/telecom/ParcelableCall;->mDisconnectCause:Landroid/telecom/DisconnectCause;

    iput-object p4, p0, Landroid/telecom/ParcelableCall;->mCannedSmsResponses:Ljava/util/List;

    iput p5, p0, Landroid/telecom/ParcelableCall;->mCapabilities:I

    iput p6, p0, Landroid/telecom/ParcelableCall;->mProperties:I

    iput p7, p0, Landroid/telecom/ParcelableCall;->mSupportedAudioRoutes:I

    iput-wide p8, p0, Landroid/telecom/ParcelableCall;->mConnectTimeMillis:J

    iput-object p10, p0, Landroid/telecom/ParcelableCall;->mHandle:Landroid/net/Uri;

    iput p11, p0, Landroid/telecom/ParcelableCall;->mHandlePresentation:I

    iput-object p12, p0, Landroid/telecom/ParcelableCall;->mCallerDisplayName:Ljava/lang/String;

    iput p13, p0, Landroid/telecom/ParcelableCall;->mCallerDisplayNamePresentation:I

    iput-object p14, p0, Landroid/telecom/ParcelableCall;->mGatewayInfo:Landroid/telecom/GatewayInfo;

    iput-object p15, p0, Landroid/telecom/ParcelableCall;->mAccountHandle:Landroid/telecom/PhoneAccountHandle;

    move/from16 p1, p16

    iput-boolean p1, p0, Landroid/telecom/ParcelableCall;->mIsVideoCallProviderChanged:Z

    move-object/from16 p1, p17

    iput-object p1, p0, Landroid/telecom/ParcelableCall;->mVideoCallProvider:Lcom/android/internal/telecom/IVideoProvider;

    move/from16 p1, p18

    iput-boolean p1, p0, Landroid/telecom/ParcelableCall;->mIsRttCallChanged:Z

    move-object/from16 p1, p19

    iput-object p1, p0, Landroid/telecom/ParcelableCall;->mRttCall:Landroid/telecom/ParcelableRttCall;

    move-object/from16 p1, p20

    iput-object p1, p0, Landroid/telecom/ParcelableCall;->mParentCallId:Ljava/lang/String;

    move-object/from16 p1, p21

    iput-object p1, p0, Landroid/telecom/ParcelableCall;->mChildCallIds:Ljava/util/List;

    move-object/from16 p1, p22

    iput-object p1, p0, Landroid/telecom/ParcelableCall;->mStatusHints:Landroid/telecom/StatusHints;

    move/from16 p1, p23

    iput p1, p0, Landroid/telecom/ParcelableCall;->mVideoState:I

    invoke-static/range {p24 .. p24}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Landroid/telecom/ParcelableCall;->mConferenceableCallIds:Ljava/util/List;

    move-object/from16 p1, p25

    iput-object p1, p0, Landroid/telecom/ParcelableCall;->mIntentExtras:Landroid/os/Bundle;

    move-object/from16 p1, p26

    iput-object p1, p0, Landroid/telecom/ParcelableCall;->mExtras:Landroid/os/Bundle;

    move-wide/from16 p1, p27

    iput-wide p1, p0, Landroid/telecom/ParcelableCall;->mCreationTimeMillis:J

    move/from16 p1, p29

    iput p1, p0, Landroid/telecom/ParcelableCall;->mCallDirection:I

    move/from16 p1, p30

    iput p1, p0, Landroid/telecom/ParcelableCall;->mCallerNumberVerificationStatus:I

    move-object/from16 p1, p31

    iput-object p1, p0, Landroid/telecom/ParcelableCall;->mContactDisplayName:Ljava/lang/String;

    move-object/from16 p1, p32

    iput-object p1, p0, Landroid/telecom/ParcelableCall;->mActiveChildCallId:Ljava/lang/String;

    move-object/from16 p1, p33

    iput-object p1, p0, Landroid/telecom/ParcelableCall;->mContactPhotoUri:Landroid/net/Uri;

    move-object/from16 p1, p34

    iput-object p1, p0, Landroid/telecom/ParcelableCall;->mAssociatedUser:Landroid/os/UserHandle;

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public greylist-max-o getAccountHandle()Landroid/telecom/PhoneAccountHandle;
    .locals 0

    iget-object p0, p0, Landroid/telecom/ParcelableCall;->mAccountHandle:Landroid/telecom/PhoneAccountHandle;

    return-object p0
.end method

.method public blacklist getActiveChildCallId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/telecom/ParcelableCall;->mActiveChildCallId:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist getAssociatedUser()Landroid/os/UserHandle;
    .locals 0

    iget-object p0, p0, Landroid/telecom/ParcelableCall;->mAssociatedUser:Landroid/os/UserHandle;

    return-object p0
.end method

.method public blacklist getCallDirection()I
    .locals 0

    iget p0, p0, Landroid/telecom/ParcelableCall;->mCallDirection:I

    return p0
.end method

.method public greylist-max-o getCallerDisplayName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/telecom/ParcelableCall;->mCallerDisplayName:Ljava/lang/String;

    return-object p0
.end method

.method public greylist-max-o getCallerDisplayNamePresentation()I
    .locals 0

    iget p0, p0, Landroid/telecom/ParcelableCall;->mCallerDisplayNamePresentation:I

    return p0
.end method

.method public blacklist getCallerNumberVerificationStatus()I
    .locals 0

    iget p0, p0, Landroid/telecom/ParcelableCall;->mCallerNumberVerificationStatus:I

    return p0
.end method

.method public greylist-max-o getCannedSmsResponses()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroid/telecom/ParcelableCall;->mCannedSmsResponses:Ljava/util/List;

    return-object p0
.end method

.method public greylist-max-o getCapabilities()I
    .locals 0

    iget p0, p0, Landroid/telecom/ParcelableCall;->mCapabilities:I

    return p0
.end method

.method public greylist-max-o getChildCallIds()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroid/telecom/ParcelableCall;->mChildCallIds:Ljava/util/List;

    return-object p0
.end method

.method public greylist-max-o getConferenceableCallIds()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroid/telecom/ParcelableCall;->mConferenceableCallIds:Ljava/util/List;

    return-object p0
.end method

.method public greylist-max-p getConnectTimeMillis()J
    .locals 2

    iget-wide v0, p0, Landroid/telecom/ParcelableCall;->mConnectTimeMillis:J

    return-wide v0
.end method

.method public blacklist getContactDisplayName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/telecom/ParcelableCall;->mContactDisplayName:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist getContactPhotoUri()Landroid/net/Uri;
    .locals 0

    iget-object p0, p0, Landroid/telecom/ParcelableCall;->mContactPhotoUri:Landroid/net/Uri;

    return-object p0
.end method

.method public greylist-max-o getCreationTimeMillis()J
    .locals 2

    iget-wide v0, p0, Landroid/telecom/ParcelableCall;->mCreationTimeMillis:J

    return-wide v0
.end method

.method public greylist-max-p getDisconnectCause()Landroid/telecom/DisconnectCause;
    .locals 0

    iget-object p0, p0, Landroid/telecom/ParcelableCall;->mDisconnectCause:Landroid/telecom/DisconnectCause;

    return-object p0
.end method

.method public greylist-max-o getExtras()Landroid/os/Bundle;
    .locals 0

    iget-object p0, p0, Landroid/telecom/ParcelableCall;->mExtras:Landroid/os/Bundle;

    return-object p0
.end method

.method public greylist-max-o getGatewayInfo()Landroid/telecom/GatewayInfo;
    .locals 0

    iget-object p0, p0, Landroid/telecom/ParcelableCall;->mGatewayInfo:Landroid/telecom/GatewayInfo;

    return-object p0
.end method

.method public greylist-max-p getHandle()Landroid/net/Uri;
    .locals 0

    iget-object p0, p0, Landroid/telecom/ParcelableCall;->mHandle:Landroid/net/Uri;

    return-object p0
.end method

.method public greylist-max-o getHandlePresentation()I
    .locals 0

    iget p0, p0, Landroid/telecom/ParcelableCall;->mHandlePresentation:I

    return p0
.end method

.method public greylist-max-p getId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/telecom/ParcelableCall;->mId:Ljava/lang/String;

    return-object p0
.end method

.method public greylist-max-o getIntentExtras()Landroid/os/Bundle;
    .locals 0

    iget-object p0, p0, Landroid/telecom/ParcelableCall;->mIntentExtras:Landroid/os/Bundle;

    return-object p0
.end method

.method public greylist-max-o getIsRttCallChanged()Z
    .locals 0

    iget-boolean p0, p0, Landroid/telecom/ParcelableCall;->mIsRttCallChanged:Z

    return p0
.end method

.method public greylist-max-o getParcelableRttCall()Landroid/telecom/ParcelableRttCall;
    .locals 0

    iget-object p0, p0, Landroid/telecom/ParcelableCall;->mRttCall:Landroid/telecom/ParcelableRttCall;

    return-object p0
.end method

.method public greylist-max-o getParentCallId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/telecom/ParcelableCall;->mParentCallId:Ljava/lang/String;

    return-object p0
.end method

.method public greylist-max-o getProperties()I
    .locals 0

    iget p0, p0, Landroid/telecom/ParcelableCall;->mProperties:I

    return p0
.end method

.method public greylist-max-o getState()I
    .locals 0

    iget p0, p0, Landroid/telecom/ParcelableCall;->mState:I

    return p0
.end method

.method public greylist-max-o getStatusHints()Landroid/telecom/StatusHints;
    .locals 0

    iget-object p0, p0, Landroid/telecom/ParcelableCall;->mStatusHints:Landroid/telecom/StatusHints;

    return-object p0
.end method

.method public greylist-max-o getSupportedAudioRoutes()I
    .locals 0

    iget p0, p0, Landroid/telecom/ParcelableCall;->mSupportedAudioRoutes:I

    return p0
.end method

.method public greylist-max-o getVideoCallImpl(Ljava/lang/String;I)Landroid/telecom/VideoCallImpl;
    .locals 2

    iget-object v0, p0, Landroid/telecom/ParcelableCall;->mVideoCall:Landroid/telecom/VideoCallImpl;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/telecom/ParcelableCall;->mVideoCallProvider:Lcom/android/internal/telecom/IVideoProvider;

    if-eqz v0, :cond_0

    :try_start_0
    new-instance v0, Landroid/telecom/VideoCallImpl;

    iget-object v1, p0, Landroid/telecom/ParcelableCall;->mVideoCallProvider:Lcom/android/internal/telecom/IVideoProvider;

    invoke-direct {v0, v1, p1, p2}, Landroid/telecom/VideoCallImpl;-><init>(Lcom/android/internal/telecom/IVideoProvider;Ljava/lang/String;I)V

    iput-object v0, p0, Landroid/telecom/ParcelableCall;->mVideoCall:Landroid/telecom/VideoCallImpl;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    iget-object p0, p0, Landroid/telecom/ParcelableCall;->mVideoCall:Landroid/telecom/VideoCallImpl;

    return-object p0
.end method

.method public blacklist getVideoProvider()Lcom/android/internal/telecom/IVideoProvider;
    .locals 0

    iget-object p0, p0, Landroid/telecom/ParcelableCall;->mVideoCallProvider:Lcom/android/internal/telecom/IVideoProvider;

    return-object p0
.end method

.method public greylist-max-o getVideoState()I
    .locals 0

    iget p0, p0, Landroid/telecom/ParcelableCall;->mVideoState:I

    return p0
.end method

.method public greylist-max-o isVideoCallProviderChanged()Z
    .locals 0

    iget-boolean p0, p0, Landroid/telecom/ParcelableCall;->mIsVideoCallProviderChanged:Z

    return p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Landroid/telecom/ParcelableCall;->mId:Ljava/lang/String;

    iget-object v1, p0, Landroid/telecom/ParcelableCall;->mParentCallId:Ljava/lang/String;

    iget-object p0, p0, Landroid/telecom/ParcelableCall;->mChildCallIds:Ljava/util/List;

    filled-new-array {v0, v1, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "[%s, parent:%s, children:%s]"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    iget-object p2, p0, Landroid/telecom/ParcelableCall;->mId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget p2, p0, Landroid/telecom/ParcelableCall;->mState:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Landroid/telecom/ParcelableCall;->mDisconnectCause:Landroid/telecom/DisconnectCause;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object p2, p0, Landroid/telecom/ParcelableCall;->mCannedSmsResponses:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    iget p2, p0, Landroid/telecom/ParcelableCall;->mCapabilities:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Landroid/telecom/ParcelableCall;->mProperties:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v1, p0, Landroid/telecom/ParcelableCall;->mConnectTimeMillis:J

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    iget-object p2, p0, Landroid/telecom/ParcelableCall;->mHandle:Landroid/net/Uri;

    invoke-static {p1, p2}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;Landroid/net/Uri;)V

    iget p2, p0, Landroid/telecom/ParcelableCall;->mHandlePresentation:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Landroid/telecom/ParcelableCall;->mCallerDisplayName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget p2, p0, Landroid/telecom/ParcelableCall;->mCallerDisplayNamePresentation:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Landroid/telecom/ParcelableCall;->mGatewayInfo:Landroid/telecom/GatewayInfo;

    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object p2, p0, Landroid/telecom/ParcelableCall;->mAccountHandle:Landroid/telecom/PhoneAccountHandle;

    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-boolean p2, p0, Landroid/telecom/ParcelableCall;->mIsVideoCallProviderChanged:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    iget-object p2, p0, Landroid/telecom/ParcelableCall;->mVideoCallProvider:Lcom/android/internal/telecom/IVideoProvider;

    if-eqz p2, :cond_0

    invoke-interface {p2}, Lcom/android/internal/telecom/IVideoProvider;->asBinder()Landroid/os/IBinder;

    move-result-object p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    iget-object p2, p0, Landroid/telecom/ParcelableCall;->mParentCallId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Landroid/telecom/ParcelableCall;->mChildCallIds:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    iget-object p2, p0, Landroid/telecom/ParcelableCall;->mStatusHints:Landroid/telecom/StatusHints;

    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget p2, p0, Landroid/telecom/ParcelableCall;->mVideoState:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Landroid/telecom/ParcelableCall;->mConferenceableCallIds:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    iget-object p2, p0, Landroid/telecom/ParcelableCall;->mIntentExtras:Landroid/os/Bundle;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    iget-object p2, p0, Landroid/telecom/ParcelableCall;->mExtras:Landroid/os/Bundle;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    iget p2, p0, Landroid/telecom/ParcelableCall;->mSupportedAudioRoutes:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean p2, p0, Landroid/telecom/ParcelableCall;->mIsRttCallChanged:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    iget-object p2, p0, Landroid/telecom/ParcelableCall;->mRttCall:Landroid/telecom/ParcelableRttCall;

    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-wide v1, p0, Landroid/telecom/ParcelableCall;->mCreationTimeMillis:J

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    iget p2, p0, Landroid/telecom/ParcelableCall;->mCallDirection:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Landroid/telecom/ParcelableCall;->mCallerNumberVerificationStatus:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Landroid/telecom/ParcelableCall;->mContactDisplayName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Landroid/telecom/ParcelableCall;->mActiveChildCallId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Landroid/telecom/ParcelableCall;->mContactPhotoUri:Landroid/net/Uri;

    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object p0, p0, Landroid/telecom/ParcelableCall;->mAssociatedUser:Landroid/os/UserHandle;

    invoke-virtual {p1, p0, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
