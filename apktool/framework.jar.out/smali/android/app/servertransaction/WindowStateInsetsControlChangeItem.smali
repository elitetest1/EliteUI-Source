.class public Landroid/app/servertransaction/WindowStateInsetsControlChangeItem;
.super Landroid/app/servertransaction/WindowStateTransactionItem;
.source "WindowStateInsetsControlChangeItem.java"


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/servertransaction/WindowStateInsetsControlChangeItem;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist TAG:Ljava/lang/String; = "WindowStateInsetsControlChangeItem"


# instance fields
.field private final blacklist mActiveControls:Landroid/view/InsetsSourceControl$Array;

.field private final blacklist mInsetsState:Landroid/view/InsetsState;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/app/servertransaction/WindowStateInsetsControlChangeItem$1;

    invoke-direct {v0}, Landroid/app/servertransaction/WindowStateInsetsControlChangeItem$1;-><init>()V

    sput-object v0, Landroid/app/servertransaction/WindowStateInsetsControlChangeItem;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/app/servertransaction/WindowStateTransactionItem;-><init>(Landroid/os/Parcel;)V

    sget-object v0, Landroid/view/InsetsState;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/InsetsState;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/InsetsState;

    iput-object v0, p0, Landroid/app/servertransaction/WindowStateInsetsControlChangeItem;->mInsetsState:Landroid/view/InsetsState;

    sget-object v0, Landroid/view/InsetsSourceControl$Array;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/InsetsSourceControl$Array;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/InsetsSourceControl$Array;

    iput-object p1, p0, Landroid/app/servertransaction/WindowStateInsetsControlChangeItem;->mActiveControls:Landroid/view/InsetsSourceControl$Array;

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/app/servertransaction/WindowStateInsetsControlChangeItem-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/app/servertransaction/WindowStateInsetsControlChangeItem;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/view/IWindow;Landroid/view/InsetsState;Landroid/view/InsetsSourceControl$Array;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/app/servertransaction/WindowStateInsetsControlChangeItem;-><init>(Landroid/view/IWindow;Landroid/view/InsetsState;Landroid/view/InsetsSourceControl$Array;Z)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/view/IWindow;Landroid/view/InsetsState;Landroid/view/InsetsSourceControl$Array;Z)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/app/servertransaction/WindowStateTransactionItem;-><init>(Landroid/view/IWindow;)V

    new-instance p1, Landroid/view/InsetsState;

    const/4 v0, 0x1

    invoke-direct {p1, p2, v0}, Landroid/view/InsetsState;-><init>(Landroid/view/InsetsState;Z)V

    iput-object p1, p0, Landroid/app/servertransaction/WindowStateInsetsControlChangeItem;->mInsetsState:Landroid/view/InsetsState;

    if-eqz p4, :cond_0

    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/InsetsSourceControl$Array;

    invoke-static {p1}, Landroid/app/servertransaction/WindowStateInsetsControlChangeItem;->copy(Landroid/view/InsetsSourceControl$Array;)Landroid/view/InsetsSourceControl$Array;

    move-result-object p1

    iput-object p1, p0, Landroid/app/servertransaction/WindowStateInsetsControlChangeItem;->mActiveControls:Landroid/view/InsetsSourceControl$Array;

    return-void

    :cond_0
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/InsetsSourceControl$Array;

    iput-object p1, p0, Landroid/app/servertransaction/WindowStateInsetsControlChangeItem;->mActiveControls:Landroid/view/InsetsSourceControl$Array;

    return-void
.end method

.method private static blacklist copy(Landroid/view/InsetsSourceControl$Array;)Landroid/view/InsetsSourceControl$Array;
    .locals 2

    new-instance v0, Landroid/view/InsetsSourceControl$Array;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Landroid/view/InsetsSourceControl$Array;-><init>(Landroid/view/InsetsSourceControl$Array;Z)V

    invoke-virtual {v0, v1}, Landroid/view/InsetsSourceControl$Array;->setParcelableFlags(I)V

    return-object v0
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
    check-cast p1, Landroid/app/servertransaction/WindowStateInsetsControlChangeItem;

    iget-object v1, p0, Landroid/app/servertransaction/WindowStateInsetsControlChangeItem;->mInsetsState:Landroid/view/InsetsState;

    iget-object v3, p1, Landroid/app/servertransaction/WindowStateInsetsControlChangeItem;->mInsetsState:Landroid/view/InsetsState;

    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object p0, p0, Landroid/app/servertransaction/WindowStateInsetsControlChangeItem;->mActiveControls:Landroid/view/InsetsSourceControl$Array;

    iget-object p1, p1, Landroid/app/servertransaction/WindowStateInsetsControlChangeItem;->mActiveControls:Landroid/view/InsetsSourceControl$Array;

    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public blacklist execute(Landroid/app/ClientTransactionHandler;Landroid/view/IWindow;Landroid/app/servertransaction/PendingTransactionActions;)V
    .locals 2

    const-string/jumbo p1, "windowInsetsControlChanged"

    const-wide/16 v0, 0x20

    invoke-static {v0, v1, p1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :try_start_0
    iget-object p1, p0, Landroid/app/servertransaction/WindowStateInsetsControlChangeItem;->mInsetsState:Landroid/view/InsetsState;

    iget-object p3, p0, Landroid/app/servertransaction/WindowStateInsetsControlChangeItem;->mActiveControls:Landroid/view/InsetsSourceControl$Array;

    invoke-interface {p2, p1, p3}, Landroid/view/IWindow;->insetsControlChanged(Landroid/view/InsetsState;Landroid/view/InsetsSourceControl$Array;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "WindowStateInsetsControlChangeItem"

    const-string p3, "The original window no longer exists in the new process"

    invoke-static {p2, p3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object p0, p0, Landroid/app/servertransaction/WindowStateInsetsControlChangeItem;->mActiveControls:Landroid/view/InsetsSourceControl$Array;

    invoke-virtual {p0}, Landroid/view/InsetsSourceControl$Array;->release()V

    :goto_0
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-void
.end method

.method public whitelist test-api hashCode()I
    .locals 2

    const/16 v0, 0x20f

    invoke-super {p0}, Landroid/app/servertransaction/WindowStateTransactionItem;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroid/app/servertransaction/WindowStateInsetsControlChangeItem;->mInsetsState:Landroid/view/InsetsState;

    invoke-static {v1}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Landroid/app/servertransaction/WindowStateInsetsControlChangeItem;->mActiveControls:Landroid/view/InsetsSourceControl$Array;

    invoke-static {p0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "WindowStateInsetsControlChangeItem{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-super {p0}, Landroid/app/servertransaction/WindowStateTransactionItem;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/app/servertransaction/WindowStateTransactionItem;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object v0, p0, Landroid/app/servertransaction/WindowStateInsetsControlChangeItem;->mInsetsState:Landroid/view/InsetsState;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    iget-object p0, p0, Landroid/app/servertransaction/WindowStateInsetsControlChangeItem;->mActiveControls:Landroid/view/InsetsSourceControl$Array;

    invoke-virtual {p1, p0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    return-void
.end method
