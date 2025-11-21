.class public Landroid/app/servertransaction/WindowContextInfoChangeItem;
.super Landroid/app/servertransaction/ClientTransactionItem;
.source "WindowContextInfoChangeItem.java"


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/servertransaction/WindowContextInfoChangeItem;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mClientToken:Landroid/os/IBinder;

.field private final blacklist mInfo:Landroid/window/WindowContextInfo;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/app/servertransaction/WindowContextInfoChangeItem$1;

    invoke-direct {v0}, Landroid/app/servertransaction/WindowContextInfoChangeItem$1;-><init>()V

    sput-object v0, Landroid/app/servertransaction/WindowContextInfoChangeItem;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/IBinder;Landroid/content/res/Configuration;I)V
    .locals 1

    invoke-direct {p0}, Landroid/app/servertransaction/ClientTransactionItem;-><init>()V

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/IBinder;

    iput-object p1, p0, Landroid/app/servertransaction/WindowContextInfoChangeItem;->mClientToken:Landroid/os/IBinder;

    new-instance p1, Landroid/window/WindowContextInfo;

    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0, p2}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    invoke-direct {p1, v0, p3}, Landroid/window/WindowContextInfo;-><init>(Landroid/content/res/Configuration;I)V

    iput-object p1, p0, Landroid/app/servertransaction/WindowContextInfoChangeItem;->mInfo:Landroid/window/WindowContextInfo;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Landroid/app/servertransaction/ClientTransactionItem;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Landroid/app/servertransaction/WindowContextInfoChangeItem;->mClientToken:Landroid/os/IBinder;

    sget-object v0, Landroid/window/WindowContextInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/window/WindowContextInfo;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/window/WindowContextInfo;

    iput-object p1, p0, Landroid/app/servertransaction/WindowContextInfoChangeItem;->mInfo:Landroid/window/WindowContextInfo;

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/app/servertransaction/WindowContextInfoChangeItem-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/app/servertransaction/WindowContextInfoChangeItem;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
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
    check-cast p1, Landroid/app/servertransaction/WindowContextInfoChangeItem;

    iget-object v2, p0, Landroid/app/servertransaction/WindowContextInfoChangeItem;->mClientToken:Landroid/os/IBinder;

    iget-object v3, p1, Landroid/app/servertransaction/WindowContextInfoChangeItem;->mClientToken:Landroid/os/IBinder;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object p0, p0, Landroid/app/servertransaction/WindowContextInfoChangeItem;->mInfo:Landroid/window/WindowContextInfo;

    iget-object p1, p1, Landroid/app/servertransaction/WindowContextInfoChangeItem;->mInfo:Landroid/window/WindowContextInfo;

    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public blacklist execute(Landroid/app/ClientTransactionHandler;Landroid/app/servertransaction/PendingTransactionActions;)V
    .locals 0

    iget-object p2, p0, Landroid/app/servertransaction/WindowContextInfoChangeItem;->mClientToken:Landroid/os/IBinder;

    iget-object p0, p0, Landroid/app/servertransaction/WindowContextInfoChangeItem;->mInfo:Landroid/window/WindowContextInfo;

    invoke-virtual {p1, p2, p0}, Landroid/app/ClientTransactionHandler;->handleWindowContextInfoChanged(Landroid/os/IBinder;Landroid/window/WindowContextInfo;)V

    return-void
.end method

.method public whitelist test-api hashCode()I
    .locals 2

    iget-object v0, p0, Landroid/app/servertransaction/WindowContextInfoChangeItem;->mClientToken:Landroid/os/IBinder;

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    const/16 v1, 0x20f

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object p0, p0, Landroid/app/servertransaction/WindowContextInfoChangeItem;->mInfo:Landroid/window/WindowContextInfo;

    invoke-static {p0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result p0

    add-int/2addr v1, p0

    return v1
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "WindowContextInfoChangeItem{clientToken="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/app/servertransaction/WindowContextInfoChangeItem;->mClientToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", info="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroid/app/servertransaction/WindowContextInfoChangeItem;->mInfo:Landroid/window/WindowContextInfo;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Landroid/app/servertransaction/WindowContextInfoChangeItem;->mClientToken:Landroid/os/IBinder;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    iget-object p0, p0, Landroid/app/servertransaction/WindowContextInfoChangeItem;->mInfo:Landroid/window/WindowContextInfo;

    invoke-virtual {p1, p0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    return-void
.end method
