.class public final Landroid/view/contentcapture/ContentCaptureContext;
.super Ljava/lang/Object;
.source "ContentCaptureContext.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/contentcapture/ContentCaptureContext$Builder;,
        Landroid/view/contentcapture/ContentCaptureContext$ContextCreationFlags;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/view/contentcapture/ContentCaptureContext;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist FLAG_DISABLED_BY_APP:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist FLAG_DISABLED_BY_FLAG_SECURE:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist FLAG_DISABLED_FLUSH_FOR_VIEW_TREE_APPEARING:I = 0x8

.field public static final whitelist FLAG_RECONNECTED:I = 0x4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field


# instance fields
.field private final blacklist mActivityId:Landroid/app/assist/ActivityId;

.field private final blacklist mComponentName:Landroid/content/ComponentName;

.field private final blacklist mDisplayId:I

.field private final blacklist mExtras:Landroid/os/Bundle;

.field private final blacklist mFlags:I

.field private final blacklist mHasClientContext:Z

.field private final blacklist mId:Landroid/content/LocusId;

.field private blacklist mParentSessionId:I

.field private final blacklist mWindowToken:Landroid/os/IBinder;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/view/contentcapture/ContentCaptureContext$1;

    invoke-direct {v0}, Landroid/view/contentcapture/ContentCaptureContext$1;-><init>()V

    sput-object v0, Landroid/view/contentcapture/ContentCaptureContext;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/view/contentcapture/ContentCaptureContext$Builder;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/view/contentcapture/ContentCaptureContext;->mParentSessionId:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/view/contentcapture/ContentCaptureContext;->mHasClientContext:Z

    invoke-static {p1}, Landroid/view/contentcapture/ContentCaptureContext$Builder;->-$$Nest$fgetmExtras(Landroid/view/contentcapture/ContentCaptureContext$Builder;)Landroid/os/Bundle;

    move-result-object v1

    iput-object v1, p0, Landroid/view/contentcapture/ContentCaptureContext;->mExtras:Landroid/os/Bundle;

    invoke-static {p1}, Landroid/view/contentcapture/ContentCaptureContext$Builder;->-$$Nest$fgetmId(Landroid/view/contentcapture/ContentCaptureContext$Builder;)Landroid/content/LocusId;

    move-result-object p1

    iput-object p1, p0, Landroid/view/contentcapture/ContentCaptureContext;->mId:Landroid/content/LocusId;

    const/4 p1, 0x0

    iput-object p1, p0, Landroid/view/contentcapture/ContentCaptureContext;->mComponentName:Landroid/content/ComponentName;

    iput v0, p0, Landroid/view/contentcapture/ContentCaptureContext;->mFlags:I

    const/4 v0, -0x1

    iput v0, p0, Landroid/view/contentcapture/ContentCaptureContext;->mDisplayId:I

    iput-object p1, p0, Landroid/view/contentcapture/ContentCaptureContext;->mActivityId:Landroid/app/assist/ActivityId;

    iput-object p1, p0, Landroid/view/contentcapture/ContentCaptureContext;->mWindowToken:Landroid/os/IBinder;

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/view/contentcapture/ContentCaptureContext$Builder;Landroid/view/contentcapture/ContentCaptureContext-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/contentcapture/ContentCaptureContext;-><init>(Landroid/view/contentcapture/ContentCaptureContext$Builder;)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/view/contentcapture/ContentCaptureContext;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/view/contentcapture/ContentCaptureContext;->mParentSessionId:I

    iget-boolean v0, p1, Landroid/view/contentcapture/ContentCaptureContext;->mHasClientContext:Z

    iput-boolean v0, p0, Landroid/view/contentcapture/ContentCaptureContext;->mHasClientContext:Z

    iget-object v0, p1, Landroid/view/contentcapture/ContentCaptureContext;->mExtras:Landroid/os/Bundle;

    iput-object v0, p0, Landroid/view/contentcapture/ContentCaptureContext;->mExtras:Landroid/os/Bundle;

    iget-object v0, p1, Landroid/view/contentcapture/ContentCaptureContext;->mId:Landroid/content/LocusId;

    iput-object v0, p0, Landroid/view/contentcapture/ContentCaptureContext;->mId:Landroid/content/LocusId;

    iget-object v0, p1, Landroid/view/contentcapture/ContentCaptureContext;->mComponentName:Landroid/content/ComponentName;

    iput-object v0, p0, Landroid/view/contentcapture/ContentCaptureContext;->mComponentName:Landroid/content/ComponentName;

    iget v0, p1, Landroid/view/contentcapture/ContentCaptureContext;->mFlags:I

    or-int/2addr p2, v0

    iput p2, p0, Landroid/view/contentcapture/ContentCaptureContext;->mFlags:I

    iget p2, p1, Landroid/view/contentcapture/ContentCaptureContext;->mDisplayId:I

    iput p2, p0, Landroid/view/contentcapture/ContentCaptureContext;->mDisplayId:I

    iget-object p2, p1, Landroid/view/contentcapture/ContentCaptureContext;->mActivityId:Landroid/app/assist/ActivityId;

    iput-object p2, p0, Landroid/view/contentcapture/ContentCaptureContext;->mActivityId:Landroid/app/assist/ActivityId;

    iget-object p1, p1, Landroid/view/contentcapture/ContentCaptureContext;->mWindowToken:Landroid/os/IBinder;

    iput-object p1, p0, Landroid/view/contentcapture/ContentCaptureContext;->mWindowToken:Landroid/os/IBinder;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/view/contentcapture/ContentCaptureContext;Landroid/app/assist/ActivityId;Landroid/content/ComponentName;ILandroid/os/IBinder;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/view/contentcapture/ContentCaptureContext;->mParentSessionId:I

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/contentcapture/ContentCaptureContext;->mHasClientContext:Z

    iget-object v0, p1, Landroid/view/contentcapture/ContentCaptureContext;->mExtras:Landroid/os/Bundle;

    iput-object v0, p0, Landroid/view/contentcapture/ContentCaptureContext;->mExtras:Landroid/os/Bundle;

    iget-object p1, p1, Landroid/view/contentcapture/ContentCaptureContext;->mId:Landroid/content/LocusId;

    iput-object p1, p0, Landroid/view/contentcapture/ContentCaptureContext;->mId:Landroid/content/LocusId;

    goto :goto_0

    :cond_0
    iput-boolean v0, p0, Landroid/view/contentcapture/ContentCaptureContext;->mHasClientContext:Z

    const/4 p1, 0x0

    iput-object p1, p0, Landroid/view/contentcapture/ContentCaptureContext;->mExtras:Landroid/os/Bundle;

    iput-object p1, p0, Landroid/view/contentcapture/ContentCaptureContext;->mId:Landroid/content/LocusId;

    :goto_0
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/ComponentName;

    iput-object p1, p0, Landroid/view/contentcapture/ContentCaptureContext;->mComponentName:Landroid/content/ComponentName;

    iput p6, p0, Landroid/view/contentcapture/ContentCaptureContext;->mFlags:I

    iput p4, p0, Landroid/view/contentcapture/ContentCaptureContext;->mDisplayId:I

    iput-object p2, p0, Landroid/view/contentcapture/ContentCaptureContext;->mActivityId:Landroid/app/assist/ActivityId;

    iput-object p5, p0, Landroid/view/contentcapture/ContentCaptureContext;->mWindowToken:Landroid/os/IBinder;

    return-void
.end method

.method public static whitelist forLocusId(Ljava/lang/String;)Landroid/view/contentcapture/ContentCaptureContext;
    .locals 2

    new-instance v0, Landroid/view/contentcapture/ContentCaptureContext$Builder;

    new-instance v1, Landroid/content/LocusId;

    invoke-direct {v1, p0}, Landroid/content/LocusId;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Landroid/view/contentcapture/ContentCaptureContext$Builder;-><init>(Landroid/content/LocusId;)V

    invoke-virtual {v0}, Landroid/view/contentcapture/ContentCaptureContext$Builder;->build()Landroid/view/contentcapture/ContentCaptureContext;

    move-result-object p0

    return-object p0
.end method

.method private blacklist fromServer()Z
    .locals 0

    iget-object p0, p0, Landroid/view/contentcapture/ContentCaptureContext;->mComponentName:Landroid/content/ComponentName;

    if-eqz p0, :cond_0

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

.method public blacklist dump(Ljava/io/PrintWriter;)V
    .locals 1

    iget-object v0, p0, Landroid/view/contentcapture/ContentCaptureContext;->mComponentName:Landroid/content/ComponentName;

    if-eqz v0, :cond_0

    const-string v0, "activity="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/view/contentcapture/ContentCaptureContext;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Landroid/view/contentcapture/ContentCaptureContext;->mId:Landroid/content/LocusId;

    if-eqz v0, :cond_1

    const-string v0, ", id="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/view/contentcapture/ContentCaptureContext;->mId:Landroid/content/LocusId;

    invoke-virtual {v0, p1}, Landroid/content/LocusId;->dump(Ljava/io/PrintWriter;)V

    :cond_1
    const-string v0, ", activityId="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/view/contentcapture/ContentCaptureContext;->mActivityId:Landroid/app/assist/ActivityId;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string v0, ", displayId="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/view/contentcapture/ContentCaptureContext;->mDisplayId:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, ", windowToken="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/view/contentcapture/ContentCaptureContext;->mWindowToken:Landroid/os/IBinder;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    iget v0, p0, Landroid/view/contentcapture/ContentCaptureContext;->mParentSessionId:I

    if-eqz v0, :cond_2

    const-string v0, ", parentId="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/view/contentcapture/ContentCaptureContext;->mParentSessionId:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    :cond_2
    iget v0, p0, Landroid/view/contentcapture/ContentCaptureContext;->mFlags:I

    if-lez v0, :cond_3

    const-string v0, ", flags="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/view/contentcapture/ContentCaptureContext;->mFlags:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    :cond_3
    iget-object p0, p0, Landroid/view/contentcapture/ContentCaptureContext;->mExtras:Landroid/os/Bundle;

    if-eqz p0, :cond_4

    const-string p0, ", hasExtras"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_4
    return-void
.end method

.method public whitelist getActivityComponent()Landroid/content/ComponentName;
    .locals 0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    iget-object p0, p0, Landroid/view/contentcapture/ContentCaptureContext;->mComponentName:Landroid/content/ComponentName;

    return-object p0
.end method

.method public whitelist getActivityId()Landroid/app/assist/ActivityId;
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    iget-boolean v0, p0, Landroid/view/contentcapture/ContentCaptureContext;->mHasClientContext:Z

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object p0, p0, Landroid/view/contentcapture/ContentCaptureContext;->mActivityId:Landroid/app/assist/ActivityId;

    return-object p0
.end method

.method public whitelist getDisplayId()I
    .locals 0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    iget p0, p0, Landroid/view/contentcapture/ContentCaptureContext;->mDisplayId:I

    return p0
.end method

.method public whitelist getExtras()Landroid/os/Bundle;
    .locals 0

    iget-object p0, p0, Landroid/view/contentcapture/ContentCaptureContext;->mExtras:Landroid/os/Bundle;

    return-object p0
.end method

.method public whitelist getFlags()I
    .locals 0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    iget p0, p0, Landroid/view/contentcapture/ContentCaptureContext;->mFlags:I

    return p0
.end method

.method public whitelist getLocusId()Landroid/content/LocusId;
    .locals 0

    iget-object p0, p0, Landroid/view/contentcapture/ContentCaptureContext;->mId:Landroid/content/LocusId;

    return-object p0
.end method

.method public whitelist getParentSessionId()Landroid/view/contentcapture/ContentCaptureSessionId;
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    iget v0, p0, Landroid/view/contentcapture/ContentCaptureContext;->mParentSessionId:I

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Landroid/view/contentcapture/ContentCaptureSessionId;

    iget p0, p0, Landroid/view/contentcapture/ContentCaptureContext;->mParentSessionId:I

    invoke-direct {v0, p0}, Landroid/view/contentcapture/ContentCaptureSessionId;-><init>(I)V

    return-object v0
.end method

.method public whitelist getTaskId()I
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    iget-boolean v0, p0, Landroid/view/contentcapture/ContentCaptureContext;->mHasClientContext:Z

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object p0, p0, Landroid/view/contentcapture/ContentCaptureContext;->mActivityId:Landroid/app/assist/ActivityId;

    invoke-virtual {p0}, Landroid/app/assist/ActivityId;->getTaskId()I

    move-result p0

    return p0
.end method

.method public whitelist getWindowToken()Landroid/os/IBinder;
    .locals 0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    iget-object p0, p0, Landroid/view/contentcapture/ContentCaptureContext;->mWindowToken:Landroid/os/IBinder;

    return-object p0
.end method

.method public blacklist setParentSessionId(I)V
    .locals 0

    iput p1, p0, Landroid/view/contentcapture/ContentCaptureContext;->mParentSessionId:I

    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Context["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Landroid/view/contentcapture/ContentCaptureContext;->fromServer()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "act="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/view/contentcapture/ContentCaptureContext;->mComponentName:Landroid/content/ComponentName;

    invoke-static {v1}, Landroid/content/ComponentName;->flattenToShortString(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", activityId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/view/contentcapture/ContentCaptureContext;->mActivityId:Landroid/app/assist/ActivityId;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", displayId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/view/contentcapture/ContentCaptureContext;->mDisplayId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", windowToken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/view/contentcapture/ContentCaptureContext;->mWindowToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", flags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/view/contentcapture/ContentCaptureContext;->mFlags:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const-string v1, "id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/view/contentcapture/ContentCaptureContext;->mId:Landroid/content/LocusId;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/view/contentcapture/ContentCaptureContext;->mExtras:Landroid/os/Bundle;

    if-eqz v1, :cond_1

    const-string v1, ", hasExtras"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    :goto_0
    iget v1, p0, Landroid/view/contentcapture/ContentCaptureContext;->mParentSessionId:I

    if-eqz v1, :cond_2

    const-string v1, ", parentId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Landroid/view/contentcapture/ContentCaptureContext;->mParentSessionId:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_2
    const/16 p0, 0x5d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-boolean v0, p0, Landroid/view/contentcapture/ContentCaptureContext;->mHasClientContext:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Landroid/view/contentcapture/ContentCaptureContext;->mHasClientContext:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/contentcapture/ContentCaptureContext;->mId:Landroid/content/LocusId;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Landroid/view/contentcapture/ContentCaptureContext;->mExtras:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    :cond_0
    iget-object v0, p0, Landroid/view/contentcapture/ContentCaptureContext;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    invoke-direct {p0}, Landroid/view/contentcapture/ContentCaptureContext;->fromServer()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Landroid/view/contentcapture/ContentCaptureContext;->mDisplayId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/view/contentcapture/ContentCaptureContext;->mWindowToken:Landroid/os/IBinder;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    iget v0, p0, Landroid/view/contentcapture/ContentCaptureContext;->mFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p0, p0, Landroid/view/contentcapture/ContentCaptureContext;->mActivityId:Landroid/app/assist/ActivityId;

    invoke-virtual {p0, p1, p2}, Landroid/app/assist/ActivityId;->writeToParcel(Landroid/os/Parcel;I)V

    :cond_1
    return-void
.end method
