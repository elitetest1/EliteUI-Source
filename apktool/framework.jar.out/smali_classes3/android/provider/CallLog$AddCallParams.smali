.class public Landroid/provider/CallLog$AddCallParams;
.super Ljava/lang/Object;
.source "CallLog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/CallLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AddCallParams"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;
    }
.end annotation


# instance fields
.field private blacklist mAccountHandle:Landroid/telecom/PhoneAccountHandle;

.field private blacklist mAddForAllUsers:Z

.field private blacklist mAssertedDisplayName:Ljava/lang/String;

.field private blacklist mCallBlockReason:I

.field private blacklist mCallScreeningAppName:Ljava/lang/CharSequence;

.field private blacklist mCallScreeningComponentName:Ljava/lang/String;

.field private blacklist mCallType:I

.field private blacklist mCallerInfo:Landroid/telecom/CallerInfo;

.field private blacklist mDataUsage:J

.field private blacklist mDuration:I

.field private blacklist mFeatures:I

.field private blacklist mIsBusinessCall:Z

.field private blacklist mIsPhoneAccountMigrationPending:I

.field private blacklist mIsRead:Z

.field private blacklist mLatitude:D

.field private blacklist mLongitude:D

.field private blacklist mMissedReason:J

.field private blacklist mNumber:Ljava/lang/String;

.field private blacklist mPictureUri:Landroid/net/Uri;

.field private blacklist mPostDialDigits:Ljava/lang/String;

.field private blacklist mPresentation:I

.field private blacklist mPriority:I

.field private blacklist mStart:J

.field private blacklist mSubject:Ljava/lang/String;

.field private blacklist mUserToBeInsertedTo:Landroid/os/UserHandle;

.field private blacklist mViaNumber:Ljava/lang/String;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmAccountHandle(Landroid/provider/CallLog$AddCallParams;)Landroid/telecom/PhoneAccountHandle;
    .locals 0

    iget-object p0, p0, Landroid/provider/CallLog$AddCallParams;->mAccountHandle:Landroid/telecom/PhoneAccountHandle;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmAddForAllUsers(Landroid/provider/CallLog$AddCallParams;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/provider/CallLog$AddCallParams;->mAddForAllUsers:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmAssertedDisplayName(Landroid/provider/CallLog$AddCallParams;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/provider/CallLog$AddCallParams;->mAssertedDisplayName:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCallBlockReason(Landroid/provider/CallLog$AddCallParams;)I
    .locals 0

    iget p0, p0, Landroid/provider/CallLog$AddCallParams;->mCallBlockReason:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCallScreeningAppName(Landroid/provider/CallLog$AddCallParams;)Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Landroid/provider/CallLog$AddCallParams;->mCallScreeningAppName:Ljava/lang/CharSequence;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCallScreeningComponentName(Landroid/provider/CallLog$AddCallParams;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/provider/CallLog$AddCallParams;->mCallScreeningComponentName:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCallType(Landroid/provider/CallLog$AddCallParams;)I
    .locals 0

    iget p0, p0, Landroid/provider/CallLog$AddCallParams;->mCallType:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCallerInfo(Landroid/provider/CallLog$AddCallParams;)Landroid/telecom/CallerInfo;
    .locals 0

    iget-object p0, p0, Landroid/provider/CallLog$AddCallParams;->mCallerInfo:Landroid/telecom/CallerInfo;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDataUsage(Landroid/provider/CallLog$AddCallParams;)J
    .locals 2

    iget-wide v0, p0, Landroid/provider/CallLog$AddCallParams;->mDataUsage:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDuration(Landroid/provider/CallLog$AddCallParams;)I
    .locals 0

    iget p0, p0, Landroid/provider/CallLog$AddCallParams;->mDuration:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmFeatures(Landroid/provider/CallLog$AddCallParams;)I
    .locals 0

    iget p0, p0, Landroid/provider/CallLog$AddCallParams;->mFeatures:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsBusinessCall(Landroid/provider/CallLog$AddCallParams;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/provider/CallLog$AddCallParams;->mIsBusinessCall:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsPhoneAccountMigrationPending(Landroid/provider/CallLog$AddCallParams;)I
    .locals 0

    iget p0, p0, Landroid/provider/CallLog$AddCallParams;->mIsPhoneAccountMigrationPending:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsRead(Landroid/provider/CallLog$AddCallParams;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/provider/CallLog$AddCallParams;->mIsRead:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLatitude(Landroid/provider/CallLog$AddCallParams;)D
    .locals 2

    iget-wide v0, p0, Landroid/provider/CallLog$AddCallParams;->mLatitude:D

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLongitude(Landroid/provider/CallLog$AddCallParams;)D
    .locals 2

    iget-wide v0, p0, Landroid/provider/CallLog$AddCallParams;->mLongitude:D

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmMissedReason(Landroid/provider/CallLog$AddCallParams;)J
    .locals 2

    iget-wide v0, p0, Landroid/provider/CallLog$AddCallParams;->mMissedReason:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmNumber(Landroid/provider/CallLog$AddCallParams;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/provider/CallLog$AddCallParams;->mNumber:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPictureUri(Landroid/provider/CallLog$AddCallParams;)Landroid/net/Uri;
    .locals 0

    iget-object p0, p0, Landroid/provider/CallLog$AddCallParams;->mPictureUri:Landroid/net/Uri;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPostDialDigits(Landroid/provider/CallLog$AddCallParams;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/provider/CallLog$AddCallParams;->mPostDialDigits:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPresentation(Landroid/provider/CallLog$AddCallParams;)I
    .locals 0

    iget p0, p0, Landroid/provider/CallLog$AddCallParams;->mPresentation:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPriority(Landroid/provider/CallLog$AddCallParams;)I
    .locals 0

    iget p0, p0, Landroid/provider/CallLog$AddCallParams;->mPriority:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmStart(Landroid/provider/CallLog$AddCallParams;)J
    .locals 2

    iget-wide v0, p0, Landroid/provider/CallLog$AddCallParams;->mStart:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSubject(Landroid/provider/CallLog$AddCallParams;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/provider/CallLog$AddCallParams;->mSubject:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmUserToBeInsertedTo(Landroid/provider/CallLog$AddCallParams;)Landroid/os/UserHandle;
    .locals 0

    iget-object p0, p0, Landroid/provider/CallLog$AddCallParams;->mUserToBeInsertedTo:Landroid/os/UserHandle;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmViaNumber(Landroid/provider/CallLog$AddCallParams;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/provider/CallLog$AddCallParams;->mViaNumber:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmAddForAllUsers(Landroid/provider/CallLog$AddCallParams;Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/provider/CallLog$AddCallParams;->mAddForAllUsers:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmNumber(Landroid/provider/CallLog$AddCallParams;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/provider/CallLog$AddCallParams;->mNumber:Ljava/lang/String;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/telecom/CallerInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILandroid/telecom/PhoneAccountHandle;JIJZLandroid/os/UserHandle;ZILjava/lang/CharSequence;Ljava/lang/String;JILjava/lang/String;DDLandroid/net/Uri;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/provider/CallLog$AddCallParams;->mCallerInfo:Landroid/telecom/CallerInfo;

    iput-object p2, p0, Landroid/provider/CallLog$AddCallParams;->mNumber:Ljava/lang/String;

    iput-object p3, p0, Landroid/provider/CallLog$AddCallParams;->mPostDialDigits:Ljava/lang/String;

    iput-object p4, p0, Landroid/provider/CallLog$AddCallParams;->mViaNumber:Ljava/lang/String;

    iput p5, p0, Landroid/provider/CallLog$AddCallParams;->mPresentation:I

    iput p6, p0, Landroid/provider/CallLog$AddCallParams;->mCallType:I

    iput p7, p0, Landroid/provider/CallLog$AddCallParams;->mFeatures:I

    iput-object p8, p0, Landroid/provider/CallLog$AddCallParams;->mAccountHandle:Landroid/telecom/PhoneAccountHandle;

    iput-wide p9, p0, Landroid/provider/CallLog$AddCallParams;->mStart:J

    iput p11, p0, Landroid/provider/CallLog$AddCallParams;->mDuration:I

    iput-wide p12, p0, Landroid/provider/CallLog$AddCallParams;->mDataUsage:J

    iput-boolean p14, p0, Landroid/provider/CallLog$AddCallParams;->mAddForAllUsers:Z

    iput-object p15, p0, Landroid/provider/CallLog$AddCallParams;->mUserToBeInsertedTo:Landroid/os/UserHandle;

    move/from16 p1, p16

    iput-boolean p1, p0, Landroid/provider/CallLog$AddCallParams;->mIsRead:Z

    move/from16 p1, p17

    iput p1, p0, Landroid/provider/CallLog$AddCallParams;->mCallBlockReason:I

    move-object/from16 p1, p18

    iput-object p1, p0, Landroid/provider/CallLog$AddCallParams;->mCallScreeningAppName:Ljava/lang/CharSequence;

    move-object/from16 p1, p19

    iput-object p1, p0, Landroid/provider/CallLog$AddCallParams;->mCallScreeningComponentName:Ljava/lang/String;

    move-wide/from16 p1, p20

    iput-wide p1, p0, Landroid/provider/CallLog$AddCallParams;->mMissedReason:J

    move/from16 p1, p22

    iput p1, p0, Landroid/provider/CallLog$AddCallParams;->mPriority:I

    move-object/from16 p1, p23

    iput-object p1, p0, Landroid/provider/CallLog$AddCallParams;->mSubject:Ljava/lang/String;

    move-wide/from16 p1, p24

    iput-wide p1, p0, Landroid/provider/CallLog$AddCallParams;->mLatitude:D

    move-wide/from16 p1, p26

    iput-wide p1, p0, Landroid/provider/CallLog$AddCallParams;->mLongitude:D

    move-object/from16 p1, p28

    iput-object p1, p0, Landroid/provider/CallLog$AddCallParams;->mPictureUri:Landroid/net/Uri;

    move/from16 p1, p29

    iput p1, p0, Landroid/provider/CallLog$AddCallParams;->mIsPhoneAccountMigrationPending:I

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/telecom/CallerInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILandroid/telecom/PhoneAccountHandle;JIJZLandroid/os/UserHandle;ZILjava/lang/CharSequence;Ljava/lang/String;JILjava/lang/String;DDLandroid/net/Uri;ILandroid/provider/CallLog-IA;)V
    .locals 0

    invoke-direct/range {p0 .. p29}, Landroid/provider/CallLog$AddCallParams;-><init>(Landroid/telecom/CallerInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILandroid/telecom/PhoneAccountHandle;JIJZLandroid/os/UserHandle;ZILjava/lang/CharSequence;Ljava/lang/String;JILjava/lang/String;DDLandroid/net/Uri;I)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/telecom/CallerInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILandroid/telecom/PhoneAccountHandle;JIJZLandroid/os/UserHandle;ZILjava/lang/CharSequence;Ljava/lang/String;JILjava/lang/String;DDLandroid/net/Uri;IZLjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/provider/CallLog$AddCallParams;->mCallerInfo:Landroid/telecom/CallerInfo;

    iput-object p2, p0, Landroid/provider/CallLog$AddCallParams;->mNumber:Ljava/lang/String;

    iput-object p3, p0, Landroid/provider/CallLog$AddCallParams;->mPostDialDigits:Ljava/lang/String;

    iput-object p4, p0, Landroid/provider/CallLog$AddCallParams;->mViaNumber:Ljava/lang/String;

    iput p5, p0, Landroid/provider/CallLog$AddCallParams;->mPresentation:I

    iput p6, p0, Landroid/provider/CallLog$AddCallParams;->mCallType:I

    iput p7, p0, Landroid/provider/CallLog$AddCallParams;->mFeatures:I

    iput-object p8, p0, Landroid/provider/CallLog$AddCallParams;->mAccountHandle:Landroid/telecom/PhoneAccountHandle;

    iput-wide p9, p0, Landroid/provider/CallLog$AddCallParams;->mStart:J

    iput p11, p0, Landroid/provider/CallLog$AddCallParams;->mDuration:I

    iput-wide p12, p0, Landroid/provider/CallLog$AddCallParams;->mDataUsage:J

    iput-boolean p14, p0, Landroid/provider/CallLog$AddCallParams;->mAddForAllUsers:Z

    iput-object p15, p0, Landroid/provider/CallLog$AddCallParams;->mUserToBeInsertedTo:Landroid/os/UserHandle;

    move/from16 p1, p16

    iput-boolean p1, p0, Landroid/provider/CallLog$AddCallParams;->mIsRead:Z

    move/from16 p1, p17

    iput p1, p0, Landroid/provider/CallLog$AddCallParams;->mCallBlockReason:I

    move-object/from16 p1, p18

    iput-object p1, p0, Landroid/provider/CallLog$AddCallParams;->mCallScreeningAppName:Ljava/lang/CharSequence;

    move-object/from16 p1, p19

    iput-object p1, p0, Landroid/provider/CallLog$AddCallParams;->mCallScreeningComponentName:Ljava/lang/String;

    move-wide/from16 p1, p20

    iput-wide p1, p0, Landroid/provider/CallLog$AddCallParams;->mMissedReason:J

    move/from16 p1, p22

    iput p1, p0, Landroid/provider/CallLog$AddCallParams;->mPriority:I

    move-object/from16 p1, p23

    iput-object p1, p0, Landroid/provider/CallLog$AddCallParams;->mSubject:Ljava/lang/String;

    move-wide/from16 p1, p24

    iput-wide p1, p0, Landroid/provider/CallLog$AddCallParams;->mLatitude:D

    move-wide/from16 p1, p26

    iput-wide p1, p0, Landroid/provider/CallLog$AddCallParams;->mLongitude:D

    move-object/from16 p1, p28

    iput-object p1, p0, Landroid/provider/CallLog$AddCallParams;->mPictureUri:Landroid/net/Uri;

    move/from16 p1, p29

    iput p1, p0, Landroid/provider/CallLog$AddCallParams;->mIsPhoneAccountMigrationPending:I

    move/from16 p1, p30

    iput-boolean p1, p0, Landroid/provider/CallLog$AddCallParams;->mIsBusinessCall:Z

    move-object/from16 p1, p31

    iput-object p1, p0, Landroid/provider/CallLog$AddCallParams;->mAssertedDisplayName:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/telecom/CallerInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILandroid/telecom/PhoneAccountHandle;JIJZLandroid/os/UserHandle;ZILjava/lang/CharSequence;Ljava/lang/String;JILjava/lang/String;DDLandroid/net/Uri;IZLjava/lang/String;Landroid/provider/CallLog-IA;)V
    .locals 0

    invoke-direct/range {p0 .. p31}, Landroid/provider/CallLog$AddCallParams;-><init>(Landroid/telecom/CallerInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILandroid/telecom/PhoneAccountHandle;JIJZLandroid/os/UserHandle;ZILjava/lang/CharSequence;Ljava/lang/String;JILjava/lang/String;DDLandroid/net/Uri;IZLjava/lang/String;)V

    return-void
.end method
