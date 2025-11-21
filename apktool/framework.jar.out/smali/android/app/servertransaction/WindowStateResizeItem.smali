.class public Landroid/app/servertransaction/WindowStateResizeItem;
.super Landroid/app/servertransaction/WindowStateTransactionItem;
.source "WindowStateResizeItem.java"


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/servertransaction/WindowStateResizeItem;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist TAG:Ljava/lang/String; = "WindowStateResizeItem"


# instance fields
.field private final blacklist mActivityWindowInfo:Landroid/window/ActivityWindowInfo;

.field private final blacklist mAlwaysConsumeSystemBars:Z

.field private final blacklist mConfiguration:Landroid/util/MergedConfiguration;

.field private final blacklist mDisplayId:I

.field private final blacklist mDragResizing:Z

.field private final blacklist mForceLayout:Z

.field private final blacklist mFrames:Landroid/window/ClientWindowFrames;

.field private final blacklist mInsetsState:Landroid/view/InsetsState;

.field private final blacklist mReportDraw:Z

.field private final blacklist mSyncSeqId:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/app/servertransaction/WindowStateResizeItem$1;

    invoke-direct {v0}, Landroid/app/servertransaction/WindowStateResizeItem$1;-><init>()V

    sput-object v0, Landroid/app/servertransaction/WindowStateResizeItem;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/app/servertransaction/WindowStateTransactionItem;-><init>(Landroid/os/Parcel;)V

    sget-object v0, Landroid/window/ClientWindowFrames;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/window/ClientWindowFrames;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/window/ClientWindowFrames;

    iput-object v0, p0, Landroid/app/servertransaction/WindowStateResizeItem;->mFrames:Landroid/window/ClientWindowFrames;

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/servertransaction/WindowStateResizeItem;->mReportDraw:Z

    sget-object v0, Landroid/util/MergedConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/MergedConfiguration;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/MergedConfiguration;

    iput-object v0, p0, Landroid/app/servertransaction/WindowStateResizeItem;->mConfiguration:Landroid/util/MergedConfiguration;

    sget-object v0, Landroid/view/InsetsState;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/InsetsState;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/InsetsState;

    iput-object v0, p0, Landroid/app/servertransaction/WindowStateResizeItem;->mInsetsState:Landroid/view/InsetsState;

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/servertransaction/WindowStateResizeItem;->mForceLayout:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/servertransaction/WindowStateResizeItem;->mAlwaysConsumeSystemBars:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/servertransaction/WindowStateResizeItem;->mDisplayId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/servertransaction/WindowStateResizeItem;->mSyncSeqId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/servertransaction/WindowStateResizeItem;->mDragResizing:Z

    sget-object v0, Landroid/window/ActivityWindowInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/window/ActivityWindowInfo;

    iput-object p1, p0, Landroid/app/servertransaction/WindowStateResizeItem;->mActivityWindowInfo:Landroid/window/ActivityWindowInfo;

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/app/servertransaction/WindowStateResizeItem-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/app/servertransaction/WindowStateResizeItem;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/view/IWindow;Landroid/window/ClientWindowFrames;ZLandroid/util/MergedConfiguration;Landroid/view/InsetsState;ZZIIZLandroid/window/ActivityWindowInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/app/servertransaction/WindowStateTransactionItem;-><init>(Landroid/view/IWindow;)V

    new-instance p1, Landroid/window/ClientWindowFrames;

    invoke-direct {p1, p2}, Landroid/window/ClientWindowFrames;-><init>(Landroid/window/ClientWindowFrames;)V

    iput-object p1, p0, Landroid/app/servertransaction/WindowStateResizeItem;->mFrames:Landroid/window/ClientWindowFrames;

    new-instance p1, Landroid/util/MergedConfiguration;

    invoke-direct {p1, p4}, Landroid/util/MergedConfiguration;-><init>(Landroid/util/MergedConfiguration;)V

    iput-object p1, p0, Landroid/app/servertransaction/WindowStateResizeItem;->mConfiguration:Landroid/util/MergedConfiguration;

    new-instance p1, Landroid/view/InsetsState;

    const/4 p2, 0x1

    invoke-direct {p1, p5, p2}, Landroid/view/InsetsState;-><init>(Landroid/view/InsetsState;Z)V

    iput-object p1, p0, Landroid/app/servertransaction/WindowStateResizeItem;->mInsetsState:Landroid/view/InsetsState;

    if-eqz p11, :cond_0

    new-instance p1, Landroid/window/ActivityWindowInfo;

    invoke-direct {p1, p11}, Landroid/window/ActivityWindowInfo;-><init>(Landroid/window/ActivityWindowInfo;)V

    iput-object p1, p0, Landroid/app/servertransaction/WindowStateResizeItem;->mActivityWindowInfo:Landroid/window/ActivityWindowInfo;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, Landroid/app/servertransaction/WindowStateResizeItem;->mActivityWindowInfo:Landroid/window/ActivityWindowInfo;

    :goto_0
    iput-boolean p3, p0, Landroid/app/servertransaction/WindowStateResizeItem;->mReportDraw:Z

    iput-boolean p6, p0, Landroid/app/servertransaction/WindowStateResizeItem;->mForceLayout:Z

    iput-boolean p7, p0, Landroid/app/servertransaction/WindowStateResizeItem;->mAlwaysConsumeSystemBars:Z

    iput p8, p0, Landroid/app/servertransaction/WindowStateResizeItem;->mDisplayId:I

    iput p9, p0, Landroid/app/servertransaction/WindowStateResizeItem;->mSyncSeqId:I

    iput-boolean p10, p0, Landroid/app/servertransaction/WindowStateResizeItem;->mDragResizing:Z

    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/app/servertransaction/WindowStateTransactionItem;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Landroid/app/servertransaction/WindowStateResizeItem;

    iget-object v1, p0, Landroid/app/servertransaction/WindowStateResizeItem;->mFrames:Landroid/window/ClientWindowFrames;

    iget-object v3, p1, Landroid/app/servertransaction/WindowStateResizeItem;->mFrames:Landroid/window/ClientWindowFrames;

    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Landroid/app/servertransaction/WindowStateResizeItem;->mReportDraw:Z

    iget-boolean v3, p1, Landroid/app/servertransaction/WindowStateResizeItem;->mReportDraw:Z

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Landroid/app/servertransaction/WindowStateResizeItem;->mConfiguration:Landroid/util/MergedConfiguration;

    iget-object v3, p1, Landroid/app/servertransaction/WindowStateResizeItem;->mConfiguration:Landroid/util/MergedConfiguration;

    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/app/servertransaction/WindowStateResizeItem;->mInsetsState:Landroid/view/InsetsState;

    iget-object v3, p1, Landroid/app/servertransaction/WindowStateResizeItem;->mInsetsState:Landroid/view/InsetsState;

    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Landroid/app/servertransaction/WindowStateResizeItem;->mForceLayout:Z

    iget-boolean v3, p1, Landroid/app/servertransaction/WindowStateResizeItem;->mForceLayout:Z

    if-ne v1, v3, :cond_2

    iget-boolean v1, p0, Landroid/app/servertransaction/WindowStateResizeItem;->mAlwaysConsumeSystemBars:Z

    iget-boolean v3, p1, Landroid/app/servertransaction/WindowStateResizeItem;->mAlwaysConsumeSystemBars:Z

    if-ne v1, v3, :cond_2

    iget v1, p0, Landroid/app/servertransaction/WindowStateResizeItem;->mDisplayId:I

    iget v3, p1, Landroid/app/servertransaction/WindowStateResizeItem;->mDisplayId:I

    if-ne v1, v3, :cond_2

    iget v1, p0, Landroid/app/servertransaction/WindowStateResizeItem;->mSyncSeqId:I

    iget v3, p1, Landroid/app/servertransaction/WindowStateResizeItem;->mSyncSeqId:I

    if-ne v1, v3, :cond_2

    iget-boolean v1, p0, Landroid/app/servertransaction/WindowStateResizeItem;->mDragResizing:Z

    iget-boolean v3, p1, Landroid/app/servertransaction/WindowStateResizeItem;->mDragResizing:Z

    if-ne v1, v3, :cond_2

    iget-object p0, p0, Landroid/app/servertransaction/WindowStateResizeItem;->mActivityWindowInfo:Landroid/window/ActivityWindowInfo;

    iget-object p1, p1, Landroid/app/servertransaction/WindowStateResizeItem;->mActivityWindowInfo:Landroid/window/ActivityWindowInfo;

    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public blacklist execute(Landroid/app/ClientTransactionHandler;Landroid/view/IWindow;Landroid/app/servertransaction/PendingTransactionActions;)V
    .locals 14

    iget-boolean v0, p0, Landroid/app/servertransaction/WindowStateResizeItem;->mReportDraw:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "windowResizedReport"

    goto :goto_0

    :cond_0
    const-string/jumbo v0, "windowResized"

    :goto_0
    const-wide/16 v1, 0x20

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :try_start_0
    iget-object v4, p0, Landroid/app/servertransaction/WindowStateResizeItem;->mFrames:Landroid/window/ClientWindowFrames;

    iget-boolean v5, p0, Landroid/app/servertransaction/WindowStateResizeItem;->mReportDraw:Z

    iget-object v6, p0, Landroid/app/servertransaction/WindowStateResizeItem;->mConfiguration:Landroid/util/MergedConfiguration;

    iget-object v7, p0, Landroid/app/servertransaction/WindowStateResizeItem;->mInsetsState:Landroid/view/InsetsState;

    iget-boolean v8, p0, Landroid/app/servertransaction/WindowStateResizeItem;->mForceLayout:Z

    iget-boolean v9, p0, Landroid/app/servertransaction/WindowStateResizeItem;->mAlwaysConsumeSystemBars:Z

    iget v10, p0, Landroid/app/servertransaction/WindowStateResizeItem;->mDisplayId:I

    iget v11, p0, Landroid/app/servertransaction/WindowStateResizeItem;->mSyncSeqId:I

    iget-boolean v12, p0, Landroid/app/servertransaction/WindowStateResizeItem;->mDragResizing:Z

    iget-object v13, p0, Landroid/app/servertransaction/WindowStateResizeItem;->mActivityWindowInfo:Landroid/window/ActivityWindowInfo;

    move-object/from16 v3, p2

    invoke-interface/range {v3 .. v13}, Landroid/view/IWindow;->resized(Landroid/window/ClientWindowFrames;ZLandroid/util/MergedConfiguration;Landroid/view/InsetsState;ZZIIZLandroid/window/ActivityWindowInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    move-object p0, v0

    const-string v0, "WindowStateResizeItem"

    const-string v3, "The original window no longer exists in the new process"

    invoke-static {v0, v3, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-void
.end method

.method public whitelist test-api hashCode()I
    .locals 2

    const/16 v0, 0x20f

    invoke-super {p0}, Landroid/app/servertransaction/WindowStateTransactionItem;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroid/app/servertransaction/WindowStateResizeItem;->mFrames:Landroid/window/ClientWindowFrames;

    invoke-static {v1}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Landroid/app/servertransaction/WindowStateResizeItem;->mReportDraw:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroid/app/servertransaction/WindowStateResizeItem;->mConfiguration:Landroid/util/MergedConfiguration;

    invoke-static {v1}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroid/app/servertransaction/WindowStateResizeItem;->mInsetsState:Landroid/view/InsetsState;

    invoke-static {v1}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Landroid/app/servertransaction/WindowStateResizeItem;->mForceLayout:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Landroid/app/servertransaction/WindowStateResizeItem;->mAlwaysConsumeSystemBars:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroid/app/servertransaction/WindowStateResizeItem;->mDisplayId:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroid/app/servertransaction/WindowStateResizeItem;->mSyncSeqId:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Landroid/app/servertransaction/WindowStateResizeItem;->mDragResizing:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Landroid/app/servertransaction/WindowStateResizeItem;->mActivityWindowInfo:Landroid/window/ActivityWindowInfo;

    invoke-static {p0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "WindowStateResizeItem{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-super {p0}, Landroid/app/servertransaction/WindowStateTransactionItem;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", reportDrawn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroid/app/servertransaction/WindowStateResizeItem;->mReportDraw:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", configuration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/app/servertransaction/WindowStateResizeItem;->mConfiguration:Landroid/util/MergedConfiguration;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", activityWindowInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroid/app/servertransaction/WindowStateResizeItem;->mActivityWindowInfo:Landroid/window/ActivityWindowInfo;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/app/servertransaction/WindowStateTransactionItem;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object v0, p0, Landroid/app/servertransaction/WindowStateResizeItem;->mFrames:Landroid/window/ClientWindowFrames;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    iget-boolean v0, p0, Landroid/app/servertransaction/WindowStateResizeItem;->mReportDraw:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-object v0, p0, Landroid/app/servertransaction/WindowStateResizeItem;->mConfiguration:Landroid/util/MergedConfiguration;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Landroid/app/servertransaction/WindowStateResizeItem;->mInsetsState:Landroid/view/InsetsState;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    iget-boolean v0, p0, Landroid/app/servertransaction/WindowStateResizeItem;->mForceLayout:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-boolean v0, p0, Landroid/app/servertransaction/WindowStateResizeItem;->mAlwaysConsumeSystemBars:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget v0, p0, Landroid/app/servertransaction/WindowStateResizeItem;->mDisplayId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/app/servertransaction/WindowStateResizeItem;->mSyncSeqId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Landroid/app/servertransaction/WindowStateResizeItem;->mDragResizing:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-object p0, p0, Landroid/app/servertransaction/WindowStateResizeItem;->mActivityWindowInfo:Landroid/window/ActivityWindowInfo;

    invoke-virtual {p1, p0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    return-void
.end method
