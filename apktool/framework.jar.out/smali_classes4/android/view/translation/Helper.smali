.class public Landroid/view/translation/Helper;
.super Ljava/lang/Object;
.source "Helper.java"


# static fields
.field public static final blacklist ANIMATION_DURATION_MILLIS:I = 0xfa

.field public static blacklist sDebug:Z = false

.field public static blacklist sVerbose:Z = false


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor blacklist <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "contains static members only"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
