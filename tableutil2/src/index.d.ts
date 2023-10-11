export declare namespace tableutil2 {
	export function GenerateString(length: string | undefined): string;
	export function DeepCopy<T extends object>(tbl: T): T;
	export function ShallowCopy<T extends object>(tbl: T): T;
	export function Reconcile<T extends object>(tbl: T): T;
}
