.class public final Landroid/view/accessibility/AccessibilityWindowInfo;
.super Ljava/lang/Object;
.source "AccessibilityWindowInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/accessibility/AccessibilityWindowInfo$WindowListSparseArray;
    }
.end annotation


# static fields
.field public static final greylist-max-o ACTIVE_WINDOW_ID:I = 0x7fffffff

.field public static final greylist-max-o ANY_WINDOW_ID:I = -0x2

.field private static final greylist-max-o BOOLEAN_PROPERTY_ACCESSIBILITY_FOCUSED:I = 0x4

.field private static final greylist-max-o BOOLEAN_PROPERTY_ACTIVE:I = 0x1

.field private static final greylist-max-o BOOLEAN_PROPERTY_FOCUSED:I = 0x2

.field private static final greylist-max-o BOOLEAN_PROPERTY_PICTURE_IN_PICTURE:I = 0x8

.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/view/accessibility/AccessibilityWindowInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o DEBUG:Z = false

.field private static final greylist-max-o MAX_POOL_SIZE:I = 0xa

.field public static final greylist-max-o PICTURE_IN_PICTURE_ACTION_REPLACER_WINDOW_ID:I = -0x3

.field public static final whitelist TYPE_ACCESSIBILITY_OVERLAY:I = 0x4

.field public static final whitelist TYPE_APPLICATION:I = 0x1

.field public static final whitelist TYPE_INPUT_METHOD:I = 0x2

.field public static final whitelist TYPE_MAGNIFICATION_OVERLAY:I = 0x6

.field public static final whitelist TYPE_SPLIT_SCREEN_DIVIDER:I = 0x5

.field public static final whitelist TYPE_SYSTEM:I = 0x3

.field public static final whitelist TYPE_WINDOW_CONTROL:I = 0x7

.field public static final blacklist UNDEFINED_CONNECTION_ID:I = -0x1

.field public static final greylist-max-o UNDEFINED_WINDOW_ID:I = -0x1

.field private static greylist-max-o sNumInstancesInUse:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static final greylist-max-o sPool:Landroid/util/Pools$SynchronizedPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pools$SynchronizedPool<",
            "Landroid/view/accessibility/AccessibilityWindowInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private greylist-max-o mAnchorId:J

.field private greylist-max-o mBooleanProperties:I

.field private greylist-max-o mChildIds:Landroid/util/LongArray;

.field private greylist-max-o mConnectionId:I

.field private blacklist mDisplayId:I

.field private greylist-max-o mId:I

.field private greylist-max-o mLayer:I

.field private blacklist mLocales:Landroid/os/LocaleList;

.field private greylist-max-o mParentId:I

.field private blacklist mRawType:I

.field private blacklist mRegionInScreen:Landroid/graphics/Region;

.field private blacklist mTaskId:I

.field private greylist-max-o mTitle:Ljava/lang/CharSequence;

.field private blacklist mTransitionTime:J

.field private greylist-max-o mType:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$minitFromParcel(Landroid/view/accessibility/AccessibilityWindowInfo;Landroid/os/Parcel;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/accessibility/AccessibilityWindowInfo;->initFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .locals 2

    new-instance v0, Landroid/util/Pools$SynchronizedPool;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Landroid/util/Pools$SynchronizedPool;-><init>(I)V

    sput-object v0, Landroid/view/accessibility/AccessibilityWindowInfo;->sPool:Landroid/util/Pools$SynchronizedPool;

    new-instance v0, Landroid/view/accessibility/AccessibilityWindowInfo$1;

    invoke-direct {v0}, Landroid/view/accessibility/AccessibilityWindowInfo$1;-><init>()V

    sput-object v0, Landroid/view/accessibility/AccessibilityWindowInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mDisplayId:I

    iput v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mType:I

    iput v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mLayer:I

    iput v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mId:I

    iput v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mParentId:I

    iput v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mTaskId:I

    new-instance v1, Landroid/graphics/Region;

    invoke-direct {v1}, Landroid/graphics/Region;-><init>()V

    iput-object v1, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mRegionInScreen:Landroid/graphics/Region;

    sget-wide v1, Landroid/view/accessibility/AccessibilityNodeInfo;->UNDEFINED_NODE_ID:J

    iput-wide v1, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mAnchorId:J

    iput v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mConnectionId:I

    invoke-static {}, Landroid/os/LocaleList;->getEmptyLocaleList()Landroid/os/LocaleList;

    move-result-object v1

    iput-object v1, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mLocales:Landroid/os/LocaleList;

    iput v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mRawType:I

    return-void
.end method

.method public constructor whitelist <init>(Landroid/view/accessibility/AccessibilityWindowInfo;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mDisplayId:I

    iput v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mType:I

    iput v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mLayer:I

    iput v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mId:I

    iput v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mParentId:I

    iput v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mTaskId:I

    new-instance v1, Landroid/graphics/Region;

    invoke-direct {v1}, Landroid/graphics/Region;-><init>()V

    iput-object v1, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mRegionInScreen:Landroid/graphics/Region;

    sget-wide v1, Landroid/view/accessibility/AccessibilityNodeInfo;->UNDEFINED_NODE_ID:J

    iput-wide v1, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mAnchorId:J

    iput v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mConnectionId:I

    invoke-static {}, Landroid/os/LocaleList;->getEmptyLocaleList()Landroid/os/LocaleList;

    move-result-object v1

    iput-object v1, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mLocales:Landroid/os/LocaleList;

    iput v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mRawType:I

    invoke-direct {p0, p1}, Landroid/view/accessibility/AccessibilityWindowInfo;->init(Landroid/view/accessibility/AccessibilityWindowInfo;)V

    return-void
.end method

.method private greylist-max-o clear()V
    .locals 4

    const/4 v0, -0x1

    iput v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mDisplayId:I

    iput v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mType:I

    iput v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mLayer:I

    const/4 v1, 0x0

    iput v1, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mBooleanProperties:I

    iput v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mId:I

    iput v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mParentId:I

    iput v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mTaskId:I

    iget-object v1, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mRegionInScreen:Landroid/graphics/Region;

    invoke-virtual {v1}, Landroid/graphics/Region;->setEmpty()V

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mChildIds:Landroid/util/LongArray;

    iput v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mConnectionId:I

    sget-wide v2, Landroid/view/accessibility/AccessibilityNodeInfo;->UNDEFINED_NODE_ID:J

    iput-wide v2, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mAnchorId:J

    iput-object v1, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mTitle:Ljava/lang/CharSequence;

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mTransitionTime:J

    invoke-static {}, Landroid/os/LocaleList;->getEmptyLocaleList()Landroid/os/LocaleList;

    move-result-object v1

    iput-object v1, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mLocales:Landroid/os/LocaleList;

    iput v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mRawType:I

    return-void
.end method

.method private greylist-max-o getBooleanProperty(I)Z
    .locals 0

    iget p0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mBooleanProperties:I

    and-int/2addr p0, p1

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private blacklist init(Landroid/view/accessibility/AccessibilityWindowInfo;)V
    .locals 2

    iget v0, p1, Landroid/view/accessibility/AccessibilityWindowInfo;->mDisplayId:I

    iput v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mDisplayId:I

    iget v0, p1, Landroid/view/accessibility/AccessibilityWindowInfo;->mType:I

    iput v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mType:I

    iget v0, p1, Landroid/view/accessibility/AccessibilityWindowInfo;->mLayer:I

    iput v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mLayer:I

    iget v0, p1, Landroid/view/accessibility/AccessibilityWindowInfo;->mBooleanProperties:I

    iput v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mBooleanProperties:I

    iget v0, p1, Landroid/view/accessibility/AccessibilityWindowInfo;->mId:I

    iput v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mId:I

    iget v0, p1, Landroid/view/accessibility/AccessibilityWindowInfo;->mParentId:I

    iput v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mParentId:I

    iget v0, p1, Landroid/view/accessibility/AccessibilityWindowInfo;->mTaskId:I

    iput v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mTaskId:I

    iget-object v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mRegionInScreen:Landroid/graphics/Region;

    iget-object v1, p1, Landroid/view/accessibility/AccessibilityWindowInfo;->mRegionInScreen:Landroid/graphics/Region;

    invoke-virtual {v0, v1}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    iget-object v0, p1, Landroid/view/accessibility/AccessibilityWindowInfo;->mTitle:Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mTitle:Ljava/lang/CharSequence;

    iget-wide v0, p1, Landroid/view/accessibility/AccessibilityWindowInfo;->mAnchorId:J

    iput-wide v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mAnchorId:J

    iget-wide v0, p1, Landroid/view/accessibility/AccessibilityWindowInfo;->mTransitionTime:J

    iput-wide v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mTransitionTime:J

    iget-object v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mChildIds:Landroid/util/LongArray;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/util/LongArray;->clear()V

    :cond_0
    iget-object v0, p1, Landroid/view/accessibility/AccessibilityWindowInfo;->mChildIds:Landroid/util/LongArray;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/util/LongArray;->size()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mChildIds:Landroid/util/LongArray;

    if-nez v0, :cond_1

    iget-object v0, p1, Landroid/view/accessibility/AccessibilityWindowInfo;->mChildIds:Landroid/util/LongArray;

    invoke-virtual {v0}, Landroid/util/LongArray;->clone()Landroid/util/LongArray;

    move-result-object v0

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mChildIds:Landroid/util/LongArray;

    goto :goto_0

    :cond_1
    iget-object v1, p1, Landroid/view/accessibility/AccessibilityWindowInfo;->mChildIds:Landroid/util/LongArray;

    invoke-virtual {v0, v1}, Landroid/util/LongArray;->addAll(Landroid/util/LongArray;)V

    :cond_2
    :goto_0
    iget v0, p1, Landroid/view/accessibility/AccessibilityWindowInfo;->mConnectionId:I

    iput v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mConnectionId:I

    iget-object v0, p1, Landroid/view/accessibility/AccessibilityWindowInfo;->mLocales:Landroid/os/LocaleList;

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mLocales:Landroid/os/LocaleList;

    iget p1, p1, Landroid/view/accessibility/AccessibilityWindowInfo;->mRawType:I

    iput p1, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mRawType:I

    return-void
.end method

.method private greylist-max-o initFromParcel(Landroid/os/Parcel;)V
    .locals 6

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mDisplayId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mType:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mLayer:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mBooleanProperties:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mParentId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mTaskId:I

    sget-object v0, Landroid/graphics/Region;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Region;

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mRegionInScreen:Landroid/graphics/Region;

    invoke-virtual {p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mAnchorId:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mTransitionTime:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v1, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mChildIds:Landroid/util/LongArray;

    if-nez v1, :cond_0

    new-instance v1, Landroid/util/LongArray;

    invoke-direct {v1, v0}, Landroid/util/LongArray;-><init>(I)V

    iput-object v1, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mChildIds:Landroid/util/LongArray;

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iget-object v3, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mChildIds:Landroid/util/LongArray;

    int-to-long v4, v2

    invoke-virtual {v3, v4, v5}, Landroid/util/LongArray;->add(J)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mConnectionId:I

    const/4 v0, 0x0

    const-class v1, Landroid/os/LocaleList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/LocaleList;

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mLocales:Landroid/os/LocaleList;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mRawType:I

    return-void
.end method

.method public static whitelist obtain()Landroid/view/accessibility/AccessibilityWindowInfo;
    .locals 2

    sget-object v0, Landroid/view/accessibility/AccessibilityWindowInfo;->sPool:Landroid/util/Pools$SynchronizedPool;

    invoke-virtual {v0}, Landroid/util/Pools$SynchronizedPool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityWindowInfo;

    if-nez v0, :cond_0

    new-instance v0, Landroid/view/accessibility/AccessibilityWindowInfo;

    invoke-direct {v0}, Landroid/view/accessibility/AccessibilityWindowInfo;-><init>()V

    :cond_0
    sget-object v1, Landroid/view/accessibility/AccessibilityWindowInfo;->sNumInstancesInUse:Ljava/util/concurrent/atomic/AtomicInteger;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    :cond_1
    return-object v0
.end method

.method public static whitelist obtain(Landroid/view/accessibility/AccessibilityWindowInfo;)Landroid/view/accessibility/AccessibilityWindowInfo;
    .locals 1

    invoke-static {}, Landroid/view/accessibility/AccessibilityWindowInfo;->obtain()Landroid/view/accessibility/AccessibilityWindowInfo;

    move-result-object v0

    invoke-direct {v0, p0}, Landroid/view/accessibility/AccessibilityWindowInfo;->init(Landroid/view/accessibility/AccessibilityWindowInfo;)V

    return-object v0
.end method

.method private greylist-max-o setBooleanProperty(IZ)V
    .locals 0

    if-eqz p2, :cond_0

    iget p2, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mBooleanProperties:I

    or-int/2addr p1, p2

    iput p1, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mBooleanProperties:I

    return-void

    :cond_0
    iget p2, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mBooleanProperties:I

    not-int p1, p1

    and-int/2addr p1, p2

    iput p1, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mBooleanProperties:I

    return-void
.end method

.method public static blacklist setNumInstancesInUseCounter(Ljava/util/concurrent/atomic/AtomicInteger;)V
    .locals 1

    sget-object v0, Landroid/view/accessibility/AccessibilityWindowInfo;->sNumInstancesInUse:Ljava/util/concurrent/atomic/AtomicInteger;

    if-eqz v0, :cond_0

    sput-object p0, Landroid/view/accessibility/AccessibilityWindowInfo;->sNumInstancesInUse:Ljava/util/concurrent/atomic/AtomicInteger;

    :cond_0
    return-void
.end method

.method public static greylist-max-o typeToString(I)Ljava/lang/String;
    .locals 2

    packed-switch p0, :pswitch_data_0

    invoke-static {}, Landroid/view/accessibility/Flags;->enableTypeWindowControl()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x7

    if-ne p0, v0, :cond_0

    const-string p0, "TYPE_WINDOW_CONTROL"

    return-object p0

    :pswitch_0
    const-string p0, "TYPE_MAGNIFICATION_OVERLAY"

    return-object p0

    :pswitch_1
    const-string p0, "TYPE_SPLIT_SCREEN_DIVIDER"

    return-object p0

    :pswitch_2
    const-string p0, "TYPE_ACCESSIBILITY_OVERLAY"

    return-object p0

    :pswitch_3
    const-string p0, "TYPE_SYSTEM"

    return-object p0

    :pswitch_4
    const-string p0, "TYPE_INPUT_METHOD"

    return-object p0

    :pswitch_5
    const-string p0, "TYPE_APPLICATION"

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<UNKNOWN:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ">"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public greylist-max-o addChild(I)V
    .locals 2

    iget-object v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mChildIds:Landroid/util/LongArray;

    if-nez v0, :cond_0

    new-instance v0, Landroid/util/LongArray;

    invoke-direct {v0}, Landroid/util/LongArray;-><init>()V

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mChildIds:Landroid/util/LongArray;

    :cond_0
    iget-object p0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mChildIds:Landroid/util/LongArray;

    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Landroid/util/LongArray;->add(J)V

    return-void
.end method

.method public whitelist describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public greylist-max-o differenceFrom(Landroid/view/accessibility/AccessibilityWindowInfo;)I
    .locals 4

    iget v0, p1, Landroid/view/accessibility/AccessibilityWindowInfo;->mId:I

    iget v1, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mId:I

    if-ne v0, v1, :cond_a

    iget v0, p1, Landroid/view/accessibility/AccessibilityWindowInfo;->mType:I

    iget v1, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mType:I

    if-ne v0, v1, :cond_9

    iget-object v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mTitle:Ljava/lang/CharSequence;

    iget-object v1, p1, Landroid/view/accessibility/AccessibilityWindowInfo;->mTitle:Ljava/lang/CharSequence;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x4

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mRegionInScreen:Landroid/graphics/Region;

    iget-object v3, p1, Landroid/view/accessibility/AccessibilityWindowInfo;->mRegionInScreen:Landroid/graphics/Region;

    invoke-virtual {v2, v3}, Landroid/graphics/Region;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    or-int/lit8 v0, v0, 0x8

    :cond_1
    iget v2, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mLayer:I

    iget v3, p1, Landroid/view/accessibility/AccessibilityWindowInfo;->mLayer:I

    if-eq v2, v3, :cond_2

    or-int/lit8 v0, v0, 0x10

    :cond_2
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Landroid/view/accessibility/AccessibilityWindowInfo;->getBooleanProperty(I)Z

    move-result v3

    invoke-direct {p1, v2}, Landroid/view/accessibility/AccessibilityWindowInfo;->getBooleanProperty(I)Z

    move-result v2

    if-eq v3, v2, :cond_3

    or-int/lit8 v0, v0, 0x20

    :cond_3
    const/4 v2, 0x2

    invoke-direct {p0, v2}, Landroid/view/accessibility/AccessibilityWindowInfo;->getBooleanProperty(I)Z

    move-result v3

    invoke-direct {p1, v2}, Landroid/view/accessibility/AccessibilityWindowInfo;->getBooleanProperty(I)Z

    move-result v2

    if-eq v3, v2, :cond_4

    or-int/lit8 v0, v0, 0x40

    :cond_4
    invoke-direct {p0, v1}, Landroid/view/accessibility/AccessibilityWindowInfo;->getBooleanProperty(I)Z

    move-result v2

    invoke-direct {p1, v1}, Landroid/view/accessibility/AccessibilityWindowInfo;->getBooleanProperty(I)Z

    move-result v1

    if-eq v2, v1, :cond_5

    or-int/lit16 v0, v0, 0x80

    :cond_5
    const/16 v1, 0x8

    invoke-direct {p0, v1}, Landroid/view/accessibility/AccessibilityWindowInfo;->getBooleanProperty(I)Z

    move-result v2

    invoke-direct {p1, v1}, Landroid/view/accessibility/AccessibilityWindowInfo;->getBooleanProperty(I)Z

    move-result v1

    if-eq v2, v1, :cond_6

    or-int/lit16 v0, v0, 0x400

    :cond_6
    iget v1, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mParentId:I

    iget v2, p1, Landroid/view/accessibility/AccessibilityWindowInfo;->mParentId:I

    if-eq v1, v2, :cond_7

    or-int/lit16 v0, v0, 0x100

    :cond_7
    iget-object p0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mChildIds:Landroid/util/LongArray;

    iget-object p1, p1, Landroid/view/accessibility/AccessibilityWindowInfo;->mChildIds:Landroid/util/LongArray;

    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_8

    or-int/lit16 p0, v0, 0x200

    return p0

    :cond_8
    return v0

    :cond_9
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Not same type."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Not same window."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    check-cast p1, Landroid/view/accessibility/AccessibilityWindowInfo;

    iget p0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mId:I

    iget p1, p1, Landroid/view/accessibility/AccessibilityWindowInfo;->mId:I

    if-ne p0, p1, :cond_3

    return v0

    :cond_3
    return v1
.end method

.method public whitelist getAnchor()Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 10

    iget v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mConnectionId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget-wide v2, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mAnchorId:J

    sget-wide v4, Landroid/view/accessibility/AccessibilityNodeInfo;->UNDEFINED_NODE_ID:J

    cmp-long v0, v2, v4

    if-eqz v0, :cond_1

    iget v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mParentId:I

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    move-result-object v2

    iget v3, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mConnectionId:I

    iget v4, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mParentId:I

    iget-wide v5, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mAnchorId:J

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v7, 0x1

    invoke-virtual/range {v2 .. v9}, Landroid/view/accessibility/AccessibilityInteractionClient;->findAccessibilityNodeInfoByAccessibilityId(IIJZILandroid/os/Bundle;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public whitelist getBoundsInScreen(Landroid/graphics/Rect;)V
    .locals 0

    iget-object p0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mRegionInScreen:Landroid/graphics/Region;

    invoke-virtual {p0}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-void
.end method

.method public whitelist getChild(I)Landroid/view/accessibility/AccessibilityWindowInfo;
    .locals 3

    iget-object v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mChildIds:Landroid/util/LongArray;

    if-eqz v0, :cond_1

    iget v1, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mConnectionId:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {v0, p1}, Landroid/util/LongArray;->get(I)J

    move-result-wide v0

    long-to-int p1, v0

    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    move-result-object v0

    iget p0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mConnectionId:I

    invoke-virtual {v0, p0, p1}, Landroid/view/accessibility/AccessibilityInteractionClient;->getWindow(II)Landroid/view/accessibility/AccessibilityWindowInfo;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p0
.end method

.method public whitelist getChildCount()I
    .locals 0

    iget-object p0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mChildIds:Landroid/util/LongArray;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/util/LongArray;->size()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public whitelist getDisplayId()I
    .locals 0

    iget p0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mDisplayId:I

    return p0
.end method

.method public whitelist getId()I
    .locals 0

    iget p0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mId:I

    return p0
.end method

.method public whitelist getLayer()I
    .locals 0

    iget p0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mLayer:I

    return p0
.end method

.method public whitelist getLocales()Landroid/os/LocaleList;
    .locals 0

    iget-object p0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mLocales:Landroid/os/LocaleList;

    return-object p0
.end method

.method public whitelist getParent()Landroid/view/accessibility/AccessibilityWindowInfo;
    .locals 2

    iget v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mConnectionId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mParentId:I

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    move-result-object v0

    iget v1, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mConnectionId:I

    iget p0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mParentId:I

    invoke-virtual {v0, v1, p0}, Landroid/view/accessibility/AccessibilityInteractionClient;->getWindow(II)Landroid/view/accessibility/AccessibilityWindowInfo;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public whitelist getRegionInScreen(Landroid/graphics/Region;)V
    .locals 0

    iget-object p0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mRegionInScreen:Landroid/graphics/Region;

    invoke-virtual {p1, p0}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    return-void
.end method

.method public whitelist getRoot()Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 1

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/view/accessibility/AccessibilityWindowInfo;->getRoot(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p0

    return-object p0
.end method

.method public whitelist getRoot(I)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 8

    iget v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mConnectionId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    move-result-object v0

    iget v1, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mConnectionId:I

    iget v2, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mId:I

    sget-wide v3, Landroid/view/accessibility/AccessibilityNodeInfo;->ROOT_NODE_ID:J

    const/4 v5, 0x1

    const/4 v7, 0x0

    move v6, p1

    invoke-virtual/range {v0 .. v7}, Landroid/view/accessibility/AccessibilityInteractionClient;->findAccessibilityNodeInfoByAccessibilityId(IIJZILandroid/os/Bundle;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getTaskId()I
    .locals 0

    iget p0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mTaskId:I

    return p0
.end method

.method public whitelist getTitle()Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mTitle:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public whitelist getTransitionTimeMillis()J
    .locals 2

    iget-wide v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mTransitionTime:J

    return-wide v0
.end method

.method public whitelist getType()I
    .locals 0

    iget p0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mType:I

    return p0
.end method

.method public whitelist test-api hashCode()I
    .locals 0

    iget p0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mId:I

    return p0
.end method

.method public whitelist isAccessibilityFocused()Z
    .locals 1

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Landroid/view/accessibility/AccessibilityWindowInfo;->getBooleanProperty(I)Z

    move-result p0

    return p0
.end method

.method public whitelist isActive()Z
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/view/accessibility/AccessibilityWindowInfo;->getBooleanProperty(I)Z

    move-result p0

    return p0
.end method

.method public whitelist isFocused()Z
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroid/view/accessibility/AccessibilityWindowInfo;->getBooleanProperty(I)Z

    move-result p0

    return p0
.end method

.method public whitelist isInPictureInPictureMode()Z
    .locals 1

    const/16 v0, 0x8

    invoke-direct {p0, v0}, Landroid/view/accessibility/AccessibilityWindowInfo;->getBooleanProperty(I)Z

    move-result p0

    return p0
.end method

.method public whitelist recycle()V
    .locals 1

    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityWindowInfo;->clear()V

    sget-object v0, Landroid/view/accessibility/AccessibilityWindowInfo;->sPool:Landroid/util/Pools$SynchronizedPool;

    invoke-virtual {v0, p0}, Landroid/util/Pools$SynchronizedPool;->release(Ljava/lang/Object;)Z

    sget-object p0, Landroid/view/accessibility/AccessibilityWindowInfo;->sNumInstancesInUse:Ljava/util/concurrent/atomic/AtomicInteger;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    :cond_0
    return-void
.end method

.method public blacklist refresh()Z
    .locals 5

    iget v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mConnectionId:I

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_2

    iget v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mId:I

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    move-result-object v0

    iget v2, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mConnectionId:I

    iget v3, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mId:I

    const/4 v4, 0x1

    invoke-virtual {v0, v2, v3, v4}, Landroid/view/accessibility/AccessibilityInteractionClient;->getWindow(IIZ)Landroid/view/accessibility/AccessibilityWindowInfo;

    move-result-object v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    invoke-direct {p0, v0}, Landroid/view/accessibility/AccessibilityWindowInfo;->init(Landroid/view/accessibility/AccessibilityWindowInfo;)V

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityWindowInfo;->recycle()V

    return v4

    :cond_2
    :goto_0
    return v1
.end method

.method public whitelist semGetRawType()I
    .locals 0

    iget p0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mRawType:I

    return p0
.end method

.method public blacklist semSetRawType(I)V
    .locals 0

    iput p1, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mRawType:I

    return-void
.end method

.method public greylist-max-o setAccessibilityFocused(Z)V
    .locals 1

    const/4 v0, 0x4

    invoke-direct {p0, v0, p1}, Landroid/view/accessibility/AccessibilityWindowInfo;->setBooleanProperty(IZ)V

    return-void
.end method

.method public greylist-max-o setActive(Z)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Landroid/view/accessibility/AccessibilityWindowInfo;->setBooleanProperty(IZ)V

    return-void
.end method

.method public greylist-max-o setAnchorId(J)V
    .locals 0

    iput-wide p1, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mAnchorId:J

    return-void
.end method

.method public greylist-max-o setConnectionId(I)V
    .locals 0

    iput p1, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mConnectionId:I

    return-void
.end method

.method public blacklist setDisplayId(I)V
    .locals 0

    iput p1, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mDisplayId:I

    return-void
.end method

.method public greylist-max-o setFocused(Z)V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Landroid/view/accessibility/AccessibilityWindowInfo;->setBooleanProperty(IZ)V

    return-void
.end method

.method public greylist-max-o setId(I)V
    .locals 0

    iput p1, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mId:I

    return-void
.end method

.method public greylist-max-o setLayer(I)V
    .locals 0

    iput p1, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mLayer:I

    return-void
.end method

.method public blacklist setLocales(Landroid/os/LocaleList;)V
    .locals 0

    iput-object p1, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mLocales:Landroid/os/LocaleList;

    return-void
.end method

.method public greylist-max-o setParentId(I)V
    .locals 0

    iput p1, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mParentId:I

    return-void
.end method

.method public greylist-max-o setPictureInPicture(Z)V
    .locals 1

    const/16 v0, 0x8

    invoke-direct {p0, v0, p1}, Landroid/view/accessibility/AccessibilityWindowInfo;->setBooleanProperty(IZ)V

    return-void
.end method

.method public blacklist setRegionInScreen(Landroid/graphics/Region;)V
    .locals 0

    iget-object p0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mRegionInScreen:Landroid/graphics/Region;

    invoke-virtual {p0, p1}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    return-void
.end method

.method public blacklist setTaskId(I)V
    .locals 0

    iput p1, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mTaskId:I

    return-void
.end method

.method public greylist-max-o setTitle(Ljava/lang/CharSequence;)V
    .locals 0

    iput-object p1, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mTitle:Ljava/lang/CharSequence;

    return-void
.end method

.method public blacklist setTransitionTimeMillis(J)V
    .locals 0

    iput-wide p1, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mTransitionTime:J

    return-void
.end method

.method public greylist-max-o setType(I)V
    .locals 0

    iput p1, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mType:I

    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 7

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AccessibilityWindowInfo[title="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const-string v1, ", displayId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mDisplayId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", taskId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mTaskId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mType:I

    invoke-static {v1}, Landroid/view/accessibility/AccessibilityWindowInfo;->typeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", layer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mLayer:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", region="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mRegionInScreen:Landroid/graphics/Region;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", bounds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mRegionInScreen:Landroid/graphics/Region;

    invoke-virtual {v1}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", focused="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityWindowInfo;->isFocused()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", active="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityWindowInfo;->isActive()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", pictureInPicture="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityWindowInfo;->isInPictureInPictureMode()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", transitionTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mTransitionTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", hasParent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mParentId:I

    const/4 v2, -0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eq v1, v2, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v4

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isAnchored="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mAnchorId:J

    sget-wide v5, Landroid/view/accessibility/AccessibilityNodeInfo;->UNDEFINED_NODE_ID:J

    cmp-long v1, v1, v5

    if-eqz v1, :cond_1

    move v1, v3

    goto :goto_1

    :cond_1
    move v1, v4

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", hasChildren="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mChildIds:Landroid/util/LongArray;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Landroid/util/LongArray;->size()I

    move-result p0

    if-lez p0, :cond_2

    goto :goto_2

    :cond_2
    move v3, v4

    :goto_2
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 p0, 0x5d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 5

    iget v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mDisplayId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mLayer:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mBooleanProperties:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mParentId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mTaskId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mRegionInScreen:Landroid/graphics/Region;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Region;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    iget-wide v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mAnchorId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mTransitionTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mChildIds:Landroid/util/LongArray;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Landroid/util/LongArray;->size()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    if-ge v1, v2, :cond_1

    invoke-virtual {v0, v1}, Landroid/util/LongArray;->get(I)J

    move-result-wide v3

    long-to-int v3, v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    iget v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mConnectionId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mLocales:Landroid/os/LocaleList;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget p0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mRawType:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
