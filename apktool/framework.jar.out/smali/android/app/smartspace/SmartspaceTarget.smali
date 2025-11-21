.class public final Landroid/app/smartspace/SmartspaceTarget;
.super Ljava/lang/Object;
.source "SmartspaceTarget.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/smartspace/SmartspaceTarget$Builder;,
        Landroid/app/smartspace/SmartspaceTarget$UiTemplateType;,
        Landroid/app/smartspace/SmartspaceTarget$FeatureType;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/smartspace/SmartspaceTarget;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist FEATURE_ALARM:I = 0x7

.field public static final whitelist FEATURE_BEDTIME_ROUTINE:I = 0x10

.field public static final whitelist FEATURE_BLAZE_BUILD_PROGRESS:I = 0x28

.field public static final whitelist FEATURE_CALENDAR:I = 0x2

.field public static final whitelist FEATURE_COMMUTE_TIME:I = 0x3

.field public static final whitelist FEATURE_CONSENT:I = 0xb

.field public static final whitelist FEATURE_CROSS_DEVICE_TIMER:I = 0x20

.field public static final whitelist FEATURE_DOORBELL:I = 0x1e

.field public static final whitelist FEATURE_DRIVING_MODE:I = 0x1a

.field public static final whitelist FEATURE_EARTHQUAKE_ALERT:I = 0x26

.field public static final whitelist FEATURE_EARTHQUAKE_OCCURRED:I = 0x29

.field public static final whitelist FEATURE_ETA_MONITORING:I = 0x12

.field public static final whitelist FEATURE_FITNESS_TRACKING:I = 0x11

.field public static final whitelist FEATURE_FLASHLIGHT:I = 0x1c

.field public static final whitelist FEATURE_FLIGHT:I = 0x4

.field public static final whitelist FEATURE_GAS_STATION_PAYMENT:I = 0x18

.field public static final whitelist FEATURE_HOLIDAY_ALARM:I = 0x22

.field public static final whitelist FEATURE_LOYALTY_CARD:I = 0xe

.field public static final whitelist FEATURE_MEDIA:I = 0xf

.field public static final whitelist FEATURE_MEDIA_HEADS_UP:I = 0x24

.field public static final whitelist FEATURE_MEDIA_RESUME:I = 0x1f

.field public static final whitelist FEATURE_MISSED_CALL:I = 0x13

.field public static final whitelist FEATURE_ONBOARDING:I = 0x8

.field public static final whitelist FEATURE_PACKAGE_TRACKING:I = 0x14

.field public static final whitelist FEATURE_PAIRED_DEVICE_STATE:I = 0x19

.field public static final whitelist FEATURE_REMINDER:I = 0x6

.field public static final whitelist FEATURE_SAFETY_CHECK:I = 0x23

.field public static final whitelist FEATURE_SEVERE_WEATHER_ALERT:I = 0x21

.field public static final whitelist FEATURE_SHOPPING_LIST:I = 0xd

.field public static final whitelist FEATURE_SLEEP_SUMMARY:I = 0x1b

.field public static final whitelist FEATURE_SPORTS:I = 0x9

.field public static final whitelist FEATURE_STEP_COUNTING:I = 0x25

.field public static final whitelist FEATURE_STEP_DATE:I = 0x27

.field public static final whitelist FEATURE_STOCK_PRICE_CHANGE:I = 0xc

.field public static final whitelist FEATURE_STOPWATCH:I = 0x16

.field public static final whitelist FEATURE_TIMER:I = 0x15

.field public static final whitelist FEATURE_TIME_TO_LEAVE:I = 0x1d

.field public static final whitelist FEATURE_TIPS:I = 0x5

.field public static final whitelist FEATURE_UNDEFINED:I = 0x0

.field public static final whitelist FEATURE_UPCOMING_ALARM:I = 0x17

.field public static final whitelist FEATURE_WEATHER:I = 0x1

.field public static final whitelist FEATURE_WEATHER_ALERT:I = 0xa

.field public static final whitelist UI_TEMPLATE_CAROUSEL:I = 0x4

.field public static final whitelist UI_TEMPLATE_COMBINED_CARDS:I = 0x6

.field public static final whitelist UI_TEMPLATE_DEFAULT:I = 0x1

.field public static final whitelist UI_TEMPLATE_HEAD_TO_HEAD:I = 0x5

.field public static final whitelist UI_TEMPLATE_SUB_CARD:I = 0x7

.field public static final whitelist UI_TEMPLATE_SUB_IMAGE:I = 0x2

.field public static final whitelist UI_TEMPLATE_SUB_LIST:I = 0x3

.field public static final whitelist UI_TEMPLATE_UNDEFINED:I


# instance fields
.field private final blacklist mActionChips:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/app/smartspace/SmartspaceAction;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mAssociatedSmartspaceTargetId:Ljava/lang/String;

.field private final blacklist mBaseAction:Landroid/app/smartspace/SmartspaceAction;

.field private final blacklist mComponentName:Landroid/content/ComponentName;

.field private final blacklist mCreationTimeMillis:J

.field private final blacklist mExpiryTimeMillis:J

.field private final blacklist mFeatureType:I

.field private final blacklist mHeaderAction:Landroid/app/smartspace/SmartspaceAction;

.field private final blacklist mIconGrid:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/app/smartspace/SmartspaceAction;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mRemoteViews:Landroid/widget/RemoteViews;

.field private final blacklist mScore:F

.field private final blacklist mSensitive:Z

.field private final blacklist mShouldShowExpanded:Z

.field private final blacklist mSliceUri:Landroid/net/Uri;

.field private final blacklist mSmartspaceTargetId:Ljava/lang/String;

.field private final blacklist mSourceNotificationKey:Ljava/lang/String;

.field private final blacklist mTemplateData:Landroid/app/smartspace/uitemplatedata/BaseTemplateData;

.field private final blacklist mUserHandle:Landroid/os/UserHandle;

.field private final blacklist mWidget:Landroid/appwidget/AppWidgetProviderInfo;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/app/smartspace/SmartspaceTarget$1;

    invoke-direct {v0}, Landroid/app/smartspace/SmartspaceTarget$1;-><init>()V

    sput-object v0, Landroid/app/smartspace/SmartspaceTarget;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/smartspace/SmartspaceTarget;->mSmartspaceTargetId:Ljava/lang/String;

    sget-object v0, Landroid/app/smartspace/SmartspaceAction;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/smartspace/SmartspaceAction;

    iput-object v0, p0, Landroid/app/smartspace/SmartspaceTarget;->mHeaderAction:Landroid/app/smartspace/SmartspaceAction;

    sget-object v0, Landroid/app/smartspace/SmartspaceAction;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/smartspace/SmartspaceAction;

    iput-object v0, p0, Landroid/app/smartspace/SmartspaceTarget;->mBaseAction:Landroid/app/smartspace/SmartspaceAction;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/smartspace/SmartspaceTarget;->mCreationTimeMillis:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/smartspace/SmartspaceTarget;->mExpiryTimeMillis:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/app/smartspace/SmartspaceTarget;->mScore:F

    sget-object v0, Landroid/app/smartspace/SmartspaceAction;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/app/smartspace/SmartspaceTarget;->mActionChips:Ljava/util/List;

    sget-object v0, Landroid/app/smartspace/SmartspaceAction;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/app/smartspace/SmartspaceTarget;->mIconGrid:Ljava/util/List;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/smartspace/SmartspaceTarget;->mFeatureType:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/smartspace/SmartspaceTarget;->mSensitive:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/smartspace/SmartspaceTarget;->mShouldShowExpanded:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/smartspace/SmartspaceTarget;->mSourceNotificationKey:Ljava/lang/String;

    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    iput-object v0, p0, Landroid/app/smartspace/SmartspaceTarget;->mComponentName:Landroid/content/ComponentName;

    sget-object v0, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserHandle;

    iput-object v0, p0, Landroid/app/smartspace/SmartspaceTarget;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/smartspace/SmartspaceTarget;->mAssociatedSmartspaceTargetId:Ljava/lang/String;

    sget-object v0, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Landroid/app/smartspace/SmartspaceTarget;->mSliceUri:Landroid/net/Uri;

    sget-object v0, Landroid/appwidget/AppWidgetProviderInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/appwidget/AppWidgetProviderInfo;

    iput-object v0, p0, Landroid/app/smartspace/SmartspaceTarget;->mWidget:Landroid/appwidget/AppWidgetProviderInfo;

    const/4 v0, 0x0

    const-class v1, Landroid/app/smartspace/uitemplatedata/BaseTemplateData;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/smartspace/uitemplatedata/BaseTemplateData;

    iput-object v0, p0, Landroid/app/smartspace/SmartspaceTarget;->mTemplateData:Landroid/app/smartspace/uitemplatedata/BaseTemplateData;

    sget-object v0, Landroid/widget/RemoteViews;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/RemoteViews;

    iput-object p1, p0, Landroid/app/smartspace/SmartspaceTarget;->mRemoteViews:Landroid/widget/RemoteViews;

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/app/smartspace/SmartspaceTarget-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/app/smartspace/SmartspaceTarget;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;Landroid/app/smartspace/SmartspaceAction;Landroid/app/smartspace/SmartspaceAction;JJFLjava/util/List;Ljava/util/List;IZZLjava/lang/String;Landroid/content/ComponentName;Landroid/os/UserHandle;Ljava/lang/String;Landroid/net/Uri;Landroid/appwidget/AppWidgetProviderInfo;Landroid/app/smartspace/uitemplatedata/BaseTemplateData;Landroid/widget/RemoteViews;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/app/smartspace/SmartspaceAction;",
            "Landroid/app/smartspace/SmartspaceAction;",
            "JJF",
            "Ljava/util/List<",
            "Landroid/app/smartspace/SmartspaceAction;",
            ">;",
            "Ljava/util/List<",
            "Landroid/app/smartspace/SmartspaceAction;",
            ">;IZZ",
            "Ljava/lang/String;",
            "Landroid/content/ComponentName;",
            "Landroid/os/UserHandle;",
            "Ljava/lang/String;",
            "Landroid/net/Uri;",
            "Landroid/appwidget/AppWidgetProviderInfo;",
            "Landroid/app/smartspace/uitemplatedata/BaseTemplateData;",
            "Landroid/widget/RemoteViews;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/app/smartspace/SmartspaceTarget;->mSmartspaceTargetId:Ljava/lang/String;

    iput-object p2, p0, Landroid/app/smartspace/SmartspaceTarget;->mHeaderAction:Landroid/app/smartspace/SmartspaceAction;

    iput-object p3, p0, Landroid/app/smartspace/SmartspaceTarget;->mBaseAction:Landroid/app/smartspace/SmartspaceAction;

    iput-wide p4, p0, Landroid/app/smartspace/SmartspaceTarget;->mCreationTimeMillis:J

    iput-wide p6, p0, Landroid/app/smartspace/SmartspaceTarget;->mExpiryTimeMillis:J

    iput p8, p0, Landroid/app/smartspace/SmartspaceTarget;->mScore:F

    iput-object p9, p0, Landroid/app/smartspace/SmartspaceTarget;->mActionChips:Ljava/util/List;

    iput-object p10, p0, Landroid/app/smartspace/SmartspaceTarget;->mIconGrid:Ljava/util/List;

    iput p11, p0, Landroid/app/smartspace/SmartspaceTarget;->mFeatureType:I

    iput-boolean p12, p0, Landroid/app/smartspace/SmartspaceTarget;->mSensitive:Z

    iput-boolean p13, p0, Landroid/app/smartspace/SmartspaceTarget;->mShouldShowExpanded:Z

    iput-object p14, p0, Landroid/app/smartspace/SmartspaceTarget;->mSourceNotificationKey:Ljava/lang/String;

    iput-object p15, p0, Landroid/app/smartspace/SmartspaceTarget;->mComponentName:Landroid/content/ComponentName;

    move-object/from16 p1, p16

    iput-object p1, p0, Landroid/app/smartspace/SmartspaceTarget;->mUserHandle:Landroid/os/UserHandle;

    move-object/from16 p1, p17

    iput-object p1, p0, Landroid/app/smartspace/SmartspaceTarget;->mAssociatedSmartspaceTargetId:Ljava/lang/String;

    move-object/from16 p1, p18

    iput-object p1, p0, Landroid/app/smartspace/SmartspaceTarget;->mSliceUri:Landroid/net/Uri;

    move-object/from16 p1, p19

    iput-object p1, p0, Landroid/app/smartspace/SmartspaceTarget;->mWidget:Landroid/appwidget/AppWidgetProviderInfo;

    move-object/from16 p1, p20

    iput-object p1, p0, Landroid/app/smartspace/SmartspaceTarget;->mTemplateData:Landroid/app/smartspace/uitemplatedata/BaseTemplateData;

    move-object/from16 p1, p21

    iput-object p1, p0, Landroid/app/smartspace/SmartspaceTarget;->mRemoteViews:Landroid/widget/RemoteViews;

    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/lang/String;Landroid/app/smartspace/SmartspaceAction;Landroid/app/smartspace/SmartspaceAction;JJFLjava/util/List;Ljava/util/List;IZZLjava/lang/String;Landroid/content/ComponentName;Landroid/os/UserHandle;Ljava/lang/String;Landroid/net/Uri;Landroid/appwidget/AppWidgetProviderInfo;Landroid/app/smartspace/uitemplatedata/BaseTemplateData;Landroid/widget/RemoteViews;Landroid/app/smartspace/SmartspaceTarget-IA;)V
    .locals 0

    invoke-direct/range {p0 .. p21}, Landroid/app/smartspace/SmartspaceTarget;-><init>(Ljava/lang/String;Landroid/app/smartspace/SmartspaceAction;Landroid/app/smartspace/SmartspaceAction;JJFLjava/util/List;Ljava/util/List;IZZLjava/lang/String;Landroid/content/ComponentName;Landroid/os/UserHandle;Ljava/lang/String;Landroid/net/Uri;Landroid/appwidget/AppWidgetProviderInfo;Landroid/app/smartspace/uitemplatedata/BaseTemplateData;Landroid/widget/RemoteViews;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 6

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

    goto/16 :goto_0

    :cond_1
    check-cast p1, Landroid/app/smartspace/SmartspaceTarget;

    iget-wide v2, p0, Landroid/app/smartspace/SmartspaceTarget;->mCreationTimeMillis:J

    iget-wide v4, p1, Landroid/app/smartspace/SmartspaceTarget;->mCreationTimeMillis:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget-wide v2, p0, Landroid/app/smartspace/SmartspaceTarget;->mExpiryTimeMillis:J

    iget-wide v4, p1, Landroid/app/smartspace/SmartspaceTarget;->mExpiryTimeMillis:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget v2, p1, Landroid/app/smartspace/SmartspaceTarget;->mScore:F

    iget v3, p0, Landroid/app/smartspace/SmartspaceTarget;->mScore:F

    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-nez v2, :cond_2

    iget v2, p0, Landroid/app/smartspace/SmartspaceTarget;->mFeatureType:I

    iget v3, p1, Landroid/app/smartspace/SmartspaceTarget;->mFeatureType:I

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Landroid/app/smartspace/SmartspaceTarget;->mSensitive:Z

    iget-boolean v3, p1, Landroid/app/smartspace/SmartspaceTarget;->mSensitive:Z

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Landroid/app/smartspace/SmartspaceTarget;->mShouldShowExpanded:Z

    iget-boolean v3, p1, Landroid/app/smartspace/SmartspaceTarget;->mShouldShowExpanded:Z

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Landroid/app/smartspace/SmartspaceTarget;->mSmartspaceTargetId:Ljava/lang/String;

    iget-object v3, p1, Landroid/app/smartspace/SmartspaceTarget;->mSmartspaceTargetId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/app/smartspace/SmartspaceTarget;->mHeaderAction:Landroid/app/smartspace/SmartspaceAction;

    iget-object v3, p1, Landroid/app/smartspace/SmartspaceTarget;->mHeaderAction:Landroid/app/smartspace/SmartspaceAction;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/app/smartspace/SmartspaceTarget;->mBaseAction:Landroid/app/smartspace/SmartspaceAction;

    iget-object v3, p1, Landroid/app/smartspace/SmartspaceTarget;->mBaseAction:Landroid/app/smartspace/SmartspaceAction;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/app/smartspace/SmartspaceTarget;->mActionChips:Ljava/util/List;

    iget-object v3, p1, Landroid/app/smartspace/SmartspaceTarget;->mActionChips:Ljava/util/List;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/app/smartspace/SmartspaceTarget;->mIconGrid:Ljava/util/List;

    iget-object v3, p1, Landroid/app/smartspace/SmartspaceTarget;->mIconGrid:Ljava/util/List;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/app/smartspace/SmartspaceTarget;->mSourceNotificationKey:Ljava/lang/String;

    iget-object v3, p1, Landroid/app/smartspace/SmartspaceTarget;->mSourceNotificationKey:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/app/smartspace/SmartspaceTarget;->mComponentName:Landroid/content/ComponentName;

    iget-object v3, p1, Landroid/app/smartspace/SmartspaceTarget;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v2, v3}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/app/smartspace/SmartspaceTarget;->mUserHandle:Landroid/os/UserHandle;

    iget-object v3, p1, Landroid/app/smartspace/SmartspaceTarget;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v2, v3}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/app/smartspace/SmartspaceTarget;->mAssociatedSmartspaceTargetId:Ljava/lang/String;

    iget-object v3, p1, Landroid/app/smartspace/SmartspaceTarget;->mAssociatedSmartspaceTargetId:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/app/smartspace/SmartspaceTarget;->mSliceUri:Landroid/net/Uri;

    iget-object v3, p1, Landroid/app/smartspace/SmartspaceTarget;->mSliceUri:Landroid/net/Uri;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/app/smartspace/SmartspaceTarget;->mWidget:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v3, p1, Landroid/app/smartspace/SmartspaceTarget;->mWidget:Landroid/appwidget/AppWidgetProviderInfo;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/app/smartspace/SmartspaceTarget;->mTemplateData:Landroid/app/smartspace/uitemplatedata/BaseTemplateData;

    iget-object v3, p1, Landroid/app/smartspace/SmartspaceTarget;->mTemplateData:Landroid/app/smartspace/uitemplatedata/BaseTemplateData;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object p0, p0, Landroid/app/smartspace/SmartspaceTarget;->mRemoteViews:Landroid/widget/RemoteViews;

    iget-object p1, p1, Landroid/app/smartspace/SmartspaceTarget;->mRemoteViews:Landroid/widget/RemoteViews;

    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public whitelist getActionChips()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/app/smartspace/SmartspaceAction;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroid/app/smartspace/SmartspaceTarget;->mActionChips:Ljava/util/List;

    return-object p0
.end method

.method public whitelist getAssociatedSmartspaceTargetId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/app/smartspace/SmartspaceTarget;->mAssociatedSmartspaceTargetId:Ljava/lang/String;

    return-object p0
.end method

.method public whitelist getBaseAction()Landroid/app/smartspace/SmartspaceAction;
    .locals 0

    iget-object p0, p0, Landroid/app/smartspace/SmartspaceTarget;->mBaseAction:Landroid/app/smartspace/SmartspaceAction;

    return-object p0
.end method

.method public whitelist getComponentName()Landroid/content/ComponentName;
    .locals 0

    iget-object p0, p0, Landroid/app/smartspace/SmartspaceTarget;->mComponentName:Landroid/content/ComponentName;

    return-object p0
.end method

.method public whitelist getCreationTimeMillis()J
    .locals 2

    iget-wide v0, p0, Landroid/app/smartspace/SmartspaceTarget;->mCreationTimeMillis:J

    return-wide v0
.end method

.method public whitelist getExpiryTimeMillis()J
    .locals 2

    iget-wide v0, p0, Landroid/app/smartspace/SmartspaceTarget;->mExpiryTimeMillis:J

    return-wide v0
.end method

.method public whitelist getFeatureType()I
    .locals 0

    iget p0, p0, Landroid/app/smartspace/SmartspaceTarget;->mFeatureType:I

    return p0
.end method

.method public whitelist getHeaderAction()Landroid/app/smartspace/SmartspaceAction;
    .locals 0

    iget-object p0, p0, Landroid/app/smartspace/SmartspaceTarget;->mHeaderAction:Landroid/app/smartspace/SmartspaceAction;

    return-object p0
.end method

.method public whitelist getIconGrid()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/app/smartspace/SmartspaceAction;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroid/app/smartspace/SmartspaceTarget;->mIconGrid:Ljava/util/List;

    return-object p0
.end method

.method public whitelist getRemoteViews()Landroid/widget/RemoteViews;
    .locals 0

    iget-object p0, p0, Landroid/app/smartspace/SmartspaceTarget;->mRemoteViews:Landroid/widget/RemoteViews;

    return-object p0
.end method

.method public whitelist getScore()F
    .locals 0

    iget p0, p0, Landroid/app/smartspace/SmartspaceTarget;->mScore:F

    return p0
.end method

.method public whitelist getSliceUri()Landroid/net/Uri;
    .locals 0

    iget-object p0, p0, Landroid/app/smartspace/SmartspaceTarget;->mSliceUri:Landroid/net/Uri;

    return-object p0
.end method

.method public whitelist getSmartspaceTargetId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/app/smartspace/SmartspaceTarget;->mSmartspaceTargetId:Ljava/lang/String;

    return-object p0
.end method

.method public whitelist getSourceNotificationKey()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/app/smartspace/SmartspaceTarget;->mSourceNotificationKey:Ljava/lang/String;

    return-object p0
.end method

.method public whitelist getTemplateData()Landroid/app/smartspace/uitemplatedata/BaseTemplateData;
    .locals 0

    iget-object p0, p0, Landroid/app/smartspace/SmartspaceTarget;->mTemplateData:Landroid/app/smartspace/uitemplatedata/BaseTemplateData;

    return-object p0
.end method

.method public whitelist getUserHandle()Landroid/os/UserHandle;
    .locals 0

    iget-object p0, p0, Landroid/app/smartspace/SmartspaceTarget;->mUserHandle:Landroid/os/UserHandle;

    return-object p0
.end method

.method public whitelist getWidget()Landroid/appwidget/AppWidgetProviderInfo;
    .locals 0

    iget-object p0, p0, Landroid/app/smartspace/SmartspaceTarget;->mWidget:Landroid/appwidget/AppWidgetProviderInfo;

    return-object p0
.end method

.method public whitelist test-api hashCode()I
    .locals 20

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/app/smartspace/SmartspaceTarget;->mSmartspaceTargetId:Ljava/lang/String;

    iget-object v2, v0, Landroid/app/smartspace/SmartspaceTarget;->mHeaderAction:Landroid/app/smartspace/SmartspaceAction;

    iget-object v3, v0, Landroid/app/smartspace/SmartspaceTarget;->mBaseAction:Landroid/app/smartspace/SmartspaceAction;

    iget-wide v4, v0, Landroid/app/smartspace/SmartspaceTarget;->mCreationTimeMillis:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iget-wide v5, v0, Landroid/app/smartspace/SmartspaceTarget;->mExpiryTimeMillis:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    iget v6, v0, Landroid/app/smartspace/SmartspaceTarget;->mScore:F

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    iget-object v7, v0, Landroid/app/smartspace/SmartspaceTarget;->mActionChips:Ljava/util/List;

    iget-object v8, v0, Landroid/app/smartspace/SmartspaceTarget;->mIconGrid:Ljava/util/List;

    iget v9, v0, Landroid/app/smartspace/SmartspaceTarget;->mFeatureType:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    iget-boolean v10, v0, Landroid/app/smartspace/SmartspaceTarget;->mSensitive:Z

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    iget-boolean v11, v0, Landroid/app/smartspace/SmartspaceTarget;->mShouldShowExpanded:Z

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    iget-object v12, v0, Landroid/app/smartspace/SmartspaceTarget;->mSourceNotificationKey:Ljava/lang/String;

    iget-object v13, v0, Landroid/app/smartspace/SmartspaceTarget;->mComponentName:Landroid/content/ComponentName;

    iget-object v14, v0, Landroid/app/smartspace/SmartspaceTarget;->mUserHandle:Landroid/os/UserHandle;

    iget-object v15, v0, Landroid/app/smartspace/SmartspaceTarget;->mAssociatedSmartspaceTargetId:Ljava/lang/String;

    move-object/from16 v16, v1

    iget-object v1, v0, Landroid/app/smartspace/SmartspaceTarget;->mSliceUri:Landroid/net/Uri;

    move-object/from16 v17, v1

    iget-object v1, v0, Landroid/app/smartspace/SmartspaceTarget;->mWidget:Landroid/appwidget/AppWidgetProviderInfo;

    move-object/from16 v18, v1

    iget-object v1, v0, Landroid/app/smartspace/SmartspaceTarget;->mTemplateData:Landroid/app/smartspace/uitemplatedata/BaseTemplateData;

    iget-object v0, v0, Landroid/app/smartspace/SmartspaceTarget;->mRemoteViews:Landroid/widget/RemoteViews;

    move-object/from16 v19, v18

    move-object/from16 v18, v1

    move-object/from16 v1, v16

    move-object/from16 v16, v17

    move-object/from16 v17, v19

    move-object/from16 v19, v0

    filled-new-array/range {v1 .. v19}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist isSensitive()Z
    .locals 0

    iget-boolean p0, p0, Landroid/app/smartspace/SmartspaceTarget;->mSensitive:Z

    return p0
.end method

.method public whitelist shouldShowExpanded()Z
    .locals 0

    iget-boolean p0, p0, Landroid/app/smartspace/SmartspaceTarget;->mShouldShowExpanded:Z

    return p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SmartspaceTarget{mSmartspaceTargetId=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/app/smartspace/SmartspaceTarget;->mSmartspaceTargetId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', mHeaderAction="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/app/smartspace/SmartspaceTarget;->mHeaderAction:Landroid/app/smartspace/SmartspaceAction;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mBaseAction="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/app/smartspace/SmartspaceTarget;->mBaseAction:Landroid/app/smartspace/SmartspaceAction;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mCreationTimeMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroid/app/smartspace/SmartspaceTarget;->mCreationTimeMillis:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mExpiryTimeMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroid/app/smartspace/SmartspaceTarget;->mExpiryTimeMillis:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mScore="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/app/smartspace/SmartspaceTarget;->mScore:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", mActionChips="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/app/smartspace/SmartspaceTarget;->mActionChips:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mIconGrid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/app/smartspace/SmartspaceTarget;->mIconGrid:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mFeatureType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/app/smartspace/SmartspaceTarget;->mFeatureType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mSensitive="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroid/app/smartspace/SmartspaceTarget;->mSensitive:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mShouldShowExpanded="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroid/app/smartspace/SmartspaceTarget;->mShouldShowExpanded:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mSourceNotificationKey=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/app/smartspace/SmartspaceTarget;->mSourceNotificationKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', mComponentName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/app/smartspace/SmartspaceTarget;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mUserHandle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/app/smartspace/SmartspaceTarget;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mAssociatedSmartspaceTargetId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/app/smartspace/SmartspaceTarget;->mAssociatedSmartspaceTargetId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', mSliceUri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/app/smartspace/SmartspaceTarget;->mSliceUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mWidget="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/app/smartspace/SmartspaceTarget;->mWidget:Landroid/appwidget/AppWidgetProviderInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mTemplateData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/app/smartspace/SmartspaceTarget;->mTemplateData:Landroid/app/smartspace/uitemplatedata/BaseTemplateData;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mRemoteViews="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroid/app/smartspace/SmartspaceTarget;->mRemoteViews:Landroid/widget/RemoteViews;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget-object v0, p0, Landroid/app/smartspace/SmartspaceTarget;->mSmartspaceTargetId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/app/smartspace/SmartspaceTarget;->mHeaderAction:Landroid/app/smartspace/SmartspaceAction;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Landroid/app/smartspace/SmartspaceTarget;->mBaseAction:Landroid/app/smartspace/SmartspaceAction;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    iget-wide v0, p0, Landroid/app/smartspace/SmartspaceTarget;->mCreationTimeMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Landroid/app/smartspace/SmartspaceTarget;->mExpiryTimeMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget v0, p0, Landroid/app/smartspace/SmartspaceTarget;->mScore:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget-object v0, p0, Landroid/app/smartspace/SmartspaceTarget;->mActionChips:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    iget-object v0, p0, Landroid/app/smartspace/SmartspaceTarget;->mIconGrid:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    iget v0, p0, Landroid/app/smartspace/SmartspaceTarget;->mFeatureType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Landroid/app/smartspace/SmartspaceTarget;->mSensitive:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-boolean v0, p0, Landroid/app/smartspace/SmartspaceTarget;->mShouldShowExpanded:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-object v0, p0, Landroid/app/smartspace/SmartspaceTarget;->mSourceNotificationKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/app/smartspace/SmartspaceTarget;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Landroid/app/smartspace/SmartspaceTarget;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Landroid/app/smartspace/SmartspaceTarget;->mAssociatedSmartspaceTargetId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/app/smartspace/SmartspaceTarget;->mSliceUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Landroid/app/smartspace/SmartspaceTarget;->mWidget:Landroid/appwidget/AppWidgetProviderInfo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Landroid/app/smartspace/SmartspaceTarget;->mTemplateData:Landroid/app/smartspace/uitemplatedata/BaseTemplateData;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object p0, p0, Landroid/app/smartspace/SmartspaceTarget;->mRemoteViews:Landroid/widget/RemoteViews;

    invoke-virtual {p1, p0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    return-void
.end method
