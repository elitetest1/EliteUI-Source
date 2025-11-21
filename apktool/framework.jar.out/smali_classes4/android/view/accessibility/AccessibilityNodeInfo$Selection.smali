.class public final Landroid/view/accessibility/AccessibilityNodeInfo$Selection;
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
    name = "Selection"
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/view/accessibility/AccessibilityNodeInfo$Selection;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mEnd:Landroid/view/accessibility/AccessibilityNodeInfo$SelectionPosition;

.field private final blacklist mStart:Landroid/view/accessibility/AccessibilityNodeInfo$SelectionPosition;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/view/accessibility/AccessibilityNodeInfo$Selection$1;

    invoke-direct {v0}, Landroid/view/accessibility/AccessibilityNodeInfo$Selection$1;-><init>()V

    sput-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$Selection;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$SelectionPosition;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityNodeInfo$SelectionPosition;

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo$Selection;->mStart:Landroid/view/accessibility/AccessibilityNodeInfo$SelectionPosition;

    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$SelectionPosition;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/accessibility/AccessibilityNodeInfo$SelectionPosition;

    iput-object p1, p0, Landroid/view/accessibility/AccessibilityNodeInfo$Selection;->mEnd:Landroid/view/accessibility/AccessibilityNodeInfo$SelectionPosition;

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/view/accessibility/AccessibilityNodeInfo-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo$Selection;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/view/accessibility/AccessibilityNodeInfo$SelectionPosition;Landroid/view/accessibility/AccessibilityNodeInfo$SelectionPosition;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/view/accessibility/AccessibilityNodeInfo$Selection;->mStart:Landroid/view/accessibility/AccessibilityNodeInfo$SelectionPosition;

    iput-object p2, p0, Landroid/view/accessibility/AccessibilityNodeInfo$Selection;->mEnd:Landroid/view/accessibility/AccessibilityNodeInfo$SelectionPosition;

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
    check-cast p1, Landroid/view/accessibility/AccessibilityNodeInfo$Selection;

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo$Selection;->getStart()Landroid/view/accessibility/AccessibilityNodeInfo$SelectionPosition;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo$Selection;->getStart()Landroid/view/accessibility/AccessibilityNodeInfo$SelectionPosition;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo$SelectionPosition;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo$Selection;->getEnd()Landroid/view/accessibility/AccessibilityNodeInfo$SelectionPosition;

    move-result-object p0

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo$Selection;->getEnd()Landroid/view/accessibility/AccessibilityNodeInfo$SelectionPosition;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo$SelectionPosition;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    return v1

    :cond_3
    return v0
.end method

.method public blacklist getEnd()Landroid/view/accessibility/AccessibilityNodeInfo$SelectionPosition;
    .locals 0

    iget-object p0, p0, Landroid/view/accessibility/AccessibilityNodeInfo$Selection;->mEnd:Landroid/view/accessibility/AccessibilityNodeInfo$SelectionPosition;

    return-object p0
.end method

.method public blacklist getStart()Landroid/view/accessibility/AccessibilityNodeInfo$SelectionPosition;
    .locals 0

    iget-object p0, p0, Landroid/view/accessibility/AccessibilityNodeInfo$Selection;->mStart:Landroid/view/accessibility/AccessibilityNodeInfo$SelectionPosition;

    return-object p0
.end method

.method public whitelist test-api hashCode()I
    .locals 1

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo$Selection;->getStart()Landroid/view/accessibility/AccessibilityNodeInfo$SelectionPosition;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo$SelectionPosition;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x11

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo$Selection;->getEnd()Landroid/view/accessibility/AccessibilityNodeInfo$SelectionPosition;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo$SelectionPosition;->hashCode()I

    move-result p0

    mul-int/2addr v0, p0

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo$Selection;->mStart:Landroid/view/accessibility/AccessibilityNodeInfo$SelectionPosition;

    invoke-virtual {v0, p1, p2}, Landroid/view/accessibility/AccessibilityNodeInfo$SelectionPosition;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object p0, p0, Landroid/view/accessibility/AccessibilityNodeInfo$Selection;->mEnd:Landroid/view/accessibility/AccessibilityNodeInfo$SelectionPosition;

    invoke-virtual {p0, p1, p2}, Landroid/view/accessibility/AccessibilityNodeInfo$SelectionPosition;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
