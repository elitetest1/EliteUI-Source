.class final Lcom/samsung/android/authenticator/AuthenticatorStatusCode;
.super Ljava/lang/Object;
.source "AuthenticatorStatusCode.java"


# static fields
.field static final blacklist ERROR_UNKNOWN:I = -0x1

.field static final blacklist SUCCESS:I


# direct methods
.method private constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0
.end method
