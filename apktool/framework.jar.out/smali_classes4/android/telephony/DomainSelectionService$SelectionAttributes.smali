.class public final Landroid/telephony/DomainSelectionService$SelectionAttributes;
.super Ljava/lang/Object;
.source "DomainSelectionService.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/DomainSelectionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SelectionAttributes"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/DomainSelectionService$SelectionAttributes$Builder;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/DomainSelectionService$SelectionAttributes;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist TAG:Ljava/lang/String; = "SelectionAttributes"


# instance fields
.field private blacklist mAddress:Landroid/net/Uri;

.field private blacklist mCallId:Ljava/lang/String;

.field private blacklist mCause:I

.field private blacklist mEmergencyRegistrationResult:Landroid/telephony/EmergencyRegistrationResult;

.field private blacklist mImsReasonInfo:Landroid/telephony/ims/ImsReasonInfo;

.field private blacklist mIsEmergency:Z

.field private blacklist mIsExitedFromAirplaneMode:Z

.field private blacklist mIsTestEmergencyNumber:Z

.field private blacklist mIsVideoCall:Z

.field private blacklist mSelectorType:I

.field private blacklist mSlotIndex:I

.field private blacklist mSubId:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/telephony/DomainSelectionService$SelectionAttributes$1;

    invoke-direct {v0}, Landroid/telephony/DomainSelectionService$SelectionAttributes$1;-><init>()V

    sput-object v0, Landroid/telephony/DomainSelectionService$SelectionAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(IILjava/lang/String;Landroid/net/Uri;IZZZZLandroid/telephony/ims/ImsReasonInfo;ILandroid/telephony/EmergencyRegistrationResult;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/telephony/DomainSelectionService$SelectionAttributes;->mSlotIndex:I

    iput p2, p0, Landroid/telephony/DomainSelectionService$SelectionAttributes;->mSubId:I

    iput-object p3, p0, Landroid/telephony/DomainSelectionService$SelectionAttributes;->mCallId:Ljava/lang/String;

    iput-object p4, p0, Landroid/telephony/DomainSelectionService$SelectionAttributes;->mAddress:Landroid/net/Uri;

    iput p5, p0, Landroid/telephony/DomainSelectionService$SelectionAttributes;->mSelectorType:I

    iput-boolean p6, p0, Landroid/telephony/DomainSelectionService$SelectionAttributes;->mIsVideoCall:Z

    iput-boolean p7, p0, Landroid/telephony/DomainSelectionService$SelectionAttributes;->mIsEmergency:Z

    iput-boolean p8, p0, Landroid/telephony/DomainSelectionService$SelectionAttributes;->mIsTestEmergencyNumber:Z

    iput-boolean p9, p0, Landroid/telephony/DomainSelectionService$SelectionAttributes;->mIsExitedFromAirplaneMode:Z

    iput-object p10, p0, Landroid/telephony/DomainSelectionService$SelectionAttributes;->mImsReasonInfo:Landroid/telephony/ims/ImsReasonInfo;

    iput p11, p0, Landroid/telephony/DomainSelectionService$SelectionAttributes;->mCause:I

    iput-object p12, p0, Landroid/telephony/DomainSelectionService$SelectionAttributes;->mEmergencyRegistrationResult:Landroid/telephony/EmergencyRegistrationResult;

    return-void
.end method

.method synthetic constructor blacklist <init>(IILjava/lang/String;Landroid/net/Uri;IZZZZLandroid/telephony/ims/ImsReasonInfo;ILandroid/telephony/EmergencyRegistrationResult;Landroid/telephony/DomainSelectionService-IA;)V
    .locals 0

    invoke-direct/range {p0 .. p12}, Landroid/telephony/DomainSelectionService$SelectionAttributes;-><init>(IILjava/lang/String;Landroid/net/Uri;IZZZZLandroid/telephony/ims/ImsReasonInfo;ILandroid/telephony/EmergencyRegistrationResult;)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0, p1}, Landroid/telephony/DomainSelectionService$SelectionAttributes;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/telephony/DomainSelectionService-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/telephony/DomainSelectionService$SelectionAttributes;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/telephony/DomainSelectionService$SelectionAttributes;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget v0, p1, Landroid/telephony/DomainSelectionService$SelectionAttributes;->mSlotIndex:I

    iput v0, p0, Landroid/telephony/DomainSelectionService$SelectionAttributes;->mSlotIndex:I

    iget v0, p1, Landroid/telephony/DomainSelectionService$SelectionAttributes;->mSubId:I

    iput v0, p0, Landroid/telephony/DomainSelectionService$SelectionAttributes;->mSubId:I

    iget-object v0, p1, Landroid/telephony/DomainSelectionService$SelectionAttributes;->mCallId:Ljava/lang/String;

    iput-object v0, p0, Landroid/telephony/DomainSelectionService$SelectionAttributes;->mCallId:Ljava/lang/String;

    iget-object v0, p1, Landroid/telephony/DomainSelectionService$SelectionAttributes;->mAddress:Landroid/net/Uri;

    iput-object v0, p0, Landroid/telephony/DomainSelectionService$SelectionAttributes;->mAddress:Landroid/net/Uri;

    iget v0, p1, Landroid/telephony/DomainSelectionService$SelectionAttributes;->mSelectorType:I

    iput v0, p0, Landroid/telephony/DomainSelectionService$SelectionAttributes;->mSelectorType:I

    iget-boolean v0, p1, Landroid/telephony/DomainSelectionService$SelectionAttributes;->mIsEmergency:Z

    iput-boolean v0, p0, Landroid/telephony/DomainSelectionService$SelectionAttributes;->mIsEmergency:Z

    iget-boolean v0, p1, Landroid/telephony/DomainSelectionService$SelectionAttributes;->mIsTestEmergencyNumber:Z

    iput-boolean v0, p0, Landroid/telephony/DomainSelectionService$SelectionAttributes;->mIsTestEmergencyNumber:Z

    iget-boolean v0, p1, Landroid/telephony/DomainSelectionService$SelectionAttributes;->mIsExitedFromAirplaneMode:Z

    iput-boolean v0, p0, Landroid/telephony/DomainSelectionService$SelectionAttributes;->mIsExitedFromAirplaneMode:Z

    iget-object v0, p1, Landroid/telephony/DomainSelectionService$SelectionAttributes;->mImsReasonInfo:Landroid/telephony/ims/ImsReasonInfo;

    iput-object v0, p0, Landroid/telephony/DomainSelectionService$SelectionAttributes;->mImsReasonInfo:Landroid/telephony/ims/ImsReasonInfo;

    iget v0, p1, Landroid/telephony/DomainSelectionService$SelectionAttributes;->mCause:I

    iput v0, p0, Landroid/telephony/DomainSelectionService$SelectionAttributes;->mCause:I

    iget-object p1, p1, Landroid/telephony/DomainSelectionService$SelectionAttributes;->mEmergencyRegistrationResult:Landroid/telephony/EmergencyRegistrationResult;

    iput-object p1, p0, Landroid/telephony/DomainSelectionService$SelectionAttributes;->mEmergencyRegistrationResult:Landroid/telephony/EmergencyRegistrationResult;

    return-void
.end method

.method private static blacklist equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    if-nez p0, :cond_1

    if-nez p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private blacklist readFromParcel(Landroid/os/Parcel;)V
    .locals 2

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/DomainSelectionService$SelectionAttributes;->mSlotIndex:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/DomainSelectionService$SelectionAttributes;->mSubId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/DomainSelectionService$SelectionAttributes;->mCallId:Ljava/lang/String;

    const-class v0, Landroid/net/Uri;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v1, Landroid/net/Uri;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Landroid/telephony/DomainSelectionService$SelectionAttributes;->mAddress:Landroid/net/Uri;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/DomainSelectionService$SelectionAttributes;->mSelectorType:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/telephony/DomainSelectionService$SelectionAttributes;->mIsVideoCall:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/telephony/DomainSelectionService$SelectionAttributes;->mIsEmergency:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/telephony/DomainSelectionService$SelectionAttributes;->mIsTestEmergencyNumber:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/telephony/DomainSelectionService$SelectionAttributes;->mIsExitedFromAirplaneMode:Z

    const-class v0, Landroid/telephony/ims/ImsReasonInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v1, Landroid/telephony/ims/ImsReasonInfo;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/ims/ImsReasonInfo;

    iput-object v0, p0, Landroid/telephony/DomainSelectionService$SelectionAttributes;->mImsReasonInfo:Landroid/telephony/ims/ImsReasonInfo;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/DomainSelectionService$SelectionAttributes;->mCause:I

    const-class v0, Landroid/telephony/EmergencyRegistrationResult;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v1, Landroid/telephony/EmergencyRegistrationResult;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/EmergencyRegistrationResult;

    iput-object p1, p0, Landroid/telephony/DomainSelectionService$SelectionAttributes;->mEmergencyRegistrationResult:Landroid/telephony/EmergencyRegistrationResult;

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Landroid/telephony/DomainSelectionService$SelectionAttributes;

    iget v2, p0, Landroid/telephony/DomainSelectionService$SelectionAttributes;->mSlotIndex:I

    iget v3, p1, Landroid/telephony/DomainSelectionService$SelectionAttributes;->mSlotIndex:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Landroid/telephony/DomainSelectionService$SelectionAttributes;->mSubId:I

    iget v3, p1, Landroid/telephony/DomainSelectionService$SelectionAttributes;->mSubId:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Landroid/telephony/DomainSelectionService$SelectionAttributes;->mCallId:Ljava/lang/String;

    iget-object v3, p1, Landroid/telephony/DomainSelectionService$SelectionAttributes;->mCallId:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/telephony/DomainSelectionService$SelectionAttributes;->mAddress:Landroid/net/Uri;

    iget-object v3, p1, Landroid/telephony/DomainSelectionService$SelectionAttributes;->mAddress:Landroid/net/Uri;

    invoke-static {v2, v3}, Landroid/telephony/DomainSelectionService$SelectionAttributes;->equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p0, Landroid/telephony/DomainSelectionService$SelectionAttributes;->mSelectorType:I

    iget v3, p1, Landroid/telephony/DomainSelectionService$SelectionAttributes;->mSelectorType:I

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Landroid/telephony/DomainSelectionService$SelectionAttributes;->mIsVideoCall:Z

    iget-boolean v3, p1, Landroid/telephony/DomainSelectionService$SelectionAttributes;->mIsVideoCall:Z

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Landroid/telephony/DomainSelectionService$SelectionAttributes;->mIsEmergency:Z

    iget-boolean v3, p1, Landroid/telephony/DomainSelectionService$SelectionAttributes;->mIsEmergency:Z

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Landroid/telephony/DomainSelectionService$SelectionAttributes;->mIsTestEmergencyNumber:Z

    iget-boolean v3, p1, Landroid/telephony/DomainSelectionService$SelectionAttributes;->mIsTestEmergencyNumber:Z

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Landroid/telephony/DomainSelectionService$SelectionAttributes;->mIsExitedFromAirplaneMode:Z

    iget-boolean v3, p1, Landroid/telephony/DomainSelectionService$SelectionAttributes;->mIsExitedFromAirplaneMode:Z

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Landroid/telephony/DomainSelectionService$SelectionAttributes;->mImsReasonInfo:Landroid/telephony/ims/ImsReasonInfo;

    iget-object v3, p1, Landroid/telephony/DomainSelectionService$SelectionAttributes;->mImsReasonInfo:Landroid/telephony/ims/ImsReasonInfo;

    invoke-static {v2, v3}, Landroid/telephony/DomainSelectionService$SelectionAttributes;->equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p0, Landroid/telephony/DomainSelectionService$SelectionAttributes;->mCause:I

    iget v3, p1, Landroid/telephony/DomainSelectionService$SelectionAttributes;->mCause:I

    if-ne v2, v3, :cond_2

    iget-object p0, p0, Landroid/telephony/DomainSelectionService$SelectionAttributes;->mEmergencyRegistrationResult:Landroid/telephony/EmergencyRegistrationResult;

    iget-object p1, p1, Landroid/telephony/DomainSelectionService$SelectionAttributes;->mEmergencyRegistrationResult:Landroid/telephony/EmergencyRegistrationResult;

    invoke-static {p0, p1}, Landroid/telephony/DomainSelectionService$SelectionAttributes;->equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public whitelist getAddress()Landroid/net/Uri;
    .locals 0

    iget-object p0, p0, Landroid/telephony/DomainSelectionService$SelectionAttributes;->mAddress:Landroid/net/Uri;

    return-object p0
.end method

.method public whitelist getCallId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/telephony/DomainSelectionService$SelectionAttributes;->mCallId:Ljava/lang/String;

    return-object p0
.end method

.method public whitelist getCsDisconnectCause()I
    .locals 0

    iget p0, p0, Landroid/telephony/DomainSelectionService$SelectionAttributes;->mCause:I

    return p0
.end method

.method public whitelist getEmergencyRegistrationResult()Landroid/telephony/EmergencyRegistrationResult;
    .locals 0

    iget-object p0, p0, Landroid/telephony/DomainSelectionService$SelectionAttributes;->mEmergencyRegistrationResult:Landroid/telephony/EmergencyRegistrationResult;

    return-object p0
.end method

.method public whitelist getPsDisconnectCause()Landroid/telephony/ims/ImsReasonInfo;
    .locals 0

    iget-object p0, p0, Landroid/telephony/DomainSelectionService$SelectionAttributes;->mImsReasonInfo:Landroid/telephony/ims/ImsReasonInfo;

    return-object p0
.end method

.method public whitelist getSelectorType()I
    .locals 0

    iget p0, p0, Landroid/telephony/DomainSelectionService$SelectionAttributes;->mSelectorType:I

    return p0
.end method

.method public whitelist getSlotIndex()I
    .locals 0

    iget p0, p0, Landroid/telephony/DomainSelectionService$SelectionAttributes;->mSlotIndex:I

    return p0
.end method

.method public whitelist getSubscriptionId()I
    .locals 0

    iget p0, p0, Landroid/telephony/DomainSelectionService$SelectionAttributes;->mSubId:I

    return p0
.end method

.method public whitelist test-api hashCode()I
    .locals 12

    iget-object v0, p0, Landroid/telephony/DomainSelectionService$SelectionAttributes;->mCallId:Ljava/lang/String;

    iget-object v1, p0, Landroid/telephony/DomainSelectionService$SelectionAttributes;->mAddress:Landroid/net/Uri;

    iget-object v2, p0, Landroid/telephony/DomainSelectionService$SelectionAttributes;->mImsReasonInfo:Landroid/telephony/ims/ImsReasonInfo;

    iget-boolean v3, p0, Landroid/telephony/DomainSelectionService$SelectionAttributes;->mIsVideoCall:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iget-boolean v4, p0, Landroid/telephony/DomainSelectionService$SelectionAttributes;->mIsEmergency:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iget-boolean v5, p0, Landroid/telephony/DomainSelectionService$SelectionAttributes;->mIsTestEmergencyNumber:Z

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    iget-boolean v6, p0, Landroid/telephony/DomainSelectionService$SelectionAttributes;->mIsExitedFromAirplaneMode:Z

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    iget-object v7, p0, Landroid/telephony/DomainSelectionService$SelectionAttributes;->mEmergencyRegistrationResult:Landroid/telephony/EmergencyRegistrationResult;

    iget v8, p0, Landroid/telephony/DomainSelectionService$SelectionAttributes;->mSlotIndex:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iget v9, p0, Landroid/telephony/DomainSelectionService$SelectionAttributes;->mSubId:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    iget v10, p0, Landroid/telephony/DomainSelectionService$SelectionAttributes;->mSelectorType:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    iget p0, p0, Landroid/telephony/DomainSelectionService$SelectionAttributes;->mCause:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    filled-new-array/range {v0 .. v11}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public whitelist isEmergency()Z
    .locals 0

    iget-boolean p0, p0, Landroid/telephony/DomainSelectionService$SelectionAttributes;->mIsEmergency:Z

    return p0
.end method

.method public whitelist isExitedFromAirplaneMode()Z
    .locals 0

    iget-boolean p0, p0, Landroid/telephony/DomainSelectionService$SelectionAttributes;->mIsExitedFromAirplaneMode:Z

    return p0
.end method

.method public whitelist isTestEmergencyNumber()Z
    .locals 0

    iget-boolean p0, p0, Landroid/telephony/DomainSelectionService$SelectionAttributes;->mIsTestEmergencyNumber:Z

    return p0
.end method

.method public whitelist isVideoCall()Z
    .locals 0

    iget-boolean p0, p0, Landroid/telephony/DomainSelectionService$SelectionAttributes;->mIsVideoCall:Z

    return p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "{ slotIndex="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Landroid/telephony/DomainSelectionService$SelectionAttributes;->mSlotIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", subId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/DomainSelectionService$SelectionAttributes;->mSubId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", callId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/telephony/DomainSelectionService$SelectionAttributes;->mCallId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", address="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Landroid/os/Build;->IS_DEBUGGABLE:Z

    iget-object v2, p0, Landroid/telephony/DomainSelectionService$SelectionAttributes;->mAddress:Landroid/net/Uri;

    invoke-static {v1, v2}, Lcom/android/telephony/Rlog;->pii(ZLjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/DomainSelectionService$SelectionAttributes;->mSelectorType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", videoCall="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroid/telephony/DomainSelectionService$SelectionAttributes;->mIsVideoCall:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", emergency="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroid/telephony/DomainSelectionService$SelectionAttributes;->mIsEmergency:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isTest="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroid/telephony/DomainSelectionService$SelectionAttributes;->mIsTestEmergencyNumber:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", airplaneMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroid/telephony/DomainSelectionService$SelectionAttributes;->mIsExitedFromAirplaneMode:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", reasonInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/telephony/DomainSelectionService$SelectionAttributes;->mImsReasonInfo:Landroid/telephony/ims/ImsReasonInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", cause="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/DomainSelectionService$SelectionAttributes;->mCause:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", regResult="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroid/telephony/DomainSelectionService$SelectionAttributes;->mEmergencyRegistrationResult:Landroid/telephony/EmergencyRegistrationResult;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " }"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget p2, p0, Landroid/telephony/DomainSelectionService$SelectionAttributes;->mSlotIndex:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Landroid/telephony/DomainSelectionService$SelectionAttributes;->mSubId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Landroid/telephony/DomainSelectionService$SelectionAttributes;->mCallId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    iget-object p2, p0, Landroid/telephony/DomainSelectionService$SelectionAttributes;->mAddress:Landroid/net/Uri;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget p2, p0, Landroid/telephony/DomainSelectionService$SelectionAttributes;->mSelectorType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean p2, p0, Landroid/telephony/DomainSelectionService$SelectionAttributes;->mIsVideoCall:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-boolean p2, p0, Landroid/telephony/DomainSelectionService$SelectionAttributes;->mIsEmergency:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-boolean p2, p0, Landroid/telephony/DomainSelectionService$SelectionAttributes;->mIsTestEmergencyNumber:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-boolean p2, p0, Landroid/telephony/DomainSelectionService$SelectionAttributes;->mIsExitedFromAirplaneMode:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-object p2, p0, Landroid/telephony/DomainSelectionService$SelectionAttributes;->mImsReasonInfo:Landroid/telephony/ims/ImsReasonInfo;

    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget p2, p0, Landroid/telephony/DomainSelectionService$SelectionAttributes;->mCause:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p0, p0, Landroid/telephony/DomainSelectionService$SelectionAttributes;->mEmergencyRegistrationResult:Landroid/telephony/EmergencyRegistrationResult;

    invoke-virtual {p1, p0, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
