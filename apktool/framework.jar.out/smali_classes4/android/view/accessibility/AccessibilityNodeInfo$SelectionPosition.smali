.class public final Landroid/view/accessibility/AccessibilityNodeInfo$SelectionPosition;
.super Ljava/lang/Object;
.source "AccessibilityNodeInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/accessibility/AccessibilityNodeInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SelectionPosition"
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/view/accessibility/AccessibilityNodeInfo$SelectionPosition;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mConnectionId:I

.field private final blacklist mOffset:I

.field private final blacklist mSourceNodeId:J

.field private blacklist mWindowId:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmSourceNodeId(Landroid/view/accessibility/AccessibilityNodeInfo$SelectionPosition;)J
    .locals 2

    iget-wide v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo$SelectionPosition;->mSourceNodeId:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$msetConnectionId(Landroid/view/accessibility/AccessibilityNodeInfo$SelectionPosition;I)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo$SelectionPosition;->setConnectionId(I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msetWindowId(Landroid/view/accessibility/AccessibilityNodeInfo$SelectionPosition;I)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo$SelectionPosition;->setWindowId(I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$musesNode(Landroid/view/accessibility/AccessibilityNodeInfo$SelectionPosition;Landroid/view/accessibility/AccessibilityNodeInfo;)Z
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo$SelectionPosition;->usesNode(Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    move-result p0

    return p0
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/view/accessibility/AccessibilityNodeInfo$SelectionPosition$1;

    invoke-direct {v0}, Landroid/view/accessibility/AccessibilityNodeInfo$SelectionPosition$1;-><init>()V

    sput-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$SelectionPosition;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(JI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p3, p0, Landroid/view/accessibility/AccessibilityNodeInfo$SelectionPosition;->mOffset:I

    iput-wide p1, p0, Landroid/view/accessibility/AccessibilityNodeInfo$SelectionPosition;->mSourceNodeId:J

    return-void
.end method

.method synthetic constructor blacklist <init>(JILandroid/view/accessibility/AccessibilityNodeInfo-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/view/accessibility/AccessibilityNodeInfo$SelectionPosition;-><init>(JI)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo$SelectionPosition;->mOffset:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo$SelectionPosition;->mSourceNodeId:J

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/view/accessibility/AccessibilityNodeInfo-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo$SelectionPosition;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/view/View;I)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getAccessibilityViewId()I

    move-result p1

    const/4 v0, -0x1

    invoke-static {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->makeNodeId(II)J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p2}, Landroid/view/accessibility/AccessibilityNodeInfo$SelectionPosition;-><init>(JI)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/view/View;II)V
    .locals 0

    invoke-virtual {p1}, Landroid/view/View;->getAccessibilityViewId()I

    move-result p1

    invoke-static {p1, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->makeNodeId(II)J

    move-result-wide p1

    invoke-direct {p0, p1, p2, p3}, Landroid/view/accessibility/AccessibilityNodeInfo$SelectionPosition;-><init>(JI)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/view/accessibility/AccessibilityNodeInfo;I)V
    .locals 2

    invoke-static {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->-$$Nest$fgetmSourceNodeId(Landroid/view/accessibility/AccessibilityNodeInfo;)J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p2}, Landroid/view/accessibility/AccessibilityNodeInfo$SelectionPosition;-><init>(JI)V

    return-void
.end method

.method private blacklist setConnectionId(I)V
    .locals 0

    iput p1, p0, Landroid/view/accessibility/AccessibilityNodeInfo$SelectionPosition;->mConnectionId:I

    return-void
.end method

.method private blacklist setWindowId(I)V
    .locals 0

    iput p1, p0, Landroid/view/accessibility/AccessibilityNodeInfo$SelectionPosition;->mWindowId:I

    return-void
.end method

.method private blacklist usesNode(Landroid/view/accessibility/AccessibilityNodeInfo;)Z
    .locals 4

    iget-wide v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo$SelectionPosition;->mSourceNodeId:J

    invoke-static {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->-$$Nest$fgetmSourceNodeId(Landroid/view/accessibility/AccessibilityNodeInfo;)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo$SelectionPosition;->mConnectionId:I

    invoke-static {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->-$$Nest$fgetmConnectionId(Landroid/view/accessibility/AccessibilityNodeInfo;)I

    move-result v1

    if-ne v0, v1, :cond_0

    iget p0, p0, Landroid/view/accessibility/AccessibilityNodeInfo$SelectionPosition;->mWindowId:I

    invoke-static {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->-$$Nest$fgetmWindowId(Landroid/view/accessibility/AccessibilityNodeInfo;)I

    move-result p1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x1

    if-ne p1, p0, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    return v0

    :cond_2
    check-cast p1, Landroid/view/accessibility/AccessibilityNodeInfo$SelectionPosition;

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo$SelectionPosition;->getOffset()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo$SelectionPosition;->getOffset()I

    move-result v3

    if-eq v2, v3, :cond_3

    return v0

    :cond_3
    iget-wide v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo$SelectionPosition;->mSourceNodeId:J

    iget-wide p0, p1, Landroid/view/accessibility/AccessibilityNodeInfo$SelectionPosition;->mSourceNodeId:J

    cmp-long p0, v2, p0

    if-nez p0, :cond_4

    return v1

    :cond_4
    return v0
.end method

.method public blacklist getNode()Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 4

    iget v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo$SelectionPosition;->mConnectionId:I

    iget v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo$SelectionPosition;->mWindowId:I

    iget-wide v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo$SelectionPosition;->mSourceNodeId:J

    invoke-static {v0, v1, v2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->-$$Nest$smgetNodeForAccessibilityId(IIJ)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getOffset()I
    .locals 0

    iget p0, p0, Landroid/view/accessibility/AccessibilityNodeInfo$SelectionPosition;->mOffset:I

    return p0
.end method

.method public whitelist test-api hashCode()I
    .locals 6

    iget v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo$SelectionPosition;->mOffset:I

    if-eqz v0, :cond_0

    int-to-long v0, v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x1

    :goto_0
    iget-wide v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo$SelectionPosition;->mSourceNodeId:J

    sget-wide v4, Landroid/view/accessibility/AccessibilityNodeInfo;->UNDEFINED_NODE_ID:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    iget-wide v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo$SelectionPosition;->mSourceNodeId:J

    mul-long/2addr v0, v2

    :cond_1
    const-wide/16 v2, 0x36d

    mul-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->hashCode(J)I

    move-result p0

    return p0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget p2, p0, Landroid/view/accessibility/AccessibilityNodeInfo$SelectionPosition;->mOffset:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo$SelectionPosition;->mSourceNodeId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method
