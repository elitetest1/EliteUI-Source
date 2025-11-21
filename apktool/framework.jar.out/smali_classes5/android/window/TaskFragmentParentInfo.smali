.class public final Landroid/window/TaskFragmentParentInfo;
.super Ljava/lang/Object;
.source "TaskFragmentParentInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/window/TaskFragmentParentInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mConfiguration:Landroid/content/res/Configuration;

.field private final blacklist mDecorSurface:Landroid/view/SurfaceControl;

.field private final blacklist mDisplayId:I

.field private final blacklist mHasDirectActivity:Z

.field private final blacklist mTaskId:I

.field private final blacklist mVisible:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/window/TaskFragmentParentInfo$1;

    invoke-direct {v0}, Landroid/window/TaskFragmentParentInfo$1;-><init>()V

    sput-object v0, Landroid/window/TaskFragmentParentInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/res/Configuration;IIZZLandroid/view/SurfaceControl;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Landroid/window/TaskFragmentParentInfo;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v0, p1}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    iput p2, p0, Landroid/window/TaskFragmentParentInfo;->mDisplayId:I

    iput p3, p0, Landroid/window/TaskFragmentParentInfo;->mTaskId:I

    iput-boolean p4, p0, Landroid/window/TaskFragmentParentInfo;->mVisible:Z

    iput-boolean p5, p0, Landroid/window/TaskFragmentParentInfo;->mHasDirectActivity:Z

    iput-object p6, p0, Landroid/window/TaskFragmentParentInfo;->mDecorSurface:Landroid/view/SurfaceControl;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Landroid/window/TaskFragmentParentInfo;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v0, p1}, Landroid/content/res/Configuration;->readFromParcel(Landroid/os/Parcel;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/window/TaskFragmentParentInfo;->mDisplayId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/window/TaskFragmentParentInfo;->mTaskId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/window/TaskFragmentParentInfo;->mVisible:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/window/TaskFragmentParentInfo;->mHasDirectActivity:Z

    sget-object v0, Landroid/view/SurfaceControl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/SurfaceControl;

    iput-object p1, p0, Landroid/window/TaskFragmentParentInfo;->mDecorSurface:Landroid/view/SurfaceControl;

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/window/TaskFragmentParentInfo-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/window/TaskFragmentParentInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/window/TaskFragmentParentInfo;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Landroid/window/TaskFragmentParentInfo;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {p1}, Landroid/window/TaskFragmentParentInfo;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    iget v0, p1, Landroid/window/TaskFragmentParentInfo;->mDisplayId:I

    iput v0, p0, Landroid/window/TaskFragmentParentInfo;->mDisplayId:I

    iget v0, p1, Landroid/window/TaskFragmentParentInfo;->mTaskId:I

    iput v0, p0, Landroid/window/TaskFragmentParentInfo;->mTaskId:I

    iget-boolean v0, p1, Landroid/window/TaskFragmentParentInfo;->mVisible:Z

    iput-boolean v0, p0, Landroid/window/TaskFragmentParentInfo;->mVisible:Z

    iget-boolean v0, p1, Landroid/window/TaskFragmentParentInfo;->mHasDirectActivity:Z

    iput-boolean v0, p0, Landroid/window/TaskFragmentParentInfo;->mHasDirectActivity:Z

    iget-object p1, p1, Landroid/window/TaskFragmentParentInfo;->mDecorSurface:Landroid/view/SurfaceControl;

    iput-object p1, p0, Landroid/window/TaskFragmentParentInfo;->mDecorSurface:Landroid/view/SurfaceControl;

    return-void
.end method

.method private blacklist getWindowingMode()I
    .locals 0

    iget-object p0, p0, Landroid/window/TaskFragmentParentInfo;->mConfiguration:Landroid/content/res/Configuration;

    iget-object p0, p0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {p0}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result p0

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

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroid/window/TaskFragmentParentInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Landroid/window/TaskFragmentParentInfo;

    iget-object v1, p0, Landroid/window/TaskFragmentParentInfo;->mConfiguration:Landroid/content/res/Configuration;

    iget-object v3, p1, Landroid/window/TaskFragmentParentInfo;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v1, v3}, Landroid/content/res/Configuration;->equals(Landroid/content/res/Configuration;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, Landroid/window/TaskFragmentParentInfo;->mDisplayId:I

    iget v3, p1, Landroid/window/TaskFragmentParentInfo;->mDisplayId:I

    if-ne v1, v3, :cond_2

    iget v1, p0, Landroid/window/TaskFragmentParentInfo;->mTaskId:I

    iget v3, p1, Landroid/window/TaskFragmentParentInfo;->mTaskId:I

    if-ne v1, v3, :cond_2

    iget-boolean v1, p0, Landroid/window/TaskFragmentParentInfo;->mVisible:Z

    iget-boolean v3, p1, Landroid/window/TaskFragmentParentInfo;->mVisible:Z

    if-ne v1, v3, :cond_2

    iget-boolean v1, p0, Landroid/window/TaskFragmentParentInfo;->mHasDirectActivity:Z

    iget-boolean v3, p1, Landroid/window/TaskFragmentParentInfo;->mHasDirectActivity:Z

    if-ne v1, v3, :cond_2

    iget-object p0, p0, Landroid/window/TaskFragmentParentInfo;->mDecorSurface:Landroid/view/SurfaceControl;

    iget-object p1, p1, Landroid/window/TaskFragmentParentInfo;->mDecorSurface:Landroid/view/SurfaceControl;

    if-ne p0, p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public blacklist equalsForTaskFragmentOrganizer(Landroid/window/TaskFragmentParentInfo;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-direct {p0}, Landroid/window/TaskFragmentParentInfo;->getWindowingMode()I

    move-result v1

    invoke-direct {p1}, Landroid/window/TaskFragmentParentInfo;->getWindowingMode()I

    move-result v2

    if-ne v1, v2, :cond_1

    iget v1, p0, Landroid/window/TaskFragmentParentInfo;->mDisplayId:I

    iget v2, p1, Landroid/window/TaskFragmentParentInfo;->mDisplayId:I

    if-ne v1, v2, :cond_1

    iget v1, p0, Landroid/window/TaskFragmentParentInfo;->mTaskId:I

    iget v2, p1, Landroid/window/TaskFragmentParentInfo;->mTaskId:I

    if-ne v1, v2, :cond_1

    iget-boolean v1, p0, Landroid/window/TaskFragmentParentInfo;->mVisible:Z

    iget-boolean v2, p1, Landroid/window/TaskFragmentParentInfo;->mVisible:Z

    if-ne v1, v2, :cond_1

    iget-boolean v1, p0, Landroid/window/TaskFragmentParentInfo;->mHasDirectActivity:Z

    iget-boolean v2, p1, Landroid/window/TaskFragmentParentInfo;->mHasDirectActivity:Z

    if-ne v1, v2, :cond_1

    iget-object p0, p0, Landroid/window/TaskFragmentParentInfo;->mDecorSurface:Landroid/view/SurfaceControl;

    iget-object p1, p1, Landroid/window/TaskFragmentParentInfo;->mDecorSurface:Landroid/view/SurfaceControl;

    if-ne p0, p1, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v0
.end method

.method public blacklist getConfiguration()Landroid/content/res/Configuration;
    .locals 0

    iget-object p0, p0, Landroid/window/TaskFragmentParentInfo;->mConfiguration:Landroid/content/res/Configuration;

    return-object p0
.end method

.method public blacklist getDecorSurface()Landroid/view/SurfaceControl;
    .locals 0

    iget-object p0, p0, Landroid/window/TaskFragmentParentInfo;->mDecorSurface:Landroid/view/SurfaceControl;

    return-object p0
.end method

.method public blacklist getDisplayId()I
    .locals 0

    iget p0, p0, Landroid/window/TaskFragmentParentInfo;->mDisplayId:I

    return p0
.end method

.method public blacklist getTaskId()I
    .locals 0

    iget p0, p0, Landroid/window/TaskFragmentParentInfo;->mTaskId:I

    return p0
.end method

.method public blacklist hasDirectActivity()Z
    .locals 0

    iget-boolean p0, p0, Landroid/window/TaskFragmentParentInfo;->mHasDirectActivity:Z

    return p0
.end method

.method public whitelist test-api hashCode()I
    .locals 2

    iget-object v0, p0, Landroid/window/TaskFragmentParentInfo;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v0}, Landroid/content/res/Configuration;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroid/window/TaskFragmentParentInfo;->mDisplayId:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroid/window/TaskFragmentParentInfo;->mTaskId:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Landroid/window/TaskFragmentParentInfo;->mVisible:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Landroid/window/TaskFragmentParentInfo;->mHasDirectActivity:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Landroid/window/TaskFragmentParentInfo;->mDecorSurface:Landroid/view/SurfaceControl;

    invoke-static {p0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public blacklist isVisible()Z
    .locals 0

    iget-boolean p0, p0, Landroid/window/TaskFragmentParentInfo;->mVisible:Z

    return p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "TaskFragmentParentInfo:{config="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/window/TaskFragmentParentInfo;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", displayId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/window/TaskFragmentParentInfo;->mDisplayId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", taskId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/window/TaskFragmentParentInfo;->mTaskId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", visible="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroid/window/TaskFragmentParentInfo;->mVisible:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", hasDirectActivity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroid/window/TaskFragmentParentInfo;->mHasDirectActivity:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", decorSurface="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroid/window/TaskFragmentParentInfo;->mDecorSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Landroid/window/TaskFragmentParentInfo;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v0, p1, p2}, Landroid/content/res/Configuration;->writeToParcel(Landroid/os/Parcel;I)V

    iget v0, p0, Landroid/window/TaskFragmentParentInfo;->mDisplayId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/window/TaskFragmentParentInfo;->mTaskId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Landroid/window/TaskFragmentParentInfo;->mVisible:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-boolean v0, p0, Landroid/window/TaskFragmentParentInfo;->mHasDirectActivity:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-object p0, p0, Landroid/window/TaskFragmentParentInfo;->mDecorSurface:Landroid/view/SurfaceControl;

    invoke-virtual {p1, p0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    return-void
.end method
