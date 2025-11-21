.class public Lcom/android/internal/net/NetworkUtilsInternal;
.super Ljava/lang/Object;
.source "NetworkUtilsInternal.java"


# static fields
.field private static final blacklist ADDRESS_FAMILIES:[I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 2

    sget v0, Landroid/system/OsConstants;->AF_INET:I

    sget v1, Landroid/system/OsConstants;->AF_INET6:I

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/android/internal/net/NetworkUtilsInternal;->ADDRESS_FAMILIES:[I

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist isWeaklyValidatedHostname(Ljava/lang/String;)Z
    .locals 5

    const-string v0, "^[a-zA-Z0-9_.-]+$"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    sget-object v0, Lcom/android/internal/net/NetworkUtilsInternal;->ADDRESS_FAMILIES:[I

    array-length v2, v0

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_2

    aget v4, v0, v3

    invoke-static {v4, p0}, Landroid/system/Os;->inet_pton(ILjava/lang/String;)Ljava/net/InetAddress;

    move-result-object v4

    if-eqz v4, :cond_1

    return v1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method public static native blacklist protectFromVpn(I)Z
.end method

.method public static native blacklist protectFromVpn(Ljava/io/FileDescriptor;)Z
.end method

.method public static native blacklist setAllowNetworkingForProcess(Z)V
.end method
